<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
<style> 
div#move {
  width: 8px;
  height: 8px;
  position: relative;
  animation-name: example;
  animation-duration: 1s;
  animation-iteration-count: infinite;
  float: left;
    margin: 9px 9px;

}
#logo{
	/*font:"Avenir Light" 21px;*/
    font-size: 21px;
    font-weight: bold;
	color:#5B7EE0;
    float: left;
    text-align: center;
    margin: 14px 20px 0px 5px;

}

div#move2 {
  width: 8px;
  height: 8px;
  position: absolute;
  right:200px;
  animation-name: example;
  animation-duration: 0.6s;
  animation-iteration-count: infinite;
  float: left;
    margin: 0px 20px 0px 5px;

}
#logo2{
	position:absolute;
	left:200px;
    font-size: 21px;
    font-weight: bold;
	color: #4E7ADD;
    float: left;
    text-align: center;
    margin: 14px 20px 0px 5px;

}

/* Standard syntax */
@keyframes example {
  0%   {background-color:#5B7EE0; left:0px; top:0px;}
  25%  {background-color:#5B7EE0; left:144px; top:0px;}
  50%  {background-color:#5B7EE0; left:144px; top:39px;}
  75%  {background-color:#5B7EE0; left:0px; top:39px;}
  100% {background-color:#5B7EE0; left:0px; top:0px;}
}
    

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;


}
ul li a{text-decoration:none; display:block;line-height: 30px;text-align:center;background-color: #fffde6;} 

li a {
    font-size: 20px;
  display: block;
  color: #516371;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  color:#5B7EE0;
}
    
.one > li{float:left;}   /*1단 메뉴를 일렬로 늘어놓기 */
.one ul{display:none;}  /*2단, 3단 메뉴를 숨기기 */
.one li:hover > ul {display:block;}  /*주 메뉴에 마우스 오버했을 때 부 메뉴 드러내가 */





.two{position:absolute;left:250px; top: 29px;}  /*2단 메뉴 절대 위치*/
.three{position:absolute;left:80px; top: 60px; }  /*3단 메뉴 절대 위치*/




.two2{position:absolute;left:700px; top: 29px;}  /*2단 메뉴 절대 위치*/
.three2{position:absolute;left:750px; top: 90px; }  /*3단 메뉴 절대 위치*/
.four2{position:absolute;left:780px;top:100px;}

#navall{
position:relative;
}
#navall:before, #navall:after{content: " "; display: block; clear: both;}
#navall:after{clear: both;} 
</style>
</head>
<body style="margin-top: 50px; margin-left: 200px;margin-right: 200px;font-family: 'PT Sans', sans-serif;">
<div id="navall">

<div id="move2"></div>
<div id="logo2"></div>

<div id="move"></div>
<div id="logo">Silver Now</div>

<ul class="one">
    <li><a href="main.jsp">HOME</a></li>
    
    <li class="here"><a href="about.jsp">Exercise in the Elderly?</a>
    	<ul class="two">
    		<li><a href="#">sub1</a></li>
    		<li><a href="#">sub2</a></li>
    		<li><a href="#">sub3</a>
	    		<ul class="three">
		    		<li><a href="#">sub1</a></li>
		    		<li><a href="#">sub2</a></li>
		    		<li><a href="#">sub3</a>
		    			    <ul class="four2">
	    						<li><a href="#">Wearable Band</a></li>
	    						<li><a href="#">Movement</a></li>
	    					</ul>
		    		</li>
	    		</ul>
    		</li>
    	</ul>
    </li>
    
    <li><a href="real.jsp">About SILVER NOW</a></li>
    

    <li class="please"><a href="direct.jsp">Direction</a>
    	<ul class="two2">
    		<li><a href="#">Scenario</a>
    		    	<ul class="three2">
	    				<li><a href="#">Start</a></li>
	    				<li><a href="#">Exercise</a>
	    					<ul class="four2">
	    						<li><a href="#">Wearable Band</a></li>
	    						<li><a href="#">Movement</a></li>
	    					</ul>
	    				</li>
    				<li><a href="#">Alarm to Family</a></li>
    				</ul>
    		</li>
    		<li><a href="#">Thank you</a></li>
    	</ul>
    </li>
</ul>

</div>
</body>
</html>
