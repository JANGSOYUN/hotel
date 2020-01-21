<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
</head>
<body>
<h1>MYPAGE</h1>
<input type="button" value="HOME" onclick="location.replace('${pageContext.request.contextPath}')">
<hr>
<form method="post">
<table border="1">
	<tr>
		<td>ID</td>
		<td>${sessionScope.login.userid }</td>
	</tr>
	<tr>
		<td>PW</td>
		<td><input name="userpw" type="password" required></td>
	</tr>
	<tr>
		<td>NAME</td>
		<td>${sessionScope.login.username }</td>
	</tr>
</table>
<input type="hidden" name="userid" value="${sessionScope.login.userid }">
<input type="hidden" name="username" value="${sessionScope.login.username }">
<input type="submit" value="정보 수정">
<input type="button" value="회원탈퇴" onclick="location.replace('delete')">
</form>
</body>
</html>