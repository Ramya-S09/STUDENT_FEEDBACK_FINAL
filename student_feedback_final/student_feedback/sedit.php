<?php
include('config.php'); // Include database connection

// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Debugging: Check if POST data is received
    echo "<pre>";
    print_r($_POST); 
    echo "</pre>";

    // Retrieve and sanitize form data
    $name = isset($_POST['name']) ? trim($_POST['name']) : '';
    $email = isset($_POST['email']) ? trim($_POST['email']) : '';
    $phone = isset($_POST['phone']) ? trim($_POST['phone']) : '';
    $regno = isset($_POST['regno']) ? trim($_POST['regno']) : '';

    // Debugging check for empty fields
    if (empty($name) || empty($email) || empty($phone) || empty($regno)) {
        die("Error: Some fields are empty. Please check your form submission.");
    }

    // Check if registration number exists
    $stmt = $conn->prepare("SELECT regno FROM signup WHERE regno = ?");
    if (!$stmt) {
        die("Database Error: " . $conn->error);
    }
    $stmt->bind_param("s", $regno);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows == 0) {
        echo "<script>alert('Your ID Number is not registered. Please contact the admin.'); window.history.back();</script>";
    } else {
        $stmt->close();

        // Update user data in the database
        $stmt = $conn->prepare("UPDATE signup SET name = ?, email = ?, phone = ? WHERE regno = ?");
        if (!$stmt) {
            die("Database Error: " . $conn->error);
        }
        $stmt->bind_param("ssss", $name, $email, $phone, $regno);

        if ($stmt->execute()) {
            echo "<script>alert('Profile updated successfully!'); window.location.href='new1.html';</script>";
        } else {
            echo "<script>alert('Error updating profile: " . $stmt->error . "'); window.history.back();</script>";
        }
    }

    // Close database connections
    $stmt->close();
    $conn->close();
} else {
    echo "Error: Form not submitted correctly.";
}
?>
