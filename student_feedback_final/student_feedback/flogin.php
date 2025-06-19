<?php
// Include database connection
include("config.php");
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['uname']) && isset($_POST['npwd'])) {
        $myusername = trim($_POST['uname']);
        $mypassword = trim($_POST['npwd']);

        // Prepare SQL statement
        $stmt = $conn->prepare("SELECT npwd FROM fsignup WHERE uname = ?");
        $stmt->bind_param("s", $myusername);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows == 1) {
            $stmt->bind_result($db_password);
            $stmt->fetch();

            // Check if passwords match
            if ($mypassword === $db_password) {
                $_SESSION['login_user'] = $myusername;

                // Redirect to faculty dashboard
                echo "<script>window.location.href = 'faculty_dashboard.html';</script>";
                exit();
            } else {
                echo "<script>alert('Invalid username or password'); window.location.href = 'facultysignin.html';</script>";
            }
        } else {
            echo "<script>alert('Invalid username or password'); window.location.href = 'facultysignin.html';</script>";
        }

        $stmt->close();
    } else {
        echo "<script>alert('Please enter both username and password!'); window.location.href = 'facultysignin.html';</script>";
    }
}

$conn->close();
?>
