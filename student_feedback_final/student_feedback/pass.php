<?php
include('config.php'); // Include database connection

// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve and sanitize form data
    $uname = isset($_POST['uname']) ? trim($_POST['uname']) : '';
    $npwd = isset($_POST['npwd']) ? trim($_POST['npwd']) : '';
    $cpwd = isset($_POST['cpwd']) ? trim($_POST['cpwd']) : '';

    // Check if all fields are filled
    if (empty($uname) || empty($npwd) || empty($cpwd)) {
        echo json_encode(["status" => "error", "message" => "All fields are required."]);
        exit;
    }

    // Check if passwords match
    if ($npwd !== $cpwd) {
        echo json_encode(["status" => "error", "message" => "Passwords do not match."]);
        exit;
    }

    // Check if username/email exists
    $stmt = $conn->prepare("SELECT regno FROM signup WHERE email = ? OR name = ?");
    if (!$stmt) {
        echo json_encode(["status" => "error", "message" => "Database Error: " . $conn->error]);
        exit;
    }
    $stmt->bind_param("ss", $uname, $uname);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows == 0) {
        echo json_encode(["status" => "error", "message" => "Username/Email not found."]);
        exit;
    } else {
        $stmt->close();

        // Update password in the database without hashing
        $stmt = $conn->prepare("UPDATE signup SET password = ? WHERE email = ? OR name = ?");
        if (!$stmt) {
            echo json_encode(["status" => "error", "message" => "Database Error: " . $conn->error]);
            exit;
        }
        $stmt->bind_param("sss", $npwd, $uname, $uname); // Use plain password

        if ($stmt->execute()) {
            echo json_encode(["status" => "success", "message" => "Password updated successfully!"]);
        } else {
            echo json_encode(["status" => "error", "message" => "Error updating password: " . $stmt->error]);
        }
    }

    // Close database connections
    $stmt->close();
    $conn->close();
} else {
    echo json_encode(["status" => "error", "message" => "Invalid request method."]);
}
?>