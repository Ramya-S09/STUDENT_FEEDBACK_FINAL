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
            echo " Table [$subject_value] does not exist<br>";
            continue;
        }

        $co_sql = "SELECT co_id, co FROM $subject_value";
        $co_result = $conn->query($co_sql);

        if ($co_result === false) {
            echo " Error reading table [$subject_value]: " . $conn->error . "<br>";
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

            // Initialize all feedback fields to 0
            $strongly_agree = 0;
            $agree = 0;
            $neutral = 0;
            $disagree = 0;
            $strongly_disagree = 0;

            // Check if feedback is submitted for this CO
            if (isset($_POST['feedback']['CO' . $co_id])) {
                $selected_feedback = $_POST['feedback']['CO' . $co_id];

                // Set the corresponding field to 1 based on user selection
                switch ($selected_feedback) {
                    case 'strongly_agree':
                        $strongly_agree = 1;
                        break;
                    case 'agree':
                        $agree = 1;
                        break;
                    case 'neutral':
                        $neutral = 1;
                        break;
                        case 'disagree':
                            $disagree = 1;
                            break;
                        case 'strongly_disagree':
                            $strongly_disagree = 1;
                            break;
                    }
                }
    
                // Check if the record already exists in co_table_analysis
                $check_existing = $conn->prepare("SELECT COUNT(*) FROM co_table_analysis WHERE sub_code = ? AND COs = ?");
                $check_existing->bind_param("si", $subject_value, $co_id);
                $check_existing->execute();
                $check_existing->bind_result($count);
                $check_existing->fetch();
                $check_existing->close();
    
                // Prepare the insert statement
                $stmt = $conn->prepare("INSERT INTO co_table_analysis (sub_code, COs, CO_statements, strongly_agree, agree, neutral, disagree, strongly_disagree)
                                        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
                                        ON DUPLICATE KEY UPDATE
                                        CO_statements = VALUES(CO_statements),
                                        strongly_agree = VALUES(strongly_agree),
                                        agree = VALUES(agree),
                                        neutral = VALUES(neutral),
                                        disagree = VALUES(disagree),
                                        strongly_disagree = VALUES(strongly_disagree)");
    
                if (!$stmt) {
                    echo " Statement error: " . $conn->error . "<br>";
                    continue;
                }
    
                $stmt->bind_param("sisiiiii", $subject_value, $co_id, $co, $strongly_agree, $agree, $neutral, $disagree, $strongly_disagree);
    
                if (!$stmt->execute()) {
                    echo " Insert error: " . $stmt->error . "<br>";
                } else {
                    echo " CO inserted/updated<br>";
                }
    
                $stmt->close();
            }
        }
    
        if ($conn->commit()) {
            echo "<br> All changes committed<br>";
        } else {
            echo "Commit failed<br>";
        }
    } else {
        echo "⚠ No subjects found in main_table<br>";
    }
    
    $conn->close();
    ?>