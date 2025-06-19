<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "student_feedback";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch subject_value from main_table
$sql = "SELECT subject_name FROM main_table";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $subject_value = $row['subject_name'];

        echo "Checking table: $subject_value<br>";

        // Fetch co_id and co from the subject table
        $co_sql = "SELECT co_id, co FROM `$subject_value`";
        $co_result = $conn->query($co_sql);

        if ($co_result === FALSE) {
            echo "Error accessing table $subject_value: " . $conn->error . "<br>";
            continue;
        }

        if ($co_result->num_rows > 0) {
            while ($co_row = $co_result->fetch_assoc()) {
                $co_id = $co_row['co_id'];
                $co = $co_row['co'];

                // Insert into co_table_analysis
                $stmt = $conn->prepare("INSERT INTO co_table_analysis (sub_code, COs, CO_statements)
                    VALUES (?, ?, ?)
                    ON DUPLICATE KEY UPDATE
                    COs = VALUES(COs), CO_statements = VALUES(CO_statements)");

                if ($stmt === FALSE) {
                    echo "Error preparing statement: " . $conn->error . "<br>";
                    continue;
                }

                $stmt->bind_param("sss", $subject_value, $co_id, $co);
                if (!$stmt->execute()) {
                    echo "Error executing statement: " . $stmt->error . "<br>";
                }
            }
        } else {
            echo "No data found in table $subject_value<br>";
        }
    }
} else {
    echo "No rows found in main_table";
}

// Display the contents of co_table_analysis
$display_sql = "SELECT * FROM co_table_analysis";
$display_result = $conn->query($display_sql);

if ($display_result->num_rows > 0) {
    echo "<table border='1'>";
    echo "<tr><th>sub_code</th><th>COs</th><th>CO_statements</th></tr>";
    while ($display_row = $display_result->fetch_assoc()) {
        echo "<tr><td>" . $display_row['sub_code'] . "</td><td>" . $display_row['COs'] . "</td><td>" . $display_row['CO_statements'] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "No data found in co_table_analysis";
}

$conn->close();
?>
