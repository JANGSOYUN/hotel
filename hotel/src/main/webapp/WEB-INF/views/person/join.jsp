<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function check(){
		var userid = $("#userid").val();
		if(userid == ''){
			$("#idmsg").text('아이디를 입력하세요');
			$("#idmsg").css("color", "red");
			$("#userid").focus();
			return;
		}
		
		$.ajax({
			url: "${cpath}/check",
			method: "POST",
			data: {userid: userid},
			dataType: "text",
			success: function(data){
				$("#idmsg").text(data);
				if(data == '사용 가능한 ID입니다'){
					$("#idmsg").css("color", "blue");
				}else{
					$("#idmsg").css("color", "red");
					$("#userid").focus();
				}
			},
			error: function(data){
				$("#idmsg").text('서버 통신 실패');
			}
		})
	}
</script>
</head>
<body>
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>
<h1>JOIN</h1>
<form method="post">
	<p><input id="userid" name="userid" placeholder="아이디" required onblur="check();">
		<span id="idmsg"></span></p>
	<p><input name="userpw" type="password" placeholder="비밀번호" required></p>
	<p><input name="confirmpw" type="password" placeholder="비밀번호 확인" required></p>
	<p><input name="username" placeholder="이름"></p>
	<p><input name="useremail" placeholder="이메일"></p>
	<p><input name="userphone" placeholder="전화번호"></p>
	<p><input id="submit" type="submit" value="회원가입"></p>
	<span id="msg"></span>
</form>
</div>
</body>
</html>