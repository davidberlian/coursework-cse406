<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to EE-Bank</title>
</head>
<link href='https://fonts.googleapis.com/css?family=Cabin' rel='stylesheet'>

<style>

body, html {
  height: 70%;
  font-family: Avenir;
  margin: 0;
}

.header {
  overflow: hidden;
  background-color: #white;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 36px;
}

.header a.logo {
  font-size: 30px;
  font-weight: bold;
}

/* Change the background color on mouse-over */
.header a:hover {
 opacity: 0.8;
}

/* Float the link section to the right */
.header-right {
  float: right;
}


/* Add media queries for responsiveness - when the screen is 500px wide or less, stack the links on top of each other */
@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}

.container {
  position: relative;
  text-align: center;
  color: white;
}

.right {
  position: absolute;
  top: 45%;
  left: 18%;
  transform: translate(-50%, -50%);
}
  
.text{
  color: Black;
  font-family: Avenir;
  font-size: 25px;
}

button {
  background-color: #3C59D5;
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

</style>


<body>


<div class="header" style = "background: #4cb8F3"></div>

<div class="header">
  <a href="#default" class="logo"> <span><img src="logo.png"style="width:150px;height:45px" /></span></a>
  <div class="header-right">
    <a href="#home">Home</a>
    <a href="login.htm"  style = "background-color: #3C59D5; color : white">Sign in</a>
  </div>
</div>

<div class="container">
  <img src="home.png" alt="Home" style="width:100%;">
  	<div class="right">
  		<div class="text"><b>Transfer, Pay, Save <br> easier than ever</b></div> <br>
  		<div class="text" style="font-size: 20px">Open an account for free</div><br>

  		 	<button type="submit" style="font-size:80%"><b>Join us now</b></button> 
  	</div>
</div>

<div class="header" style = "background: rgb(24,187,217);
background: linear-gradient(90deg, rgba(24,187,217,1) 0%, rgba(76,184,243,1) 59%, rgba(201,162,242,1) 100%);"></div>

</body>
</html>
