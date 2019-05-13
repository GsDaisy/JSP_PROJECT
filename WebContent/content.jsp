<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body{
	margin:0px;
	padding: 0px;
	background-image: url('jsp_main.gif');
	background-attachment: fixed;
	}
	

	
	#yellow{
		background-color: #FCF8BD;
		padding-left: 300px;
	    padding-top:100px;
    	padding-bottom: 50px;
	}
	
	#people1{
		/* float: left; */
		background-color: #FCF8BD;
	}
	#ani1{
		color:#5B7EE0;
		font-size: 35px;
		font-style: italic bold;
	}
	
	#contentall{
		margin-left: -200px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 바를 제외하고 진짜 내용이 담기는 곳 -->
<div id="contentall">
<!-- <img src="jsp_main.gif" style="padding:0px; margin: 0px;"> -->
<div style="height: 655px;"></div>

<!-- <div style="position: absolute; width: 1280px; height:1300px; background-color: #FFFFFF;" ></div> -->

<div id="yellow" style="width: 1280px;height: 1300px; margin-top: -2px;">
	<img src="1.jpg" width="300px" height="300px" style="float:left;padding-right: 25px"><div id="people1" >s2017s16@e-mirim.hs.kr<br><br><br><br>
		<div id="ani1">LEE<br>JOO HYUN</div><br><br><br><br>
		She is in third grade with New Media<br>Solution Department at Mirim Girl's<br>Information Science High School.
	</div>
	<br><br><br>
	<jsp:include page="map.jsp" flush="false"></jsp:include>
	
	
</div>
</div>


</body>
</html>