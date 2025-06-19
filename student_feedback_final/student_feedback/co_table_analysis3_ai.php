<?php
include('config.php');

// Check if the subject code is provided
if (isset($_POST['subject_value'])) {
    $subject_code = mysqli_real_escape_string($conn, $_POST['subject_value']);
    
    // Query to get COs and CO statements from the subject-specific table
    $subject_table = "table_" . $subject_code; // Assuming your tables are named like table_subjectcode
    $query = "SELECT co_id, co, CO_statements FROM $subject_table";
    $result = mysqli_query($conn, $query);
    
    if ($result) {
        $co_counts = [];
        $total_statements = 0;
        $total_COs = 0;
        
        // Prepare to store the data for analysis
        while ($row = mysqli_fetch_assoc($result)) {
            // Count each CO
            if (!isset($co_counts[$row['co_id']])) {
                $co_counts[$row['co_id']] = [
                    'co' => $row['co'],
                    'count' => 0,
                    'statements' => $row['CO_statements']
                ];
            }
            $co_counts[$row['co_id']]['count']++;
            $total_statements += $row['CO_statements'];
            $total_COs++;
        }

        // Calculate averages
        $average_statements = $total_COs > 0 ? $total_statements / $total_COs : 0;

        // Display the results in a table
        echo "
        <!DOCTYPE html>
        <html lang='en'>
        <head>
            <meta charset='UTF-8'>
            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
            <title>CO Analysis for $subject_value</title>
            <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap'>
            <style>
                * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }
                body { display: flex; justify-content: center; align-items: center; background: linear-gradient(to right, #99004d 0%, #ff0080 100%); }
                table { border-collapse: collapse; width: 85%; background: #fff; border-radius: 5px; overflow: hidden; }
                th, td { padding: 12px; text-align: center; border: 1px solid #ccc; }
                th { background: linear-gradient(to right, #99004d 0%, #ff0080 100%); color: #fff; }
                tr:nth-child(even) { background-color: #f2f2f2; }
                td:hover { background-color: #ff80bf; }
                strong { color: #99004d; }
            </style>
        </head>
        <body>
            <table>
                <thead>
                    <tr>
                        <th>CO ID</th>
                        <th>COs</th>
                        <th>Count</th>
                        <th>CO Statements</th>
                    </tr>
                </thead>
                <tbody>";

        foreach ($co_counts as $co_id => $data) {
            echo "<tr>
                    <td><strong>$co_id</strong></td>
                    <td><strong>{$data['co']}</strong></td>
                    <td><strong>{$data['count']}</strong></td>
                    <td><strong>{$data['statements']}</strong></td>
                  </tr>";
        }

        echo "
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan='2'><strong>Total</strong></td>
                        <td><strong>$total_COs</strong></td>
                        <td><strong>$total_statements</strong></td>
                    </tr>
                    <tr>
                        <td colspan='2'><strong>Average CO Statements</strong></td>
                        <td colspan='2'><strong>" . number_format($average_statements, 2) . "</strong></td>
                    </tr>
                </tfoot>
            </table>
        </body>
        </html>";
    } else {
        echo "Error: " . mysqli_error($conn);
    }
} else {
    echo "Please provide a subject code.";
}
?>