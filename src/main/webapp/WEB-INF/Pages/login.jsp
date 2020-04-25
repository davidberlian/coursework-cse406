<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>EE-Bank: Sign into Online Banking</title>
<script src="https://kit.fontawesome.com/6e68db03e6.js" crossorigin="anonymous"></script>
<head>
<style>
body {
	font-family: Avenir;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: royalblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  border-radius: 12px;
}

button:hover {
  opacity: 0.8;
}

.registerbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #4CAF50;
}

.container {
  padding: 2px;
}

.box{
 margin: auto;
  width: 60%;
  border: 3px solid #f1f1f1;
  padding: 10px;
  background: white;
  border-radius: 12px;
 }

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .registerbtn {
     width: 100%;
  }
.error {
	color: red;
}

.form .box input{
	width 100%
	font-size: 16px;
	border: none;
	border-bottom: 2px solid #777;
	outline: none;
	padding: 10px;
	padding-left:25px;
	box-sizing:border-box;
	}
	
.banner {
  background: rgb(24,187,217);
  background: linear-gradient(90deg, rgba(24,187,217,1) 0%, rgba(76,184,243,1) 59%, rgba(201,162,242,1) 100%);
  padding: 20px 10px;
}

</style>
</head>


<body>	

<center>
<h2 style="font-size:10%;"> <img src="logo.png"style="width:150px;height:45px"/> </h2> 
</center>

<div class="container" style="background-color:white"> 
	<center>
		<p style="font-size:250%;  letter-spacing: 4px; color: royalblue">Welcome back!</p>
		<p style="font-size:95%;  letter-spacing: 2px";>Member Login</p><br>
	</center>
	<div class="box">
		<form:form method="POST" action="doLogin.htm" modelAttribute="user">
			
						<i class="fas fa-user"></i>
								<form:input path="username" placeholder="Enter Username"/>
								<form:errors path="username" cssClass="error" />
						<i class="fas fa-lock"></i>	
								<form:password path="password" placeholder="Enter password"/>
								<form:errors path="password" cssClass="error" />
								
						<p style="font-size:60%"> <span class="psw" style= "color: royalblue"> <a href="#">Forgot Password</a></span></p>		
						<button type="submit" style="font-size:80%"><b>L o g i n</b></button> 
						
						<label style="font-size:60%">
			     			 <input type="checkbox" checked="checked" name="remember"> Remember me
						</label>	
			
			<center> <p style="font-size:80%"> <a href="#">Register</a></center>
		
		</form:form>
	</div>
</div>

<br>
<div class="container" style = "background-color: #4CB8F3"> </div> <br>




</body>
</html>