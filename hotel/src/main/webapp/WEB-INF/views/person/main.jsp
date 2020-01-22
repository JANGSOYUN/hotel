<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로고</title>
</head>
<body>
	<div style="width: 1000px; margin: 20px auto;">
		<%@include file="/WEB-INF/views/home.jsp"%>

		<h3>메인</h3>
	</div>
	<div id="map" style="width: 500px; height: 400px;"></div>
	<div id="staticMap" style="width: 600px; height: 350px;"></div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff5d997dac7d7cf2095efd2e7bca3142"></script>

<script>
	//이미지 지도에 표시할 마커입니다
	//이미지 지도에 표시할 마커를 아래와 같이 배열로 넣어주면 여러개의 마커를 표시할 수 있습니다 
	var latitude = "";
	var longitude = "";
	
	function handleGeoSucces(position) {
	    latitude = position.coords.latitude;
	    longitude = position.coords.longitude;
	    console.log(latitude);
	    console.log(longitude);
	}
	
	function handleGeoError() {}
	
	function askForCoords() {
	    navigator.geolocation.getCurrentPosition(handleGeoSucces, handleGeoError);
	}
	
	
	askForCoords();
	

	var markers = [ {
		position : new kakao.maps.LatLng(latitude, longitude)
	}, {
		position : new kakao.maps.LatLng(latitude, longitude),
		text : 'test' // text 옵션을 설정하면 마커 위에 텍스트를 함께 표시할 수 있습니다     
	} ];

	var staticMapContainer = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
	staticMapOption = {
		center : new kakao.maps.LatLng(latitude, longitude), // 이미지 지도의 중심좌표
		level : 3, // 이미지 지도의 확대 레벨
		marker : markers
	// 이미지 지도에 표시할 마커 
	};

	// 이미지 지도를 생성합니다
	var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
	
	
	
	
</script>
</html>