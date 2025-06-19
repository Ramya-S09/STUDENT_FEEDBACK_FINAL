<?php
include('config.php');

$sqla = mysqli_query($conn, "select * from main_table");

echo "
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>PO Mapping</title>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap'>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(to right, #99004d 0%, #ff0080 100%);
        }
        table {
            border-collapse: collapse;
            width: 85%;
            background: #fff;
            box-shadow: 0 10px 10px rgba(0, 0, 0, 0.15);
            border-radius: 5px;
            overflow: hidden;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ccc;
        }
        th {
            background: linear-gradient(to right, #99004d 0%, #ff0080 100%);
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        td:hover {
            background-color: #ff80bf;
        }
        strong {
            color: #99004d;
        }
    </style>
</head><body><table border=1 style='border-collapse:collapse'><thead><tr><th>PO Mapping</th><th>Questionaire</th><th>Weightage</th><th>Score</th><th style='text-align:center'>Average</th><th style='text-align:center'>Average(out of 3)</th></tr></thead><tbody>";

while($row = mysqli_fetch_assoc($sqla)){
	$sum = $tscore=0;
	for($i=5;$i>=1;$i--){
		$score = mysqli_fetch_array(mysqli_query($conn, "select count(*) from survey where ". $row['QName']."=$i"))[0];
		$sum += $i * $score;
		$tscore += $score;
		if($i == 5){
			echo "<tr><td rowspan=6 style='text-align:center'>".$row['PO']."</td><td rowspan=6 style='text-align:center'>".$row['Question']."</td><td>$i</td><td>$score</td><td></td><td></td></tr>";
		}else 
			if($i==1){
				echo "</td><td>$i</td><td>$score</td><td></td><td></td></tr>";
				$avg_out_of_3 = ((($sum/$tscore)/5)*3);
				//echo "<tr><td>$i</td><td>$score</td><td>".$sum/$tscore."</td><td>".$avg_out_of_3."</td></tr>";
				
				$po = mysqli_real_escape_string($conn, $row['PO']);
				$query = "UPDATE po_avg SET average = '$avg_out_of_3' WHERE PO = '$po'";
            if (!mysqli_query($conn, $query)) {
                echo "Error: ". mysqli_error($conn);
            }
			echo "<tr>
			<td colspan=2 style='text-align:center'><strong>".$row['PO']."</strong></td>
			<td style='text-align:center'><strong>" . number_format($sum/$tscore, 2) . "</strong></td>
			<td style='text-align:center'><strong>" . number_format($avg_out_of_3, 2) . "</strong></td>
			</tr>";

		}else{
			echo "<tr><td>$i</td><td>$score</td><td></td><td></td></tr>";
		}
	}
}

echo "</tbody></table></body></html>";

?>