<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<title>EE-Bank: Sign into Online Banking</title>
<head>
<link href='https://fonts.googleapis.com/css?family=Cabin' rel='stylesheet'>
<style>
form {border: 3px solid #f1f1f1;}
body {font-family: 'Cabin'}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.registerbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #4CAF50;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 0%;
}

.container {
  padding: 16px;
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
</style>
</head>



<body>
	
<h2 style="font-size:200%;"> E E - B A N K 
<span><img src="money.png"style="width:60px;height:60px" /></span>  </h2> 

<div class="container" style="background-color:#f1f1f1">
		<p style="font-size:200%;"> Sign Into Online Banking</p>
</div>	

  
  <form:form method="POST" action="doLogin.htm" modelAttribute="user">
  <div class="container">
		<center>
			<table>
				<tr>
					<td>UserName :</td>
					<td><form:input path="username" /></td>
					<td><form:errors path="username" cssClass="error" /></td>
				</tr>
	
				<tr>
					<td>Password :</td>
					<td><form:password path="password" /></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>

				<tr>
					<td colspan="3"> <button type="submit">L o g i n</button> </td>	
			</table>
		</center>
			
			<label>
     			 <input type="checkbox" checked="checked" name="remember"> Save Username
			</label>	
 </div>
 
 <div class="container" style="background-color:#f1f1f1">
 <p> New User? 
 <button type="submit" class="registerbtn" style ="background-color: red">Create an account</button>
   			 <span class="psw">Forgot <a href="#">password?</a></span></p>
 </div>
 </form:form>	
		
	
</body>
</html>