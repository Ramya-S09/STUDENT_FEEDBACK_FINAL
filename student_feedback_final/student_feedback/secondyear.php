
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Outcome Feedback Analysis</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #c6e2ff, #c6e2ff);
            margin: 0;
            padding: 20px;
        }
        
        .container {
            max-width: 1200px;
            margin: 120px auto 20px auto;
        }
        
        .header-card {
    background: #f8f8f8;
    padding: 10px;
    text-align: center;
    border-radius: 10px;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
    border-left: 5px solid rgb(11, 70, 126);
    width: 100%;
    margin-bottom: 20px;
}

        
        select {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        
        .dashboard {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }
        
        .card {
            background: #f8f8f8;
            padding: 20px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            flex: 1;
            margin: 0 10px;
            border-left: 5px solid rgb(11, 70, 126);
        }
        
        .card h3 {
            color: #333;
            margin-top: 0;
        }
        
        .card p {
            color: rgb(11, 70, 126);
            font-size: 24px;
            font-weight: bold;
        }
        
        .table-responsive {
            overflow-x: auto;
            margin-top: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        table th, table td {
            padding: 12px 15px;
            text-align: left;
            border: 1px solid #ddd;
        }
        
        table th {
            background-color: rgb(11, 70, 126);
            color: white;
            text-align: center;
        }
        
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        table tr:hover {
            background-color: #ddd;
        }
        
        .no-data {
            text-align: center;
            padding: 20px;
            font-size: 18px;
            color: #666;
        }
        
        .summary-row td {
            font-weight: bold;
            background-color: #e6f2ff;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="header-card">
        <form method="post" action="">
            <select id="courseDropdown" name="courseDropdown" onchange="this.form.submit()">
                <option value="">Select a course</option>
            <option value="MA3354">MA3354 Discrete Mathematics</option>
            <option value="CS3351">CS3351 Digital Principles and Computer Organization</option>
            <option value="CS3352">CS3352 Foundations of Data Science</option>
            <option value="CS3301">CS3301 Data Structures</option>
            <option value="CS3391">CS3391 Object Oriented Programming</option>
            <option value="CS3311">CS3311 Data Structures Laboratory</option>
            <option value="CS3381">CS3381 Object Oriented Programming Laboratory</option>
            <option value="CS3361">CS3361 Data Science Laboratory</option>
            <option value="GE3361">GE3361 Professional Development</option>
            <option value="CS3452">CS3452 Theory of Computation</option>
            <option value="CS3492">CS3492 Database Management Systems</option>
            <option value="CS3401">CS3401 Algorithms</option>
            <option value="CS3451">CS3451 Introduction to Operating Systems</option>
            <option value="GE3451">GE3451 Environmental Sciences and Sustainability</option>
            <option value="CS3461">CS3461 Operating Systems Laboratory</option>
            <option value="CS3481">CS3481 Database Management Systems Laboratory</option>
            <option value="CS3591">CS3591 Computer Networks Lab integrated</option>
            </select>


            </select>
        </form>
    </div>
    
    <div class="container">
        <div class="dashboard">
            <div class="card">
                <h3>Total Responses</h3>
                <p id="totalResponses">0</p>
            </div>
            <div class="card">
                <h3>Course Outcomes</h3>
                <p id="totalCOs">0</p>
            </div>
        </div>
        
        <div class="table-responsive">
            <div id="results">
                <?php
                if(isset($_POST['courseDropdown']) && !empty($_POST['courseDropdown'])) {
                    include('config.php');
                    
                    $sub_code = mysqli_real_escape_string($conn, $_POST['courseDropdown']);
                    
                    $sql = "SELECT * FROM co_table_analysis WHERE sub_code = '$sub_code' ORDER BY COs ASC";
                    $result = mysqli_query($conn, $sql);
                    
                    if(mysqli_num_rows($result) > 0) {
                        echo "<table class='table table-striped table-bordered table-hover'>";
                        echo "<thead>";
                        echo "<tr>";
                        echo "<th>CO Number</th>";
                        echo "<th>CO Statement</th>";
                        echo "<th>Strongly Agree (5)</th>";
                        echo "<th>Agree (4)</th>";
                        echo "<th>Neutral (3)</th>";
                        echo "<th>Disagree (2)</th>";
                        echo "<th>Strongly Disagree (1)</th>";
                        echo "<th>Average</th>";
                        echo "<th>Average (out of 3)</th>";
                        echo "</tr>";
                        echo "</thead>";
                        echo "<tbody>";
                        
                        $total_responses = 0;
                        $co_count = 0;
                        
                        while($row = mysqli_fetch_assoc($result)) {
                            $co_count++;
                            
                            $total_for_this_co = 5;
                            
                            if($co_count == 1) {
				 $total_responses = $row['strongly_agree'] + $row['agree'] + $row['neutral'] + $row['disagree'] + $row['strongly_disagree'];
                            }
                            
                            $weighted_sum = (5 * $row['strongly_agree']) + (4 * $row['agree']) + 
                                           (3 * $row['neutral']) + (2 * $row['disagree']) + 
                                           (1 * $row['strongly_disagree']);
                            
                            $average = $total_for_this_co > 0 ? $weighted_sum / $total_for_this_co : 0;
                            
                            $average_out_of_3 = ($average / 5) * 3;
                            
                            echo "<tr>";
                            echo "<td style='text-align:center'>CO" . $row['COs'] . "</td>";
                            echo "<td>" . $row['CO_statements'] . "</td>";
                            echo "<td style='text-align:center'>" . $row['strongly_agree'] . "</td>";
                            echo "<td style='text-align:center'>" . $row['agree'] . "</td>";
                            echo "<td style='text-align:center'>" . $row['neutral'] . "</td>";
                            echo "<td style='text-align:center'>" . $row['disagree'] . "</td>";
                            echo "<td style='text-align:center'>" . $row['strongly_disagree'] . "</td>";
                            echo "<td style='text-align:center'>" . number_format($average, 2) . "</td>";
                            echo "<td style='text-align:center'>" . number_format($average_out_of_3, 2) . "</td>";
                            echo "</tr>";
                        }
                        
                        $total_avg = 0;
                        $total_avg_3 = 0;
                        
                        $requery_sql = "SELECT * FROM co_table_analysis WHERE sub_code = '$sub_code' ORDER BY COs ASC";
                        $requery_result = mysqli_query($conn, $requery_sql);
                        
                        while($avg_row = mysqli_fetch_assoc($requery_result)) {
                            $total_this_co =5;
                            
                            $weighted_sum = (5 * $avg_row['strongly_agree']) + (4 * $avg_row['agree']) + 
                                           (3 * $avg_row['neutral']) + (2 * $avg_row['disagree']) + 
                                           (1 * $avg_row['strongly_disagree']);
                            
                            $row_avg = $total_this_co > 0 ? $weighted_sum / $total_this_co : 0;
                            $row_avg_3 = ($row_avg / 5) * 3;
                            
                            $total_avg += $row_avg;
                            $total_avg_3 += $row_avg_3;
                        }
                        
                        $overall_avg = $co_count > 0 ? $total_avg / $co_count : 0;
                        $overall_avg_3 = $co_count > 0 ? $total_avg_3 / $co_count : 0;
                        
                        echo "<tr class='summary-row'>";
                        echo "<td colspan='7' style='text-align:center'><strong>Overall Average</strong></td>";
                        echo "<td style='text-align:center'><strong>" . number_format($overall_avg, 2) . "</strong></td>";
                        echo "<td style='text-align:center'><strong>" . number_format($overall_avg_3, 2) . "</strong></td>";
                        echo "</tr>";
                        
                        echo "</tbody>";
                        echo "</table>";
                        
                        echo "<script>
                            document.getElementById('totalResponses').textContent = " . $total_responses . ";
                            document.getElementById('totalCOs').textContent = " . $co_count . ";
                        </script>";
                        
                        // Calculate totals for chart
                        $totalStronglyAgree = 0;
                        $totalAgree = 0;
                        $totalNeutral = 0;
                        $totalDisagree = 0;
                        $totalStronglyDisagree = 0;
                        
                        $chart_sql = "SELECT * FROM co_table_analysis WHERE sub_code = '$sub_code'";
                        $chart_result = mysqli_query($conn, $chart_sql);
                        
                        while($chart_row = mysqli_fetch_assoc($chart_result)) {
                            $totalStronglyAgree += $chart_row['strongly_agree'];
                            $totalAgree += $chart_row['agree'];
                            $totalNeutral += $chart_row['neutral'];
                            $totalDisagree += $chart_row['disagree'];
                            $totalStronglyDisagree += $chart_row['strongly_disagree'];
                        }
                        
                        // Include Chart.js
                        echo '<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>';
                        echo '<div class="surveyChart" style="display: flex; justify-content: center; margin-top: 30px; height: 400px;">
                                <canvas id="surveyChart"></canvas>
                              </div>';
                        echo '<script>
                            var ctx = document.getElementById("surveyChart").getContext("2d");
                            var surveyChart = new Chart(ctx, {
                                type: "pie",
                                data: {
                                    labels: ["Strongly Agree (5)", "Agree (4)", "Neutral (3)", "Disagree (2)", "Strongly Disagree (1)"],
                                    datasets: [{
                                        data: [' . $totalStronglyAgree . ', ' . $totalAgree . ', ' . $totalNeutral . ', ' . $totalDisagree . ', ' . $totalStronglyDisagree . '],
                                        backgroundColor: ["#4CAF50", "#2196F3", "#FFC107", "#9C27B0", "#FF5722"]
                                    }]
                                },
                                options: {
                                    responsive: true,
                                    maintainAspectRatio: false,
                                    plugins: {
                                        legend: {
                                            position: "top",
                                        },
                                        title: {
                                            display: true,
                                            text: "Distribution of Responses",
                                            font: {
                                                size: 18
                                            }
                                        }
                                    }
                                }
                            });
                        </script>';
                    } else {
                        echo "<div class='no-data'>No Course Outcome data available for the selected course.</div>";
                    }
                } else {
                    echo "<div class='no-data'>Please select a course to view Course Outcome analysis.</div>";
                }
                ?>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            <?php if(isset($_POST['courseDropdown']) && !empty($_POST['courseDropdown'])) { ?>
                document.getElementById('courseDropdown').value = '<?php echo $_POST['courseDropdown']; ?>';
            <?php } ?>
        });
    </script>
</body>
</html>



