<?php 

// подключение бд
$host= 'localhost';
 $user = 'root';
 $password = '';
 $db_name = 'FurStyle';
 $con = mysqli_connect($host, $user, $password, $db_name);

if(mysqli_connect_errno()){
    echo "failed".mysqli_connect_errno();
}


 ?>