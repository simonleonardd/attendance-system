﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignUp.aspx.vb" Inherits="CAT_3.SignUp" %>

<!DOCTYPE html>

<html>

<head>
	<title>SignUp</title>
    <script type="text/javascript">
        function validate()
{
	<!--Name&Email-->
    var Fname=fname.value;
    var Lname=lname.value;
    var Email=email.value;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
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
    if(Email.match(mailformat))
        {
        
        }
    else
    {
        window.alert("Enter a proper Email.")
    }
           
    var a=username.value;
	var b=password.value;
	var x1=2;
	var x2=0;
	var v=0,s=0;
	var x=0;
	a=a.split("");
	b=b.split("");
	<!--USERNAME-->
	if(a.length>=5 && a.length<=12)
	{
		for(var i=0;i<a.length;i++)
		{
			if((a[i]>='a' && a[i]<='z') ||(a[i]>='A' && a[i]<='Z'))
			{
				x1=1;
			}	
			else
			{
				x1=0;
				break;
			}
		}
		if(x1==1)
		{
			x++;
		}
		else
		{
			window.alert("USERNAME can only have alphabat");
		}
	}
	else
	{
		v=1;
	}
  
	<!--PASSWORD-->
	if(b.length>=7 && b.length<=12)
	{ 
		for(var i=0;i<b.length;i++)
		{
			if((b[i]>='a' && b[i]<='z'))
			{
				x2++;
				break;
			}
		}
		for(var i=0;i<b.length;i++)
		{
			if((b[i]>='A' && b[i]<='Z'))
			{
				x2++;
				break;
			}	
		}		
		for(var i=0;i<b.length;i++)
		{
			if(b[i]>='!'&&b[i]<='/' || b[i]>=':'&&b[i]<='@' || b[i]>='['&&b[i]<='`' || b[i]>='{'&&b[i]<='~')
			{
				x2++;
				break;
			}		
		}
		for(var i=0;i<b.length;i++)
		{
			if(b[i]>='0'&&b[i]<='9')	
			{
				x2++;
				break;
			}
		}
		if(x2==4)
		{
			x++;
		}
		else
		{
			window.alert("PASSWORD should have atleast one special char,number,Uppercase alphabet");
		}
	}
	else
	{
		s=1;
	}
	
	<!--Failed-->
	if(v==1&&s==1)
	{
		window.alert("USERNAME should have atleast 5 to 12 characters and PASSWORD should have atleast 7 to 12 characters");
	}
	else if(v==1)
	{
		window.alert("USERNAME should have atleast 5 to 12 characters");
	}
	else if(s==1)
	{
		window.alert("PASSWORD should have atleast 7 to 12 characters");
	}
	
	<!--Passed-->
	if(x==2)
	{
        <!--Password recheck-->
        b=b.join("");
        var c=pass.value;
        if(c!=b)
            {
                window.alert("Password does not match");
            }
	}
    
   
    
    
}
    </script>
    <link rel="stylesheet" href="CSS.css">
	<style type="text/css" rel="stylesheet">
        header
        {
            background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(3.jpg);
            background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
        }
        input[type=text], select, textarea ,input[type=password],input[type=email]
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
				<li><a href="Gallery.aspx"> GALLERY</a></li>
				<li><a href="Login.aspx"> LOGIN</a></li>
				<li><a href="Contact.aspx"> CONTACT</a></li>
                <li class="active"><a href="SignUp.aspx"> SIGNUP</a></li>
		      </ul>
        </div><font color="white">
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div class="container">
            <form method="POST" action="Login-row insertX.php" >
                <label for="fname">First Name</label>
                <input name="fname" type="text" id="fname" placeholder="Your name.." required="required">
                <label for="lname">Last Name</label>
                <input name="lname" type="text" id="lname" placeholder="Your last name.." required="required">
                <label for="username">Username</label>
                <input name="uname" type="text" id="username" placeholder="Your username.." required="required">
                <label for="email">Email</label>
                <input name="email" type="text" id="email" placeholder="Your email address.." required="required">
                <label for="password">Password</label>
                <input name="pass" type="password" id="password" placeholder="Your Password.." required="required">
                <label for="pass">Re-enter Password</label>
                <input name="pass2" type="password" id="pass" placeholder="Re-enter Password.." required="required">
                <label for="country">Country</label>
                <select name="country" id="country" name="country">
                    <option value="India">India</option>
                    <option value="Nepal">Nepal</option>
                    <option value="SriLanka">SriLanka</option>
                </select>
                <label for="question1">What is your first pet's name?</label>
                <input name="Q1" type="text" id="question1" placeholder="Name.." required="required">
                <label for="question2">What is your favorite movie?</label>
                <input name="Q2" type="text" id="question2" placeholder="Name.." required="required">
                <center><button  class="btn btn-one"onclick="validate()">SignUp
            </form>
        </div>
	</header>
</body>
</html>
