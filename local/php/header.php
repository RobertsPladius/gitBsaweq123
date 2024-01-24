<header class="header">
<link rel="stylesheet" href="../style.css">
<div class="otstup">
  <div class="logo-headar">
    <img href="index.php" src="../logo.svg"   id="logo-headar" >
  </div>
  <div class="menu">
	   <a href="../index.php" class="underline-one weg">Главная</a>
  </div>



            <?php 
                session_start();
                if(isset($_SESSION['isLoggined']))
                {
                    
                    echo '<div class="menu">
                    <p> <a href="../php/exit.php"  class="underline-one weg" style="color: black;">Выйти</a> </p>
                    </div>';
                    echo '<div class="menu">
                    <p> <a href="../pages/register.php"  class="underline-one weg" style="color: black;">Регистрация</a> </p>
                    </div>';
                    echo '<div class="menu">
                    <p> <a href="../pages/test.php"  class="underline-one weg" style="color: black;">Тесты</a> </p>
                    </div>';
                }
                else 
                {
                    '<div class="menu">
                    <p> <a href="../pages/login.php"  class="underline-one weg" style="color: black;">Войти</a> </p>
                    </div>';
                }
                if(isset($_SESSION['isAdmin']) && $_SESSION['isAdmin'] == 1)
                {
                    echo "<a href='../pages/admin.php'>Администрация</a>";
                }
                if(isset($_SESSION['isAdmin']) && $_SESSION['isAdmin'] == 2)
                {
                    echo "<a href='../pages/menage.php'>ВЫ УЧИТЕЛЬ</a>";
                }
            ?>
        </nav>
    </header>