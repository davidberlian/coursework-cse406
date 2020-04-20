<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Balance</title>
</head>
<body>
	<span style="color: green">${user.username}</span>
	<span style="color: black">your account balance is ${user.savings}</span>
	
	
		<form:form method="POST" action="doLogin.htm" modelAttribute="user">
			<table>
				<tr>
						<form:hidden path="username" />
				</tr>
				<tr>
				</tr>
						<form:hidden path="token" />
				<tr>
					<td colspan="3"><input type="submit" value="back" /></td>
				</tr>
			</table>
		</form:form>
</body>
</html>