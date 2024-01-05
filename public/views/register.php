<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="/public/css/style.css">
 <script type="text/javascript" src="./public/js/script.js" defer></script>
<title>REGISTER</title>
</head>

<body>
    <div class="container">
        <h1 class="title">EventNav</h1>
        <div class="login-container">
            <form class="register" action="register" method="POST">
                <div class="messages">
                    <?php
                        if(isset($messages)){
                            foreach($messages as $message) {
                                echo $message;
                            }
                        }
                    ?>
                </div>
                <input name="name" type="text" placeholder="name">
                <input name="surname" type="text" placeholder="surname">
                <input name="email" type="text" placeholder="email@email.com">
                <input name="password" type="password" placeholder="password">
                <input name="confirmedPassword" type="password" placeholder="confirm password">
                <button type="submit">REGISTER</button>
            </form>
        </div>
    </div>
</body>
</html>