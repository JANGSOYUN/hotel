<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
	<h1>MYPAGE</h1>
	<form method="post">
	<table border="1">
		<tr>
			<td>ID</td>
			<td>${sessionScope.login.userid }</td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input name="userpw" type="password" value="${sessionScope.login.userpw }"></td>
		</tr>
		<tr>
			<td>NAME</td>
			<td>${sessionScope.login.username }</td>
		</tr>
		<tr>
			<td>EMAIL</td>
			<td><input name="useremail" type="text" value="${sessionScope.login.useremail }"></td>
		</tr>
		<tr>
			<td>PHONE</td>
			<td><input name="userphone" type="text" value="${sessionScope.login.userphone }"></td>
		</tr>
	</table>
	
	<input type="hidden" name="userid" value="${sessionScope.login.userid }">
	<input type="hidden" name="username" value="${sessionScope.login.username }">

	<p><input type="submit" value="정보 수정">
	<input type="button" value="회원탈퇴" onclick="location.replace('delete')"></p>
	</form>
</div>
</body>
</html>