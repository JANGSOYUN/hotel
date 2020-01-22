<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
<h1>LOGIN</h1>
<form method="POST">
	<p><input name="userid" required value="${cookie.idsave.value }"></p>
	<p><input name="userpw" type="password" required></p>
	<p><input name="idsave" type="checkbox" ${empty cookie.idsave ? '' : 'checked' }>ID 저장
		<input name="auto" type="checkbox">자동 로그인</p>
	<p><input type="submit" value="로그인">
		<input type="button" value="회원가입" onclick="location.replace('mybatis/join')"></p>
</form>
</div>
</body>
</html>