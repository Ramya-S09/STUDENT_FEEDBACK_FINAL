<?php
// Include database connection
include("config.php");
session_start();
$error = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['email']) && isset($_POST['password'])) {
        $myusername = mysqli_real_escape_string($conn, $_POST['email']);
        $mypassword = $_POST['password']; // Do not escape passwords before hashing

        // Prepare SQL statement
        $sql = "SELECT password FROM signup WHERE email = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $myusername);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows == 1) {
            $stmt->bind_result($db_password);
            $stmt->fetch();

            // Secure password verification
            if(strcmp($mypassword, $db_password) === 0) {
                $_SESSION['login_user'] = $myusername;
                header("location: new1.html"); // ✅ Redirect to new1.html
                exit();
            } else {
                echo "<script>alert('Invalid email or password');</script>";
            }
        } else {
            echo "<script>alert('Invalid email or password');</script>";
        }

        $stmt->close();
    } else {
        echo "<script>alert('Email or password is missing');</script>";
    }
}

$conn->close();
?>
