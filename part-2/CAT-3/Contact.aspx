﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Contact.aspx.vb" Inherits="CAT_3.Contact" %>

<!DOCTYPE html>

<html>

<head>
	<title>Contact</title>
    <script type="text/javascript">
        function validate()
        {
            var Fname=fname.value;
            var Lname=lname.value;
            var Email=email.value;
            var Text=subject.value;
            if(Fname=="")
            {
                window.alert("Please enter your first name."); 
            }
            if(Lname=="")
            {
                window.alert("Please enter your last name."); 
            }
            if (Email=="")                                   
            { 
                window.alert("Please enter a valid e-mail address."); 
            }
            if(Text=="")
            {
                window.alert("Please enter your feedback."); 
            }
            
        }
    </script>
        <link rel="stylesheet" href="CSS.css">

	<style type="text/css" rel="stylesheet">
        header
        {
            background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(4.jpg);
            height:100vh;
            background-size: cover;
            background-position: center;
        }
        input[type=text], select, textarea
        {
            width: 100%;
            padding: 12px;  
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical 
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
				<li><a href="Login.aspx"> LOGIN</a></li>
				<li class="active"><a href="Contact.aspx"> CONTACT</a></li>
                <li><a href="SignUp.aspx"> SIGNUP</a></li>
		      </ul>
        </div><font color="white">
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div class="container">
            <form method="POST" action="feedback.php">
                <label for="fname">First Name</label>
                <input type="text" name="fname" id="fname" placeholder="Your name..">
                <label for="lname">Last Name</label>
                <input type="text" id="lname" name="lname" placeholder="Your last name..">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" placeholder="Your email address..">
                <label for="country">Country</label>
                <select id="country" name="country">
                    <option value="India">India</option>
                    <option value="Nepal">Nepal</option>
                    <option value="SriLanka">SriLanka</option>
                </select>
                <label for="subject">Subject</label>
                <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
                <center><button class="btn btn-one" onclick="validate()">Submit
            </form>
        </div>
	</header>
</body>
</html>