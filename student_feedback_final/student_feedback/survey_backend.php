
<?php
session_start();
ob_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

include('config.php');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Insert into main_table
$k = "regno,sname,section,address,mobile,email,dob,fname,subject_value,QA,QB,QC,QD,QE,QF,QG,QH,QI,QJ,QK,QL,QZ,co1,co2,co3,co4,co5,co6";
$placeholders = rtrim(str_repeat('?,', 28), ',');

$stmt = $conn->prepare("INSERT INTO main_table ($k) VALUES ($placeholders)");

if (!$stmt) {
    echo "Prepare failed: " . $conn->error;
    exit;
}

$values = [
    $_POST['regno'] ?? '', $_POST['sname'] ?? '', $_POST['section'] ?? '', $_POST['address'] ?? '', $_POST['mobile'] ?? '',
    $_POST['email'] ?? '', $_POST['dob'] ?? '', $_POST['fname'] ?? '', $_POST['subject_value'] ?? '',
    $_POST['QA'] ?? '', $_POST['QB'] ?? '', $_POST['QC'] ?? '', $_POST['QD'] ?? '', $_POST['QE'] ?? '',
    $_POST['QF'] ?? '', $_POST['QG'] ?? '', $_POST['QH'] ?? '', $_POST['QI'] ?? '', $_POST['QJ'] ?? '',
    $_POST['QK'] ?? '', $_POST['QL'] ?? '', $_POST['QZ'] ?? '', $_POST['co1'] ?? 0, $_POST['co2'] ?? 0,
    $_POST['co3'] ?? 0, $_POST['co4'] ?? 0, $_POST['co5'] ?? 0, $_POST['co6'] ?? 0
];

$stmt->bind_param(str_repeat('s', count($values)), ...$values);

$subjectCode = $_POST['subject_value'] ?? '';

// Define the mapping between values and column names
$columnMap = [
    1 => "strongly_disagree",
    2 => "disagree",
    3 => "neutral",
    4 => "agree",
    5 => "strongly_agree"
];

// Begin transaction
$conn->autocommit(false);

if ($stmt->execute()) {
    // Process each CO value
    for ($i = 1; $i <= 6; $i++) {
        $coValue = (int)($_POST['co'.$i] ?? 0);
        
        // Skip if no value provided
        if ($coValue == 0) {
            continue;
        }
        
        // Get the column name to update based on the value
        $columnToUpdate = $columnMap[$coValue] ?? null;
        if (!$columnToUpdate) {
            echo "Invalid value ($coValue) for co$i";
            continue;
        }
        
        // Check if the entry exists in co_table_analysis
        $checkStmt = $conn->prepare("SELECT * FROM co_table_analysis WHERE sub_code = ? AND COs = ?");
        $checkStmt->bind_param("si", $subjectCode, $i);
        $checkStmt->execute();
        $result = $checkStmt->get_result();
        
        if ($result->num_rows == 0) {
            // Entry doesn't exist, need to create it with CO statement from the subject table
            $coStmt = $conn->prepare("SELECT co FROM $subjectCode WHERE co_id = ?");
            if (!$coStmt) {
                echo "Could not prepare statement for $subjectCode: " . $conn->error;
                continue;
            }
            
            $coStmt->bind_param("i", $i);
            $coStmt->execute();
            $coResult = $coStmt->get_result();
            
            if ($coResult->num_rows > 0) {
                $coRow = $coResult->fetch_assoc();
                $coStatement = $coRow['co'];
                
                // Create the insert SQL dynamically to include only the specific column
                $insertSql = "INSERT INTO co_table_analysis (sub_code, COs, CO_statements, $columnToUpdate) 
                             VALUES (?, ?, ?, 1)";
                
                $insertStmt = $conn->prepare($insertSql);
                $insertStmt->bind_param("sis", $subjectCode, $i, $coStatement);
                
                if (!$insertStmt->execute()) {
                    echo "Insert failed for co$i: " . $insertStmt->error;
                }
                $insertStmt->close();
            }
            $coStmt->close();
        } else {
            // Entry exists, update the corresponding column
            $updateSql = "UPDATE co_table_analysis 
                         SET $columnToUpdate = $columnToUpdate + 1 
                         WHERE sub_code = ? AND COs = ?";
            
            $updateStmt = $conn->prepare($updateSql);
            $updateStmt->bind_param("si", $subjectCode, $i);
            
            if (!$updateStmt->execute()) {
                echo "Update failed for co$i: " . $updateStmt->error;
            }
            $updateStmt->close();
        }
        
        $checkStmt->close();
    }
    
    // Commit all changes
    if ($conn->commit()) {
        $_SESSION['success_message'] = "Submission submitted successfully";
        header("Location: new1.html");
        exit;
    } else {
        echo "Failed to commit changes: " . $conn->error;
    }
} else {
    echo "Error inserting into main_table: " . $stmt->error;
    $conn->rollback();
}

$stmt->close();
$conn->close();
?>


