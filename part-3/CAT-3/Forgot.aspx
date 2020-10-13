﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Forgot.aspx.vb" Inherits="CAT_3.Forgot" %>

<!DOCTYPE html>

<html>

<head>
	<title>Login</title>
    <link rel="stylesheet" href="CSS.css">
	<style type="text/css" rel="stylesheet">
        header
        {
            background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(5.jpg);
            height:100vh;
            background-size: cover;
            background-position: center;
        }
        input[type=text], select, textarea ,input[type=password]
        {
            width: 100%;
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
				<li><a href="Gallary.aspx"> GALLERY</a></li>
				<li class="active"><a href="Login.aspx"> LOGIN</a></li>
				<li><a href="Contact.aspx"> CONTACT</a></li>
                <li><a href="SignUp.aspx"> SIGNUP</a></li>
		      </ul>
        </div>
        <font color="white">
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div class="container">
            <form method="POST" action="update.php">
                <label for="Email">Email</label>
                <input type="text" id="email" name="email" placeholder="Your email.." required="required">
                <label for="question1">What is your first pet's name?</label>
                <input name="Q1" type="text" id="question1" placeholder="Name.." required="required">
                <label for="question2">What is your favorite movie?</label>
                <input name="Q2" type="text" id="question2" placeholder="Name.." required="required">
                <label for="password">Password</label>
                <input name="pass1" type="password" id="password" placeholder="Your Password.." required="required">
                <label for="pass">Re-enter Password</label>
                <input name="pass2" type="password" id="pass" placeholder="Re-enter Password.." required="required">
            <center><button class="btn btn-one">Submit</button><br>
            </center></form>
        </div>
	</header>
</body>
</html>
