
<!DOCTYPE html>
<html>
<head>
  <title>Тесты для ученика</title>
  <style>

/* coding with nick */
 
.quest{
      background: #888383;
      display: flex;
      flex-direction: column;
      width: 350px;
      margin: 10px;
      padding: 15px;
  }
  .zzz{
      border:1px solid black;
      padding: 10px;
      width: 300px;
  }

  .fff{
    border:1px solid black;
    padding: 20px;
    margin: 30px;
    height: 550px;
  }
</style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<?php require("../php/header.php"); ?><br><br><br><br><br><br><br><br><br>
<body>

<div class="popular-row">

<h2>ТЕСТ1</h2>
<?php
$host= 'localhost';
 $user = 'root';
 $password = '';
 $db_name = 'FurStyle';
 $con = mysqli_connect($host, $user, $password, $db_name);

if(mysqli_connect_errno()){
    echo "failed".mysqli_connect_errno();
}
$query = "SELECT MAX(test_id) FROM questions";

$result = mysqli_query($con, $query);

while ($row = mysqli_fetch_assoc($result)) {

$max=$row['MAX(test_id)'];




}
        // //////////////////////
for ($i=0; $i <=$max ; $i++) { 
  echo '<form action="submit.php" method="POST" class="fff">';
  echo '<h2>test'.$i.'</h2>';
  
  
  
  $sql = "SELECT * FROM questions ";
  $result = mysqli_query($con, $sql);
  
  if (mysqli_num_rows($result) > 0) {
  
  
  
      while ($row = mysqli_fetch_assoc($result)) {
          $question_id = $row['id'];
          $question_text = $row['question_text'];
          if($row['test_id']==$i){
          echo '<p>' . $question_text . '</p>';
  
          // Получить список вариантов ответов для каждого вопроса
          $sql_answers = "SELECT * FROM answers WHERE question_id = $question_id";
          $result_answers = mysqli_query($con, $sql_answers);
  
          if (mysqli_num_rows($result_answers) > 0) {
              while ($row_answer = mysqli_fetch_assoc($result_answers)) {
                  $answer_id = $row_answer['id'];
                  $answer_text = $row_answer['answer_text'];
  
                  echo '<input type="radio" name="answer[' . $question_id . ']" value="' . $answer_id . '" required>';
                  echo '<label for="' . $answer_id . '">' . $answer_text . '</label>';
                  echo '<br>';
              }
          }
        }
      }
  }
  
  
  
  
  
      echo '<input type="submit" value="Отправить">
      </form>';
      // //////////////////////
  }
?>

 </form>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <footer class="footer">
    
    <ul class="social-icon">
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-facebook"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-twitter"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-linkedin"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-instagram"></ion-icon>
        </a></li>
    </ul>
    <ul class="menu">
    <li class="menu__item"><a class="menu__link" href="index.php">Главная</a></li>
      <li class="menu__item"><a class="menu__link" href="pages/times.php">Каталог</a></li>
      <li class="menu__item"><a class="menu__link" href="#">Отзывы</a></li>
      <li class="menu__item"><a class="menu__link" href="pages/comand.php">О команде</a></li>
      <li class="menu__item"><a class="menu__link" href="pages/profile.php">Профиль</a></li>

    </ul>
    <p>&copy;2023 ВЛАДТОМАШ | All Rights Reserved</p>
  </footer>
  <script src="script.js"></script>
</body>
</html>