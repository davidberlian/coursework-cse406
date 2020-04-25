<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Home: Internet Banking</title>
<script src="https://kit.fontawesome.com/6e68db03e6.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>


body {
  font-family: Avenir;
}

.header {
  overflow: hidden;
  background-color: white;
  padding: 2px;  
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
}

.header a:hover {
 opacity: 0.8;
}

.header-right {
  float: right;
}

.btn-group button {
  color: white; 
  padding: 10px 24px; 
  cursor: pointer;
  float: left; 
}


button {
  color: white;
  padding: 14px 20px;
  margin: 5px;
  border: none;
  cursor: pointer;
  font-size: 70%;
  display:inline-block;
  text-align: center;
  background: rgb(24,187,217);
  background: linear-gradient(90deg, rgba(24,187,217,1) 0%, rgba(76,184,243,1) 59%, rgba(201,162,242,1) 100%);
  width:31%; 
  border-radius: 16px;
}

button:hover {
  opacity: 0.8;
}


.btn-group:after {
  content: "";
  clear: both;
  display: table;
}

/* Style the sidebar - fixed full height */
.sidebar {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

/* Style sidebar links */
.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 18px;
  color: #818181;
  display: block;
}

/* Style links on mouse-over */
.sidebar a:hover {
  color: #f1f1f1;
}

/* Style the main content */
.main {
  margin-left: 160px;
  padding: 0px 10px;
}

/* Add media queries for small screens (when the height of the screen is less than 450px, add a smaller padding and font-size) */
@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}

.img {
 position: relative;
 text-align: center;
 color: white;
}

.topcentered {
  position: absolute;
  top: 30%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}



</style>
</head>
<body>

<div class="sidebar">
<br>
  <a href="#home"><i class="fa fa-fw fa-home"></i> Home</a><br>
  <a href="#services"><i class="fa fa-fw fa-wrench"></i> Setting</a><br>
  <a href="#clients"><i class="fa fa-fw fa-user"></i> Personal Info</a><br>
  <a href="#contact"><i class="fa fa-fw fa-envelope"></i> Contact Us</a><br>
</div>

<div class = "main">
	<div class="header">
	  <a href="#default" class="logo"> <span><img src="logo.png"style="width:155px;height:45px" /></span></a>
	  <div class="header-right">
	   <form:form method="POST" action="logout.htm" modelAttribute="user">
	    <a>  <p style="font-size:100%; letter-spacing: 2px">Hello ${user.username}!</p></a>
			<form:hidden path="username" />
				<button type="submit" style = "border: 1pxl; background: white; color: #FC5A5A; font-size:250%">
				<i class="fas fa-sign-out-alt"></i></button>
		</form:form>
	  </div>
	</div>
	
	<div class="header" style = "background-color: #4CB8F3"> </div> <br>
	
	<div class="img" >
		<img src="balance.png" alt="balance" style="width:300px;height:250px">
		<div class="topcentered" style="color: #4F4E56">Cash Balance</div>
		<div class="centered" style="color: #4F4E56; font-size:350%">$ ${user.savings}</div>
	</div>
	
	 
<br>
	<div class="btn-group">
			<form:form method="POST" action="transaction.htm" modelAttribute="user">
				<form:hidden path="username" />
				<form:hidden path="token" />
						<button type="submit">
						<br><br><i class="fas fa-money-check-alt"  style = "font-size: 400%"></i> <br><br> Check Transaction<br><br></button>
				</form:form>
		
			<form:form method="POST" action="transfer.htm" modelAttribute="user">
				<form:hidden path="username" />
				<form:hidden path="token" />
						<button type="submit">
						<br><br><i class="fas fa-exchange-alt"  style = "font-size: 400%"></i> <br><br> Transfer<br><br></button>
				</form:form>
		
			<form:form method="POST" action="" modelAttribute="user">
				<form:hidden path="username" />
				<form:hidden path="token" />
						<button type="submit">
						<br><br><i class="fas fa-scroll" style = "font-size: 400%"></i> <br><br> Make a request<br><br> </button>
				</form:form>
	</div>
</div>

</body>