<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
<h1>PW 찾기</h1>
	<form method="post">
		<p>ID : <input type="text" name="userid" required></p>
		<p>이름 : <input type="text" name="username" required></p>
		<p>이메일 : <input type="text" name="useremail" required></p>
		<p><input type="submit" value="PW찾기"></p>
	</form>
</div>
</body>
</html>