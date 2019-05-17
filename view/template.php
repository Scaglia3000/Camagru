<?php
    session_start();
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Fidelio</title>
        <link href="public/css/style.css" rel="stylesheet" /> 
    </head>

    <section id="container">

        <section id="header">
            <header>
                <div class="top_bar">
                <h6 class="logo" onclick="location.href='index.php';" style="cursor:pointer;">Fidelio</h6>
                    <ul class="top_bar_elements">
                        <?php
                        if (!$_SESSION['loggued_on_user'])
                        {
                            echo '<li class="right" onclick=location.href="index.php?view=user" style="cursor:pointer;">Login/Register</li>';
                            echo '<li class="right" onclick=location.href="index.php?view=gallery&page=1" style="cursor:pointer;">Gallery</li>';
                        } else {
                            echo '<li class="right" onclick=location.href="index.php?action=logout" style="cursor:pointer;">Logout</li>';
                            echo '<li class="right" onclick=location.href="index.php?view=account" style="cursor:pointer;">Hello '.$_SESSION["loggued_on_user"].'</li>';
                            echo '<li class="right" onclick=location.href="index.php?view=camera" style="cursor:pointer;">Take a picture</li>';
                            echo '<li class="right" onclick=location.href="index.php?view=gallery&page=1" style="cursor:pointer;">Gallery</li>';
                        }
                        ?>
                    </ul>
                </div>
            </header>
        </section>
        
        <section id="center">
            <?= $content ?>
            <?= $errorMsg ?>
        </section>
      
        <section id="footer">
            <footer>
                <p>© Martini Scaglioni 2019</p>
            </footer>
        </section>
    </section>
</html>