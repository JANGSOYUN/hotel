<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<meta charset="UTF-8">

<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<title>로고</title>


<style>

input[type="text"]{
	width:100%;
	height:50px;
	border:2px solid #aaa;
	border-radius:4px;
	margin:8px 0;
	outline:none;
	padding:8px;
	box-sizing: border-box;
	transition:.3s; 
}
input[type=text]:focus{
	border-color: dodgerBlue;
	box-shadow:0 0 8px 0 dodgerBlue;
}

select{
	width:60%;
	height:50px;
	border:2px solid #aaa;
	border-radius:4px;
	margin:8px 0;
	outline:none;
	box-sizing: border-box;
	transition:.3s; 
}


select:focus{
	border-color: dodgerBlue;
	box-shadow:0 0 8px 0 dodgerBlue;
}

div{
    margin: 0 auto;
}

.inputWithIcon input[type=text]{
	padding-left:40px;
}
.inputWithIcon{
	position: relative;
}
.inputWithIcon i{
	position:absolute;
	left:0;
	top:16px;
	padding:9px 8px;
	color:#aaa;
	transition:.3s;
}
.inputWithIcon input[type=text]:focus + i{
	color:dodgerBlue;
}

a:link { color: black; text-decoration: none;}
a:visited { color: black; text-decoration: none;}
a:hover { color: black; text-decoration: underline;}

input[type="submit"]{
  background:dodgerBlue;
  color:#fff;
  border:none;
  position:relative;
  height:50px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
input[type="submit"]:hover{
  background:#fff;
  color:dodgerBlue;
}
input[type="submit"]:before,input[type="submit"]:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: dodgerBlue;
  transition:400ms ease all;
}
input[type="submit"]:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
input[type="submit"]:hover:before,input[type="submit"]:hover:after{
  width:100%;
  transition:800ms ease all;
}
.ui-datepicker { width: 17em; padding: .2em .2em 0; display: none; font-size: 12px}
.ui-datepicker select.ui-datepicker-year { width: 45%; height: 30px; color: black; font-size: 12px}
.ui-datepicker select.ui-datepicker-month { width: 40%; height: 30px; color: black; font-size: 12px}



</style>



<script type="text/javascript">
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#startDate" ).datepicker({
            	  changeMonth: true, 
                  changeYear: true,
                  nextText: '다음 달',
                  prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy/mm/dd",
                 maxDate: 730,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     $("#endDate").datepicker( "option", "minDate", selectedDate );
                     $('#datepicker').datepicker('setDate', 'today');
                 }    

 
            });
            $( "#endDate" ).datepicker({
            	  changeMonth: true, 
                  changeYear: true,
                  nextText: '다음 달',
                  prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy/mm/dd",
                 maxDate: 730,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     $("#startDate").datepicker( "option", "maxDate", selectedDate );
                 }    
 
            });    
    });
</script>



</head>
<body>
<<<<<<< HEAD
<div style="width: 1000px; margin: 20px auto;">
<%@include file="/WEB-INF/views/home.jsp" %>

<h3>메인</h3>
</div>
=======
	<div style="width: 1000px; margin: 20px auto;">
		<%@include file="/WEB-INF/views/home.jsp"%>
	</div>
	
	<form>
		<div class="inputWithIcon" style="width:400px">
			<input type="text" name="search" placeholder="도시, 지역, 숙소명, 등으로 검색">
			<i class="fa fa-search fa-lg fa-fw" aria-hidden="true"></i>
		</div>
	

		<div style="width:400px;">
			<div class="inputWithIcon" style="width:49%; float:left;">
				<!-- 날짜 지정 select 들어갈 곳 -->
				<input type="text" id="startDate" style="width:100%" placeholder="출발일">
				<i class="fa fa-calendar fa-lg fa-fw" aria-hidden="true"></i>
			</div>
				
			<div class="inputWithIcon" style="width:49%;  float:left; margin-left: 7px">
				<input type="text" id="endDate" style="width:100%" placeholder="도착일">
				<i class="fa fa-calendar fa-lg fa-fw" aria-hidden="true"></i>
			</div>
		</div>
		
		
		<div style="width:400px">
		<!-- 사람 명수 들어갈 곳 -->
			<select>
				<option value="" selected disabled hidden>인원</option>
				<option value="one">1명</option>
				<option value="two">2명</option>
				<option value="three">3명</option>
				<option value="four">4명</option>
			</select>
		
			<input type="submit" name="trans" value="조회">
		</div>
		
		
		
	
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
>>>>>>> branch 'master' of https://github.com/JANGSOYUN/hotel
</body>
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/JANGSOYUN/hotel
</html>