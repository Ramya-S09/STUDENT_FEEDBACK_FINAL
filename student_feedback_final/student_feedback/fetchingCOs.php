<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "student_feedback";

// Connect
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset("utf8");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$conn->autocommit(false); // manual commit

$sql = "SELECT DISTINCT subject_value FROM main_table";
$result = $conn->query($sql);

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $subject_value = trim($row['subject_value']);

        if (empty($subject_value)) {
            echo "<span style='color:red;'>⚠ Skipping empty subject_value</span><br>";
            continue;
        }

        echo "<strong>🔍 Checking table:</strong> <span style='color:blue;'>$subject_value</span><br>";

        // Check if table exists
        $check = $conn->query("SHOW TABLES LIKE '$subject_value'");
        if ($check->num_rows == 0) {
            echo "❌ Table [$subject_value] does not exist<br>";
            continue;
        }

        $co_sql = "SELECT co_id, co FROM $subject_value";
        $co_result = $conn->query($co_sql);

        if ($co_result === false) {
            echo "❌ Error reading table [$subject_value]: " . $conn->error . "<br>";
            continue;
        }

        while ($co_row = $co_result->fetch_assoc()) {
            $co_id = (int)$co_row['co_id'];
            $co = trim($co_row['co']);

            if (empty($co)) {
                echo "⚠ Empty CO statement for CO$co_id in $subject_value<br>";
                continue;
            }

            echo "➕ Adding: <b>$subject_value</b> | <b>CO$co_id</b> | $co<br>";

            $stmt = $conn->prepare("INSERT INTO co_table_analysis (sub_code, COs, CO_statements)
                                    VALUES (?, ?, ?)
                                    ON DUPLICATE KEY UPDATE
                                    CO_statements = VALUES(CO_statements)");

            if (!$stmt) {
                echo "❌ Statement error: " . $conn->error . "<br>";
                continue;
            }

            $stmt->bind_param("sis", $subject_value, $co_id, $co);

            if (!$stmt->execute()) {
                echo "❌ Insert error: " . $stmt->error . "<br>";
            } else {
                echo "✅ CO inserted/updated<br>";
            }

            $stmt->close();
        }
    }

    if ($conn->commit()) {
        echo "<br>✅ All changes committed<br>";
    } else {
        echo "❌ Commit failed<br>";
    }
} else {
    echo "⚠ No subjects found in main_table<br>";
}

$conn->close();
?>
