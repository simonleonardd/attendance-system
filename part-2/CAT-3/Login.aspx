<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="CAT_3.Login" %>

<!DOCTYPE html>

<html>

<head>
	<title>Login</title>
    <link rel="stylesheet" href="CSS.css">
    <script type="text/javascript">
        var a;
        a=<?php echo $flag;?>
        if(a==0)
            window.alert("worng user or password");
    </script>
	<style type="text/css" rel="stylesheet">
        header
        {
            background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(2.jpg);
            height:100vh;
            background-size: cover;
            background-position: center;
        }
        input[type=text], select, textarea ,input[type=password]
        {
            width: 50%;
            padding: 12px;  
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }
    </style>
</head>
 
<body>
	<header>
        <div class="row">
			<div class="logo">
				<a href="Final.aspx"><img src="logo.png"></a>
			</div>
			<ul class="main-nav">
				<li><a href="Final.aspx"> HOME</a></li>
				<li><a href="Gallery.aspx"> GALLERY</a></li>
				<li class="active"><a href="Login.aspx"> LOGIN</a></li>
				<li><a href="Contact.aspx"> CONTACT</a></li>
                <li><a href="SignUp.aspx"> SIGNUP</a></li>
		      </ul>
        </div>
        <font color="white">
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div class="container"><center>
            <form method="POST" action="login-verification.php">
                <label for="username">Username</label>
                <input type="text" id="username" name="uname" placeholder="Your username.." required="required">
                <br><label for="password">Password</label>
                <input type="password" id="password" name="pass" placeholder="Your Password.." required="required">
                </select><br>
            <button class="btn btn-one">Login</button><br>
            <br><a href="SignUp.aspx">Don't have a account? SignUp Here!!!</a><br>
            <br><a href="Forgot.aspx">**Forgot Password**</a><br>
            </center></form>
        </div>
	</header>
</body>
</html>
