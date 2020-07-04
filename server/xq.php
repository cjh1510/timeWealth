<?php

/* 1、连接数据库 */
include_once "./connectDB.php";
mysqli_set_charset($db,"utf8");
$good_id=$_REQUEST["id"];

$sql = "SELECT * FROM goods WHERE good_id=$good_id";


$result = mysqli_query($db,$sql);
$data = mysqli_fetch_all($result,MYSQLI_ASSOC);

/* 3、把数据转换为JSON数据返回 */
echo json_encode($data,true);
?>