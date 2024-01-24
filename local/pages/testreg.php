<?php
 $conn = new mysqli("localhost", "root", "", "FurStyle");

    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $email = $_POST['email'];



    $sql = "SELECT * FROM questions Where email = '$email'";

    if($result = $conn->query($sql))
    {
        if(mysqli_num_rows($result) == 0)
        {
            $sql = "INSERT INTO questions (question_text, questions_ball, test_id) 
            VALUES ('$firstName', '$lastName','$email')";
            if($conn->query($sql)){
                echo "Данные успешно добавлены";
            }
            else {
                die("Ошибка: " . $conn->error);
            }
            header("Location: test.php");
        }
    }

    if($conn->connect_error){
        die("Ошибка: " . $conn->connect_error);
    }
?>