<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="/public/css/style.css">
 <title>LOGIN PAGE</title>
</head>

<body>
    <div class="container">
        <h1 class="title">EventNav</h1>
        <div class="login-container">
            <form class="login" action="login" method="POST">
                    <div class="messages">
                        <?php
                        if (isset($messages)) {
                            foreach ($messages as $message) {
                                echo $message;
                            }
                        }
                        ?>
                    </div>

                    <div class="form-group">
                        <label class="icon_login" for="login"></label>
                            <input class="iconlogin" id="login" name="login" type="text" placeholder="e-mail">
                        
                    </div>
                    <div class="form-group">
                        <label class="icon_password" for="password"></label>
                            <input class="iconpassword" id="password" name="password" type="password" placeholder="password">
                            
                    </div>
                    <button type="submit">SIGN IN</button>
            </form>
            <p class="signup">Don't have an account? <a href="register">Sign up</a></p> 
        </div>
    </div>
</body>

</html>

    