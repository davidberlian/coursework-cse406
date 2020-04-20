<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title></title>
</head>
<body>

	<center>
		<h1>
			<span style="color: lightblue">Hi Welcome to bank bank</span>
		</h1>
		<h1>
			<span style="color: green">${user.username}</span>
		</h1>
		<h1>
			<span style="color: lightblue"></span>
		</h1>

		<form:form method="POST" action="saving.htm" commandName="user">
			<table>
				<tr>
						<form:hidden path="username" />
				</tr>
				<tr>
				</tr>
						<form:hidden path="password" />
				<tr>
					<td colspan="3"><input type="submit" value="check savings" /></td>
				</tr>
			</table>
		</form:form>
	</center>

</body>