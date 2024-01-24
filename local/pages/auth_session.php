<?php 

session_start();
if(!isset($_SESSION["lastName"])){
    header("Location: login.php");
    exit();
}
?>