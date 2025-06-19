<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "student_feedback";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$excluded_tables = ['co_table_analysis', 'signup', 'main_table', 'student_details'];

// Add CSS styles
// Add CSS styles
echo "<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: white; /* Background color */
    }
    h2 {
        color: #333;
    }
    form {
        margin-bottom: 20px;
    }
    label {
        font-weight: bold;
    }
    select {
        padding: 5px;
        margin-left: 10px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 2px solid rgb(30, 70, 120); /* Darker border color */
        padding: 10px;
        text-align: center;
    }
    th {
        background-color: rgb(46, 117, 182); /* Table header color */
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2; /* Light gray for even rows */
    }
    tr:hover {
        background-color: #ddd; /* Light gray on hover */
    }
    input[type='submit'] {
        background-color: rgb(46, 117, 182); /* Submit button color */
        color: white;
        padding: 10px 15px;
        border: none;
        cursor: pointer;
        font-size: 16px;
        margin-top: 20px;
        transition: background-color 0.3s; /* Smooth transition for hover effect */
    }
    input[type='submit']:hover {
        background-color: rgb(30, 70, 120); /* Darker shade on hover */
    }
</style>";

echo "<h2>Part B: Course Outcome Feedback</h2>";

// Fetch available subjects
// echo "<form method='post'>";
// echo "<label for='subject'>Select Subject:</label>";
// echo "<select name='subject' id='subject' onchange='this.form.submit()'>";
// echo "<option value=''>--Choose--</option>";
// $result = $conn->query("SHOW TABLES");
// while ($row = $result->fetch_array()) {
//     $table = $row[0];
//     if (!in_array($table, $excluded_tables)) {
//         echo "<option value='$table' " . (isset($_POST['subject']) && $_POST['subject'] == $table ? "selected" : "") . ">$table</option>";
//     }
// }
// echo "</select></form>";

// Display COs if subject is selected
if (isset($_POST['subject']) && !empty($_POST['subject'])) {
    $subject = $_POST['subject'];
    $query = "SELECT CO FROM $subject WHERE CO IS NOT NULL AND CO <> ''";
    $coResult = $conn->query($query);
    //echo "<p style='font-weight:bold; font-size:16px; margin-top:10px;'>Selected Subject Code: <span style='color:#2e75b6;'>$subject</span></p>";

    if ($coResult && $coResult->num_rows > 0) {
       // echo "<form method='post' onsubmit='return confirm(\"Are you sure you want to submit your feedback?\")'>";
        echo "<input type='hidden' name='subject' value='$subject'>";
        echo "<table><tr><th>Course Outcome</th><th>Strongly Agree</th><th>Agree </th><th>Neutral </th><th>Disagree </th><th>Strongly Disagree </th></tr>";
       $index=0; 
        // Fetch and display each Course Outcome
        while ($coRow = $coResult->fetch_assoc()) {
            if (!empty($coRow['CO'])) {
                $index++;
                $co = htmlspecialchars($coRow['CO']);
                echo "<tr><td>$co</td>";
                for ($i = 5; $i >= 1; $i--) {
                    echo "<td><input type='radio' name='co$index' value='$i' required></td>";
                }
                echo "</tr>";
               //$index++;
            }
        }
        //echo "</table><input type='submit' name='submit_feedback' value='Submit'>";
        echo "</form>";
    } else {
        echo "No Course Outcomes found for this subject.";
    }
}
// if (isset($_POST['submit_feedback'])) { DONE FOR fetchingCOs2_NoNeed.php
//     $subject = $_POST['subject'];
//     $feedback = [];

//     // Collect feedback for each Course Outcome
//     for ($i = 1; $i <= $index; $i++) {
//         if (isset($_POST["co$i"])) {
//             $feedback["CO$i"] = (int)$_POST["co$i"]; // Store feedback value (1-5)
//         }
//     }

//     // Process the feedback (e.g., save to the database)
//     // Here you can add your logic to save the feedback to the database
//     // For example:
//     foreach ($feedback as $co_key => $value) {
//         // You can use $co_key (like CO1, CO2, etc.) and $value (1-5) to save to your database
//         echo "Feedback for $co_key: $value<br>"; // For demonstration, just echoing the feedback
//     }

//     // Optionally, you can redirect or show a success message
//     echo "<p>Thank you for your feedback!</p>";
// }


$conn->close();
?>