<?php
include('config.php'); // Include your database connection file

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone=$_POST['phone'];
    $password = $_POST['password'];
    $regno = $_POST['regno'];
    $cpassword=$_POST['cpassword'];

    // Check if passwords match
    if ($password !== $_POST['cpassword']) {
        echo "<script>alert('Passwords do not match!');</script>";
    } else {
        // Hash the password
        //$hashed_password = password_hash($password, PASSWORD_DEFAULT);

        // Prepare SQL statement to insert user data
        $stmt = $conn->prepare("INSERT INTO signup (name,email,phone,password,regno) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("sssss", $name, $email,$phone ,$password,$regno);
       // echo "<script>alert("Signup Successful!...")</script>;";
        // Execute the statement
        if ($stmt->execute()) {
            echo "<script>alert('Signup successful!'); window.location.href='signinpage.html';</script>";
        } else {
            echo "<script>alert('Error: " . $stmt->error . "');</script>";
        }

        // Close the statement
        $stmt->close();
    }
}

// Close the database connection
$conn->close();
?>