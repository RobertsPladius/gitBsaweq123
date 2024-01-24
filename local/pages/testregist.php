<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="../css/logstyle.css">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Регистрация</title>
    <link rel="stylesheet" href="../css/form.css">
    <script src="../js/code.jquery.com_jquery-3.7.1.min.js"></script>
    <script src="../js/jquery.mask.min.js"></script>
</head>
<body>
    <form action="testreg.php" method="post">
    <input placeholder="Вопрос" type="text" name="firstName">
    <input placeholder="Сколько баллов за вопрос" type="text" name="lastName">
    <input placeholder="ТЕСТ ID" type="text" name="email">
    <input type="submit" value="Создать">
    </form>
    <script src="../js/mask.js"></script>
</body>
</html>