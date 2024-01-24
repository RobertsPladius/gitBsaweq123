<?php
$email = $_POST['email'];
$password = $_POST['password'];

require("connect.php");

$sql = "SELECT * FROM Client WHERE email = '$email'";
$hash = "";
$surname = ""; // Добавлено для сохранения фамилии

if($result = $conn->query($sql)){
    foreach($result as $row){
        $hash = $row["password"];
        
    }
}

if(password_verify($password, $hash))
{
    session_start();
    if($result = $conn->query($sql)){
        foreach($result as $row){
            $_SESSION["email"] = $row['email'];
            $_SESSION["id"] = $row['id'];
            $_SESSION["isAdmin"] = $row['isAdmin'];
            $_SESSION["lastName"] = $row['id'];
        }
    }
    $_SESSION["isLoggined"] = true;

    $conn->close();
    header("Location: ../pages/test.php");
}
else 
{
    echo "Неверные данные";
}
?>