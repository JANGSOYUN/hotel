<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
	<h1>DELETE</h1>
	<form method="post">
		<p><input name="userpw" type="password" required placeholder="비밀번호"></p>
		<input type="submit" value="회원탈퇴">
	</form>
</div>
</body>
</html>