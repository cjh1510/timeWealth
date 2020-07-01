
<?php
header('Content-Type: text/html; charset=utf-8');
// $db=mysqli_connect("127.0.0.1","root","","timewealth");
include_once "./connectDB.php";

$username=$_REQUEST["username"];
$password=$_REQUEST["password"];

//  去数据库中查询看指定的用户名是否存在
$sql = "SELECT * FROM user WHERE username='$username'" ;
$result = mysqli_query($db,$sql);

$data = array("status"=>"","data"=>array("msg"=>""));
if(mysqli_num_rows($result) == 0){
    // 如果不存在，那么就返回数据(登录失败，用户名不存在)
    $data["status"] = "error";
    $data["data"]["msg"] = "登录失败，用户名不存在";
}else{
    $sql2="SELECT * FROM user WHERE username='$username'";
    $result=mysqli_query($db,$sql2);
    
    $res = mysqli_fetch_all($result, MYSQLI_ASSOC);
    $res=$res[0];
    // print_r($res);
    // var_dump($res);

    $pwd = $res['password'];
    // print_r($pwd);
    if($password!=$pwd){
        $data["status"] = "error";
        $data["data"]["msg"] = "登录失败，密码不正确！！！";
    }else{
        $userId = $res["user_id"];
        $data["status"] = "success";
        $data["data"]["msg"] = "恭喜你，登录成功";
        $data["data"]["userId"] = $userId;
        $data["data"]["password"] = $password;
        $data["data"]["username"] = $username;
    }
    // 
}
    # 最后，需要把结果以JSON数据的方式返回
    echo json_encode($data,true);
    


// $sql = "SELECT * FROM `user` WHERE username = '$username'";


// $r = mysqli_query($db, $sql);

// $num = mysqli_num_rows($r);


// if($num == 1){
//     $data[] = mysqli_fetch_all($r,MYSQLI_ASSOC);
//     // print_r($data[0]);
//     if($password  === $data[3]){
//       echo '{"status":"success","msg":"登录成功!"}';
//     }else{
//       echo '{"status":"error","msg":"密码不正确!"}';
//     }
//   }else{
//     echo '{"status":"error","msg":"该用户名不存在!"}';
//   }

?>