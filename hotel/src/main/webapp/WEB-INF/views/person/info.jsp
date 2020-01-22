<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INFO</title>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
	<%@include file="/WEB-INF/views/home.jsp" %>
	<h1>INFO</h1>
	
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
		<tr>
			<td>EMAIL</td>
			<td>${sessionScope.login.useremail }</td>
		</tr>
		<tr>
			<td>PHONE</td>
			<td>${sessionScope.login.userphone }</td>
		</tr>
	</table>
	<p><input type="button" value="정보 수정" onclick="location.replace('mypage')"></p>
</div>
</body>
</html>