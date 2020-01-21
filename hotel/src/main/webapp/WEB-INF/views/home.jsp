<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
h1 {
	text-align: center;
}

a {
	text-decoration: none;
	color: black;
}

ul {
	list-style: none;
	flex-direction: row;
}

li {
	display: inline-block;
	padding-left: 20px;
}

nav {
	width: 100%;
}
</style>
</head>
<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="cpath" value="${pageContext.request.contextPath }" scope="session"/>
	<h1>
		<a href="redirect:/">LOGO</a>
	</h1>
	<div align="right">
	<nav>
		<ul>
			<c:if test="${empty loginr }">
				<li><a href="login">login</a></li>
				<li><a href="join">join</a></li>
			</c:if>
			<c:if test="${!empty loginr }">
				<li><a href="logout">logout</a></li>
				<li><a href="mypage">mypage</a></li>
			</c:if>
		</ul>
		<hr>
	</nav>
	</div>
</body>
</html>
