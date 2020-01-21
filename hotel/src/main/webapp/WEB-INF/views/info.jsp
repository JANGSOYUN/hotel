<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INFO</title>
</head>
<body>
<h1>INFO</h1>
<input type="button" value="HOME" onclick="location.replace('${pageContext.request.contextPath}')">
<hr>

<table border="1">
	<tr>
		<td>ID</td>
		<td>${sessionScope.login.userid }</td>
	</tr>
	<tr>
		<td>PW</td>
		<td>****</td>
	</tr>
	<tr>
		<td>NAME</td>
		<td>${sessionScope.login.username }</td>
	</tr>
</table>
<input type="button" value="정보 수정" onclick="location.replace('mypage')">
</body>
</html>