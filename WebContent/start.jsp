<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Animated Material Design Button</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.1.2/css/material-design-iconic-font.min.css">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
<style>

.menu-button {
  -webkit-transition: 0.4s;
  -moz-transition: 0.4s;
  transition: 0.4s;
  position: relative;
  left: 540px;
  top: 200px;
  width: 60px;
  height: 60px;
  text-align: center;
  line-height: 60px;
  border-radius: 50%;
  background-color: #5B7EE0;
  color: #FFFFFF;
  font-size: 24px;
 
  cursor: pointer;
}
.menu-button:hover {
  background: #5B7EE0;
}
.menu-button a {
  -webkit-transition: 0.4s;
  transition: 0.4s;
  opacity: 0;
  width: 0px;
  height: 0px;
  text-align: center;
  line-height: 50px;
  border-radius: 50%;
  color: #FFFFFF;
  font-size: 24px;
  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26), 0 2px 10px 0 rgba(0, 0, 0, 0.22);
  cursor: pointer;
}
.menu-button a:hover {
  box-shadow: 0 5px 11px 0 rgba(0, 0, 0, 0.28), 0 4px 15px 0 rgba(0, 0, 0, 0.25);
}
.menu-button a:nth-child(2) {
  -webkit-transition-delay: 0.3s;
  -moz-transition-delay: 0.3s;
  transition-delay: 0.3s;
  position: absolute;
  right: 30px;
  bottom: 30px;
  width:100px;
  height:100px;
  background: #FCF8BD;
}
.menu-button a:nth-child(3) {
  -webkit-transition-delay: 0.4s;
  -moz-transition-delay: 0.4s;
  transition-delay: 0.4s;
  position: absolute;
  right: 30px;
  bottom: 40px;
    width:100px;
  height:100px;
  background: #FCF8BD;
}
.menu-button a:nth-child(4) {
  -webkit-transition-delay: 0.5s;
  -moz-transition-delay: 0.5s;
  transition-delay: 0.5s;
  position: absolute;
  right: 30px;
    width:100px;
  height:100px;
  bottom: 30px;
  background: #FCF8BD;
}

.menu-button a:nth-child(5) {
  -webkit-transition-delay: 0.5s;
  -moz-transition-delay: 0.5s;
  transition-delay: 0.5s;
  position: absolute;
	left: -60px;
  bottom: 130px;
  
 
}

.menu-button a:nth-child(6) {
  -webkit-transition-delay: 0.5s;
  -moz-transition-delay: 0.5s;
  transition-delay: 0.5s;
  position: absolute;
	left: -60px;
  bottom: 70px;
   background: #ec1c24;
}
.menu-button a:nth-child(7) {
  -webkit-transition-delay: 0.5s;
  -moz-transition-delay: 0.5s;
  transition-delay: 0.5s;
  position: absolute;
  right: 30px;
    width:100px;
  height:100px;
  bottom: 30px;
  background: #FCF8BD;
}
.menu-button:hover a {
  opacity: 1;
  width: 50px;
  height: 50px;
}
.menu-button:hover a:nth-child(2) {
  right: 80px;
  bottom: 0px;
  height:100px;
  width: 100px;
}
.menu-button:hover a:nth-child(2):hover {
  -webkit-transition-delay: 0s;
  -moz-transition-delay: 0s;
  transition-delay: 0s;
  background: #FCF8BD;
  height:100px;
  width: 100px;
}
.menu-button:hover a:nth-child(3) {
  right: 35px;
  bottom: 60px;
    width:100px;
  height:100px;
}
.menu-button:hover a:nth-child(3):hover {
  -webkit-transition-delay: 0s;
  -moz-transition-delay: 0s;
  transition-delay: 0s;
    width:100px;
  height:100px;
  background: #FCF8BD;
}
.menu-button:hover a:nth-child(4) {
  right: -40px;
      width:100px;
  height:100px;
  bottom: 80px;
}
.menu-button:hover a:nth-child(4):hover {
  -webkit-transition-delay: 0s;
  -moz-transition-delay: 0s;
  transition-delay: 0s;
    width:100px;
  height:100px;
}

.menu-button:hover a:nth-child(5) {
  right: 50px;
  bottom: -300px;
}
.menu-button:hover a:nth-child(5):hover {
  -webkit-transition-delay: 0s;
  -moz-transition-delay: 0s;
  transition-delay: 0s;
  /* background: #FCF8BD; */
}
.menu-button:hover a:nth-child(6) {
  right: 50px;
  bottom: -240px;
}
.menu-button:hover a:nth-child(6):hover {
  -webkit-transition-delay: 0s;
  -moz-transition-delay: 0s;
  transition-delay: 0s;
  background: #ec1c24;
}

.menu-button:hover a:nth-child(7) {
  right: -120px;
      width:100px;
  height:100px;
  bottom: 80px;
}
.menu-button:hover a:nth-child(7):hover {
  -webkit-transition-delay: 0s;
  -moz-transition-delay: 0s;
  transition-delay: 0s;
    width:100px;
  height:100px;
}

#start{
color: #5B7EE0;
        font-family: 'PT Sans', sans-serif;
        font-size: 30px;
        padding:0px;
 		margin-top:50px;
 		margin-left:200px;
        letter-spacing: 1.5px;
}
</style>
    
    
    
  </head>

<body style="margin:0px; padding: 0px;">

<div id="start">Hi, we're "ANDRYUID"<br>who developed "SILVER NOW."</div>

<!--<div class="menu-button"><i class="zmdi zmdi-share"></i>
	<a href="#"><i class="zmdi zmdi-twitter"></i></a>
	<a href="#"><i class="zmdi zmdi-google-plus"></i></a>
	<a href="#"><i class="zmdi zmdi-codepen"></i></a>
</div>
    -->

    <div class="menu-button" style="/* left: -500px; top: -500px;position: relative; */float: left"><img src="img/1.PNG" width="200px">
	<a href="main.jsp"><img src="img/start1.gif" width="100px"></a>
	<a href="about.jsp"><img src="img/start2.gif" width="100px"></a>
	<a href="real.jsp"><img src="img/start3.gif" width="100px"></a>
	<a href="https://github.com/Se-Yeong712/Slivernow"><img src="img/github.png" width="50px"></a>
	<a href="mailto:s2017s12@e-mirim.hs.kr"><i class="zmdi zmdi-google-plus"></i></a>
	<a href="direct.jsp"><img src="img/start4.gif" width="100px"></a>
	</div>

    
    
  </body>
</html>