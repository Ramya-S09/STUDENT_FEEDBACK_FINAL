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

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Feedback</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <script>
        const facultyList = [
            { id: 1, value: "Dr. M.S. Thanabal" }, { id: 2, value: "Dr. S. Pushpalatha" },
            { id: 3, value: "Dr. A. Thomas Paul Roy" }, { id: 4, value: "Dr. D. Suresh" },
            { id: 5, value: "Dr. N. Dhanalakshmi" }, { id: 6, value: "Dr. S. Satheeshbabu" },
            { id: 7, value: "Dr. M. Buvana" }, { id: 8, value: "Dr. A. Sathya Sofia" },
            { id: 9, value: "Dr. D. M. D. Preethi" }, { id: 10, value: "Mr. K. Suresh" },
            { id: 11, value: "Mrs. J. Punitha Nicholine" }, { id: 12, value: "Dr. Y. Arockia Raj" },
            { id: 13, value: "Mrs. S. Naganandhini" }, { id: 14, value: "Mrs. C. Sathya" },
            { id: 15, value: "Mr. V. Nanda Kumar" }, { id: 16, value: "Mrs. S. Santhana Prabha" },
            { id: 17, value: "Ms. S. T. Shenbagavalli" }, { id: 18, value: "Mrs. G. Mariammal" },
            { id: 19, value: "Mrs. V. Priya" }, { id: 20, value: "Mrs. M. Jayanthi" },
            { id: 21, value: "Mrs. A. Joyce" }, { id: 22, value: "Mrs. K. Gayathri" },
            { id: 23, value: "Mrs. R. Gayathri" }, { id: 24, value: "Ms. L. Dharshana Deepthi" },
            { id: 25, value: "Dr. S. SheikFaritha Begum" }, { id: 26, value: "Mrs. P. Anitha Christy Angelin" },
            { id: 27, value: "Ms. N. Indumathi" }, { id: 28, value: "Mrs. M. Rabiyathul Bachiriya" },
            { id: 29, value: "Dr. N. Kalpana" }, { id: 30, value: "Mrs. R. Sujitha" },
            { id: 31, value: "Mrs. T. Deepa" }, { id: 32, value: "Mrs. P. Joy Kiruba" },
            { id: 33, value: "Mrs. L. Hemalatha" }, { id: 34, value: "Mr. M. Kamarajan" },
            { id: 35, value: "Ms. S. Aadhitya" }, { id: 36, value: "Ms. N. Padmapriya" },
            { id: 37, value: "Mrs. S. Aurthy Felicita" }, { id: 38, value: "Mr. V. Karuppuchamy" },
            { id: 39, value: "Dr. D. Shanthi" }, { id: 40, value: "Dr. N. Uma Maheshwari" },
            { id: 41, value: "Dr. N. Dhanalakshmi" }, { id: 42, value: "Dr. N. Kalpana" }
        ];

        function filterFaculty() {
            const input = document.getElementById("facultyInput");
            const filter = input.value.toLowerCase().trim();
            const dropdown = document.getElementById("facultyDropdown");
            
            dropdown.innerHTML = ""; // Clear previous results

            if (filter) {
                let matchCount = 0;

                facultyList.forEach(faculty => {
                    if (faculty.value.toLowerCase().includes(filter)) {
                        const div = document.createElement("div");
                        div.textContent = faculty.value;
                        div.classList.add("dropdown-item");
                        div.onclick = () => selectFaculty(faculty.id, faculty.value);
                        dropdown.appendChild(div);
                        matchCount++;
                    }
                });

                // Show the dropdown only if there are matches
                dropdown.style.display = matchCount > 0 ? "block" : "none";
            } else {
                dropdown.style.display = "none";
            }
        }

        function selectFaculty(id, value) {
            document.getElementById("facultyInput").value = value;
            
            // Hide and clear the dropdown
            const dropdown = document.getElementById("facultyDropdown");
            dropdown.innerHTML = "";
            dropdown.style.display = "none";
        }

        // Close dropdown when clicking outside
        document.addEventListener("click", function(event) {
            const dropdown = document.getElementById("facultyDropdown");
            const input = document.getElementById("facultyInput");

            if (!dropdown.contains(event.target) && event.target !== input) {
                dropdown.style.display = "none";
            }
        });

        // Initialize event listener for input
        document.addEventListener("DOMContentLoaded", () => {
            document.getElementById("facultyInput").addEventListener("input", filterFaculty);
        });

        const subjects = [
            { id: "hs3152", value: "hs3152" },
            { id: "ma3151", value: "ma3151" },
            { id: "ph3151", value: "ph3151" },
            { id: "cy3151", value: "cy3151" },
            { id: "ge3151", value: "ge3151" },
            { id: "ge3171", value: "ge3171" },
            { id: "bs3171", value: "bs3171" },
            { id: "ge3172", value: "ge3172" },
            { id: "hs3252", value: "hs3252" },
            { id: "ma3251", value: "ma3251" },
            { id: "ph3256", value: "ph3256" },
            { id: "be3251", value: "be3251" },
            { id: "ge3251", value: "ge3251" },
            { id: "cs3251", value: "cs3251" },
            { id: "ge3271", value: "ge3271" },
            { id: "cs3271", value: "cs3271" },
            { id: "ge3272", value: "ge3272" },
            { id: "ma3354", value: "ma3354" },
            { id: "cs3351", value: "cs3351" },
            { id: "cs3352", value: "cs3352" },
            { id: "cs3301", value: "cs3301" },
            { id: "cs3391", value: "cs3391" },
            { id: "cs3311", value: "cs3311" },
            { id: "cs3381", value: "cs3381" },
            { id: "cs3361", value: "cs3361" },
            { id: "ge3361", value: "ge3361" },
            { id: "cs3452", value: "cs3452" },
            { id: "cs3491", value: "cs3491" },
            { id: "cs3492", value: "cs3492" },
            { id: "cs3401", value: "cs3401" },
            { id: "cs3451", value: "cs3451" },
            { id: "ge3451", value: "ge3451" },
            { id: "cs3461", value: "cs3461" },
            { id: "cs3481", value: "cs3481" },
            { id: "cs3591", value: "cs3591" },
            { id: "cs3501", value: "cs3501" },
            { id: "cb3491", value: "cb3491" },
            { id: "cs3551", value: "cs3551" },
            { id: "cs3711", value: "cs3711" },
            { id: "omr353", value: "omr353" },
            { id: "og1352", value: "og1352" },
            { id: "mf3003", value: "mf3003" },
            { id: "cbm333", value: "cbm333" },
            { id: "ai3021", value: "ai3021" },
            { id: "ge3751", value: "ge3751" },
            { id: "ge3791", value: "ge3791" },
            { id: "ccs362", value: "ccs362" },
            { id: "ccs342", value: "ccs342" },
            { id: "ccs365", value: "ccs365" },
            { id: "ccs366", value: "ccs366" },
            { id: "cb3591", value: "cb3591" },
            { id: "ccs367", value: "ccs367" },
            { id: "ccs370", value: "ccs370" },
            { id: "ccs363", value: "ccs363" },
            { id: "ccs332", value: "ccs332" },
            { id: "ccs372", value: "ccs372" },
            { id: "oce351", value: "oce351" },
            { id: "cs3691", value: "cs3691" },
            { id: "ccs356", value: "ccs356" },
            { id: "ccs343", value: "ccs343" },
            { id: "ccs335", value: "ccs335" },
            { id: "ccs336", value: "ccs336" },
            { id: "ccs344", value: "ccs344" },
            { id: "ccs375", value: "ccs375" }
        ];

        function filterSubjects() {
            const input = document.getElementById("subjectInput");
            const filter = input.value.toLowerCase().trim();
            const dropdown = document.getElementById("subjectDropdown");
            
            dropdown.innerHTML = ""; // Clear previous results

            if (filter) {
                let matchCount = 0;

                subjects.forEach(subject => {
                    if (subject.value.toLowerCase().includes(filter) || subject.id.includes(filter)) {
                        const div = document.createElement("div");
                        div.textContent = `${subject.value} (${subject.id})`;  
                        div.classList.add("dropdown-item");
                        div.onclick = () => selectSubject(subject.id, subject.value);
                        dropdown.appendChild(div);
                        matchCount++;
                    }
                });

                // Show the dropdown only if there are matches
                dropdown.style.display = matchCount > 0 ? "block" : "none";
            } else {
                dropdown.style.display = "none";
            }
        }

        function selectSubject(id, value) {
            document.getElementById("subjectInput").value = value;
            document.getElementById("subjectId").value = id;

            // Hide and clear the dropdown
            const dropdown = document.getElementById("subjectDropdown");
            dropdown.innerHTML = "";
            dropdown.style.display = "none";
        }

        // Close dropdown when clicking outside
        document.addEventListener("click", function(event) {
            const dropdown = document.getElementById("subjectDropdown");
            const input = document.getElementById("subjectInput");

if (!dropdown.contains(event.target) && event.target !== input) {
    dropdown.style.display = "none";
}
});

// Initialize event listener for input
document.addEventListener("DOMContentLoaded", () => {
document.getElementById("subjectInput").addEventListener("input", filterSubjects);
});
</script>
</head>
<body>
<form action='survey_backend.php' method='POST'>
<div class='container'>
<h1 style="color:rgb(46, 117, 182);text-align: center;">ENIAC STUDENT FEEDBACK</h1><br><hr>
<div class='row'>
<div class='col-md-4'>
<label for="regno">Register Number</label>
<input name='regno' id='regno' class='form-control' required>
</div>
<div class='col-md-4'>
<label for="sname">Student Name</label>
<input name='sname' class='form-control' required>
</div>
<div class='col-md-4'>
<label for="section">Section</label>
<input name='section' class='form-control' required>
</div>
<div class='col-md-4 bg-light'>
<label for="address">Permanent Address</label>
<input name='address' class='form-control' required>
</div>
<div class='col-md-4'>
<label for="mobile">Mobile/Phone Number</label>
<input name='mobile' class='form-control' required>
</div>
<div class='col-md-4'>
<label for="email">E-Mail Address</label>
<input name='email' class='form-control' required>
</div>
<div class='col-md-4'>
<label for="dob">Date of Birth</label>
<input name='dob' class='form-control' required>
</div>
<div class="col-md-4">
<label for="facultyInput">Faculty Name</label>
<input type="text" id="facultyInput" name="fname" class='form-control' required>
<div id="facultyDropdown" class="dropdown-content"></div>
</div>
<div class='col-md-4' style="position: relative;">
<label for="subjectInput">Subject Name</label>
<input type='text' id='subjectInput' name='subject_value' class='form-control' required>
<input type='hidden' id='subjectId' name='subject_id'>
<input type='hidden' id='subjectName' name='subject_name'>
<div id='subjectDropdown' class='dropdown-content'></div>
</div>
</div>

<h3>Part A: General</h3>
<<div class='col-md-12'><span class="font-weight-bold">
   Quality of the course content</span><br>
<input type='radio' name='QA' value='5' required> Excellent<br>
<input type='radio' name='QA' value='4' required> Strongly Agree<br>
<input type='radio' name='QA' value='3' required> Agree<br>
<input type='radio' name='QA' value='2' required> Disagree<br>
<input type='radio' name='QA' value='1' required> Strongly Disagree<br>
<hr> </div>
<div class='col-md-12'><span class="font-weight-bold">
    Relevance of the textbook to this course</span><br>
<input type='radio' name='QB' value='5' required> Excellent<br>
<input type='radio' name='QB' value='4' required> Strongly Agree<br>
<input type='radio' name='QB' value='3' required> Agree<br>
<input type='radio' name='QB' value='2' required> Disagree<br>
<input type='radio' name='QB' value='1' required> Strongly Disagree<br>
<hr> </div>
<div class='col-md-12'><span class="font-weight-bold">
    List the ideas/concepts that you found difficult to gasp</span><br>
<input type='radio' name='QC' value='5' required> Excellent<br>
<input type='radio' name='QC' value='4' required> Strongly Agree<br>
<input type='radio' name='QC' value='3' required> Agree<br>
<input type='radio' name='QC' value='2' required> Disagree<br>
<input type='radio' name='QC' value='1' required>Strongly Disagree<br>
<hr> </div>
<div class='col-md-12'><span class="font-weight-bold">
    List the concepts/topics that should be removed from the syllabus</span><br>
<input type='radio' name='QD' value='5' required> Excellent<br>
<input type='radio' name='QD' value='4' required> Strongly Agree<br>
<input type='radio' name='QD' value='3' required> Agree<br>
<input type='radio' name='QD' value='2' required> Disagree<br>
<input type='radio' name='QD' value='1' required> Strongly Disagree<br>
<hr> </div>
<div class='col-md-12'><span class="font-weight-bold">
    List the new inclusions in the syllabus that are recommended from your view point</span><br>
<input type='radio' name='QE' value='5' required> Excellent<br>
<input type='radio' name='QE' value='4' required> Strongly Agree<br>
<input type='radio' name='QE' value='3' required> Agree<br>
<input type='radio' name='QE' value='2' required> Disagree<br>
<input type='radio' name='QE' value='1' required> Strongly Disagree<br>
<hr> </div>
<div class='col-md-12'><span class="font-weight-bold">
    Were the lectures clear/well organized and presented at a reasonable pace?</span><br>
<input type='radio' name='QF' value='5' required> Excellent<br>
<input type='radio' name='QF' value='4' required> Strongly Agree<br>
<input type='radio' name='QF' value='3' required> Agree<br>
<input type='radio' name='QF' value='2' required> Disagree<br>
<input type='radio' name='QF' value='1' required> Strongly Disagree<br>
<hr> </div>
<div class='col-md-12'><span class="font-weight-bold">
Developed the skills and knowledge to plan, organize, market, and manage conventions, meetings, and events effectively and efficiently</span><br>
<input type='radio' name='QG' value='5' required> Excellent<br>
<input type='radio' name='QG' value='4' required> Strongly Agree<br>
<input type='radio' name='QG' value='3' required> Agree<br>
<input type='radio' name='QG' value='2' required> Disagree<br>
<input type='radio' name='QG' value='1' required> Strongly Disagree<br>
<hr> </div>  
<div class='col-md-12'><span class="font-weight-bold">
    Did the lectures stimulate you intellectually?</span><br>
<input type='radio' name='QH' value='5' required> Excellent<br>
<input type='radio' name='QH' value='4' required> Strongly Agree<br>
<input type='radio' name='QH' value='3' required> Agree<br>
<input type='radio' name='QH' value='2' required> Disagree<br>
<input type='radio' name='QH' value='1' required>Strongly Disagree<br>
<hr> </div>  
<div class='col-md-12'><span class="font-weight-bold">
    What approaches/aids would facilitate you learning. You can check multiple options.</span><br>
<input type='radio' name='QI' value='5' required> Excellent<br>
<input type='radio' name='QI' value='4' required> Strongly Agree<br>
<input type='radio' name='QI' value='3' required> Agree<br>
<input type='radio' name='QI' value='2' required> Disagree<br>
<input type='radio' name='QI' value='1' required>Strongly Disagree<br>
<hr> </div>  
<div class='col-md-12'><span class="font-weight-bold">
    Did the problems worked out in classroom/online class help you to understand how to solve questions on your own?</span><br>
<input type='radio' name='QJ' value='5' required> Excellent<br>
<input type='radio' name='QJ' value='4' required> Strongly Agree<br>
<input type='radio' name='QJ' value='3' required> Agree<br>
<input type='radio' name='QJ' value='2' required> Disagree<br>
<input type='radio' name='QJ' value='1' required> Strongly Disagree<br>
<hr> </div>  
<div class='col-md-12'><span class="font-weight-bold">
    Is the grading scheme clearly outlined and reasonable/fair?</span><br>
<input type='radio' name='QK' value='5' required> Excellent<br>
<input type='radio' name='QK' value='4' required> Strongly Agree<br>
<input type='radio' name='QK' value='3' required> Agree<br>
<input type='radio' name='QK' value='2' required> Disagree<br>
<input type='radio' name='QK' value='1' required> Strongly Disagree<br>
<hr> </div>  
<div class='col-md-12'><span class="font-weight-bold">
    Is the grading scheme clearly outlined and reasonable/fair?</span><br>
<input type='radio' name='QL' value='5' required> Excellent<br>
<input type='radio' name='QL' value='4' required> Strongly Agree<br>
<input type='radio' name='QL' value='3' required> Agree<br>
<input type='radio' name='QL' value='2' required> Disagree<br>
<input type='radio' name='QL' value='1' required>Strongly Disagree<br>
<hr> </div>  
<div class='col-md-12'><span class='font-weight-bold'>Overall, I was satisfied with my study experiences in CSE department
</span><br>
<input type='radio' name='QZ' value='5' required> Excellent<br>
<input type='radio' name='QZ' value='4' required> Strongly Agree<br>
<input type='radio' name='QZ' value='3' required> Agree<br>
<input type='radio' name='QZ' value='2' required> Disagree<br>
<input type='radio' name='QZ' value='1' required> Strongly Disagree<br>
<hr> </div>
</div>

<div class="container mt-4">
<h4>Part B: Course Outcomes</h4>
    <div class="container text-center"> <!-- Centering the table -->
        <div class="table-responsive">
            <table class="table table-bordered text-center" style="max-width: 800px; margin: auto;">
                <thead class="thead-light">
                    <tr>
                        <th class="align-middle">Course Outcome</th>
                        <th class="align-middle">Strongly Agree</th>
                        <th class="align-middle">Agree</th>
                        <th class="align-middle">Neutral</th>
                        <th class="align-middle">Disagree</th>
                        <th class="align-middle">Strongly Disagree</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Fetch available subjects
                    echo "<form method='post'>";
                    echo "<label for='subject'>Select Subject:</label>";
                    echo "<select name='subject' id='subject' onchange='this.form.submit()'>";
                    echo "<option value=''>--Choose--</option>";
                    $result = $conn->query("SHOW TABLES");
                    while ($row = $result->fetch_array()) {
                        $table = $row[0];
                        if (!in_array($table, $excluded_tables)) {
                            echo "<option value='$table' " . (isset($_POST['subject']) && $_POST['subject'] == $table ? "selected" : "") . ">$table</option>";
                        }
                    }
                    echo "</select></form>";

                    // Display COs if subject is selected
                    if (isset($_POST['subject']) && !empty($_POST['subject'])) {
                        $subject = $_POST['subject'];
                        $query = "SELECT CO FROM $subject WHERE CO IS NOT NULL AND CO <> ''";
                        $coResult = $conn->query($query);
                        
                        if ($coResult && $coResult->num_rows > 0) {
                            while ($coRow = $coResult->fetch_assoc()) {
                                if (!empty($coRow['CO'])) {
                                    $co = htmlspecialchars($coRow['CO']);
                                    echo "<tr><td>$co</td>";
                                    for ($i = 5; $i >= 1; $i--) {
                                        echo "<td><input type='radio' name='feedback[$co]' value='$i' required></td>";
                                    }
                                    echo "</tr>";
                                }
                            }
                        } else {
                            echo "<tr><td colspan='6'>No Course Outcomes found for this subject.</td></tr>";
                        }
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="container text-center mt-3">
    <button id="submit" class="btn btn-primary" style="width: 200px" type="submit" onclick="showAlert()">Submit</button>
</div>

</form>

<script>
$(document).ready(function(){
    $('#regno').change(function(){
        var regno = $('#regno').val();
        $.post('checkreg.php', {regno: regno}, function(result){
            if(result == 'True'){
                alert('Sorry, Feedback already submitted. Retry');
                $('#regno').val('');
                $('#regno').focus();
            }
        });
    });
});

function showAlert() {
    alert("Submission submitted successfully!");
    return true; // Allow the form to be submitted
}
</script>

</body>
</html>