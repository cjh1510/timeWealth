<?php

/* 1、连接数据库 */
include_once "./connectDB.php";




$sql = "SELECT * FROM slider";
$result = mysqli_query($db,$sql);


$data = mysqli_fetch_all($result,MYSQLI_ASSOC);

echo json_decode($data);
?>