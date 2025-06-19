<?php

include('config.php');

$k = 'timestamp,';
$v = 'now(),';

foreach($_POST as $key => $value){
    $k .= $key.',';
    $v .= "'".$value."',";
}

$k = rtrim($k, ",");
$v = rtrim($v, ",");

// Insert into main_table
$ins1 = mysqli_query($conn, "INSERT INTO main_table ($k) VALUES ($v)");
if($ins1){
    echo "Inserted into main_table successfully<br>";
}else{
    echo "Error in main_table: " . mysqli_error($conn) . "<br>";
}

// Insert into another_table
$ins2 = mysqli_query($conn, "INSERT INTO student_details ($k) VALUES ($v)");
if($ins2){
    echo "Inserted into student_table successfully<br>";
}else{
    echo "Error in another_table: " . mysqli_error($conn) . "<br>";
}

?>
