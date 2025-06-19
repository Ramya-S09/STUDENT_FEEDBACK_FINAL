<?php
include('config.php'); // Include database connection

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $uname = $_POST['uname'];
    $ino = $_POST['ino'];
    $npwd = $_POST['npwd'];
    $cpwd = $_POST['cpwd'];

    // Check if the ID number (ino) exists in the database
    $stmt = $conn->prepare("SELECT ino FROM fsignup WHERE ino = ?");
    $stmt->bind_param("s", $ino);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows == 0) {
        echo "<script>alert('Your ID Number is not registered. Please contact the admin.');</script>";
    } elseif ($npwd !== $cpwd) {
        echo "<script>alert('Passwords do not match');</script>";
    } else {
        // Close previous statement
        $stmt->close();

        // Update new user data (faculty signup)
        $stmt = $conn->prepare("UPDATE fsignup SET uname = ?, npwd = ? WHERE ino = ?");
        $stmt->bind_param("sss", $uname, $npwd, $ino);

        if ($stmt->execute()) {
            echo "<script>alert('Signup successful!'); window.location.href='facultysignin.html';</script>";
        } else {
            echo "<script>alert('Error: " . $stmt->error . "');</script>";
        }
    }

    // Close the statement and database connection
    $stmt->close();
    $conn->close();
}
?>
