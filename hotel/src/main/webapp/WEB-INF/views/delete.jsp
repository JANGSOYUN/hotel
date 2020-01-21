<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE</title>
</head>
<body>
	<h1>DELETE</h1>
	<input type="button" value="HOME"
		onclick="location.replace('${pageContext.request.contextPath}')">
	<hr>
	<form method="post">
		<p><input name="userpw" type="password" required placeholder="비밀번호"></p>
		<input type="submit" value="회원탈퇴">
	</form>
</body>
</html>