<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<h1>Управление пользователями</h1>
    <form action="api.php" method="post">
    <input placeholder="Имя" type="text" name="firstName">
    <input placeholder="Фамилия" type="text" name="lastName">
    <input placeholder="Почта" type="email" name="email">
    <input id="phone" placeholder="Телефон" type="phone" name="phone">
    <input placeholder="Пароль" type="password" name="password">
    <input type="submit" value="Добавить">
    </form>
  

<script>
function saveUser() {
  const user = {
    id: document.getElementById('userId').value,
    firstName: document.getElementById('firstName').value,
    lastName: document.getElementById('lastName').value,
    password: document.getElementById('password').value,
    phone: document.getElementById('phone').value,
    email: document.getElementById('email').value,
    isAdmin: document.getElementById('isAdmin').value,
    balance: document.getElementById('balance').value
  };

  fetch('save_user.php', { // Replace with your PHP file for handling user data
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(user),
  })
  .then(response => response.json())
  .then(data => {
    console.log('User saved:', data);
  })
  .catch((error) => {
    console.error('Error:', error);
  });
}
</script>
</body>
</html>