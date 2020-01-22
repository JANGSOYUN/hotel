<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
</head>
<body>
<<<<<<< HEAD
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
	<tr>
		<td>EMAIL</td>
		<td><input name="useremail" value="${sessionScope.login.useremail }" required></td>
	</tr>
	<tr>
		<td>PHONE</td>
		<td><input name="userphone" value="${sessionScope.login.userphone }" required></td>
	</tr>
</table>
<input type="hidden" name="userid" value="${sessionScope.login.userid }">
<input type="hidden" name="username" value="${sessionScope.login.username }">
<input type="submit" value="정보 수정">
<input type="button" value="회원탈퇴" onclick="location.replace('delete')">
</form>
=======
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
			<td><input name="userpw" type="password" required></td>
		</tr>
		<tr>
			<td>NAME</td>
			<td>${sessionScope.login.username }</td>
		</tr>
		<tr>
			<td>EMAIL</td>
			<td><input name="useremail" value="${sessionScope.login.useremail }" required></td>
		</tr>
		<tr>
			<td>PHONE</td>
			<td><input name="userphone" value="${sessionScope.login.userphone }" required></td>
		</tr>
	</table>
	<input type="hidden" name="userid" value="${sessionScope.login.userid }">
	<input type="hidden" name="username" value="${sessionScope.login.username }">
<%-- 	<input type="hidden" name="useremail" value="${sessionScope.login.useremail }"> --%>
<%-- 	<input type="hidden" name="userphone" value="${sessionScope.login.userphone }"> --%>
	
	<p><input type="submit" value="정보 수정">
	<input type="button" value="회원탈퇴" onclick="location.replace('delete')"></p>
	</form>
</div>
>>>>>>> branch 'master' of https://github.com/JANGSOYUN/hotel
</body>
</html>