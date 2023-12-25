<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="/public/css/login.css">
 <title>LOGIN</title>
</head>

<body class="login">
    <div class="login-container">
        <h1 class="title">EventNav</h1>
        <form>
            <!-- <h2 class="e-mail">e-mail</h2> -->
            <!--<input class="e-mail-input" type="text" placeholder="e-mail"/>
            <input class="password-input" type="password" placeholder="password"/>-->
            <div class="input-container">
                <img src="../../icon_e-mail.png" alt="password icon" class="icon_e-mail">
                <input type="text" id="email" placeholder="e-mail"/>
            </div>
            
            <div class="input-container">
             <img src="../../lock.png" alt="password icon" class="icon_lock">
                <input type="password" id="password" placeholder="password"/>
            </div>  
            
            <button class="SignIn_text">SIGN IN</button>
        </form>
        
        <p class="SignUp">Don't have an account? <span class="SignUpLink">Sign up</span></p>
    </div>
</body>

</html>