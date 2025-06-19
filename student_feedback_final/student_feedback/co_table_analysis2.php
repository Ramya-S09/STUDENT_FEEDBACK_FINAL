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

// Fetch all CO statements from `co_table_analysis`
$co_data = [];
$sql = "SELECT sub_code, COs, CO_statements FROM co_table_analysis";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $co_data[$row['sub_code']][] = $row['CO_statements'];
    }
}

$conn->close();
?>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Outcomes Feedback</title>
    <script>
        // Store COs in JavaScript
        var coData = <?php echo json_encode($co_data); ?>;

        function updateTable() {
            var subjectCode = document.getElementById("subject_value").value;
            var tableBody = document.getElementById("co_table_body");
            tableBody.innerHTML = ""; // Clear existing rows

            if (coData[subjectCode]) {
                coData[subjectCode].forEach(function(co_statement, index) {
                    var row = `<tr>
                        <td>${co_statement}</td>
                        <td><input type="radio" name="co_${index}" value="Strongly Agree"></td>
                        <td><input type="radio" name="co_${index}" value="Agree"></td>
                        <td><input type="radio" name="co_${index}" value="Neutral"></td>
                        <td><input type="radio" name="co_${index}" value="Disagree"></td>
                        <td><input type="radio" name="co_${index}" value="Strongly Disagree"></td>
                    </tr>`;
                    tableBody.innerHTML += row;
                });
            } else {
                tableBody.innerHTML = "<tr><td colspan='6'>No Course Outcomes found</td></tr>";
            }
        }
    </script>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>

    <h2>Course Outcomes Feedback</h2>
    <label for="subject_value">Enter Subject Code:</label>
    <input type="text" id="subject_value" name="subject_value" onkeyup="updateTable()" required>

    <table>
        <thead>
            <tr>
                <th>Course Outcome</th>
                <th>Strongly Agree</th>
                <th>Agree</th>
                <th>Neutral</th>
                <th>Disagree</th>
                <th>Strongly Disagree</th>
            </tr>
        </thead>
        <tbody id="co_table_body">
            <tr>
                <td colspan="6">Enter a subject code to see Course Outcomes.</td>
            </tr>
        </tbody>
    </table>

    <button type="submit">Submit</button>

</body>
</html>
