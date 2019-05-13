<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exercise in the Elderly?</title>
<style>
	#about1_1, #about_last{
		float: left;
		font-size: 28px;
		padding-left: 30px;
	}
	p{
		font-size: 35px;
		color: #5B7EE0;
	}
	
		body{
        font-family: 'PT Sans', sans-serif;
        font-size: 15px;
        color: #8293A1;
        padding:0px;
        margin:0px;
        letter-spacing: 1.5px;
        background: #FCF8BD;
	}
	
	#about1_3{
		display: inline-block;
		font-size: 28px;
		float: none;

	}
	#llast{
		color: #90ddf7;
		text-shadow: 4px 4px rgba(255,255,255,0.5), 6px 6px rgba(82,93,101,0.1);
		font-size: 28px;
	}
.btn {
  background: none;
  border: 2px solid;
  border-bottom-width: 4px;
  font: inherit;
  letter-spacing: inherit;
  margin: 1em;
  padding: 1em 2em;
  text-transform: inherit;
  transition: color 1s;
}
	
.btn-3 {
  color: #90ddf7;
  font-size: 20px;
}
.btn-3:hover {
  -webkit-animation: sawtooth 0.35s infinite linear;
          animation: sawtooth 0.35s infinite linear;

  background: linear-gradient(45deg, #FAF17C 0.5em, transparent 0.5em) 0 0/1em 1em, linear-gradient(-45deg, #def357 0.5em, transparent 0.5em) 0 0/1em 1em,white;
  color: #90ddf7;
}

@-webkit-keyframes sawtooth {
  100% {
    background-position: 1em 0;
  }
}

@keyframes sawtooth {
  100% {
    background-position: 1em 0;
  }
}
</style>


<script language="JavaScript1.1">

var NS=(navigator.appName=='Netscape')?1:0;

    if (NS) document.captureEvents(Event.DBLCLICK);
        document.ondblclick = search;

function search() {
    SearchPage = "http://search.naver.com/search.naver";
    if (NS) {
        txt = document.getSelection();
    } else {
        txt = document.selection.createRange();
        txt = txt.text
    }
    if (!NS) document.selection.empty();
    if (txt > '') {
        OpenUrl = SearchPage+'?where=nexearch&query='+txt;
        window.open(OpenUrl,"NaverSearch");
    }
}

</script>

</head>
<body>
<br><br><br><br><br><br><br>
<p>What about our old life?</p><br><br>
<br>

<div>
	<img src="about1.png" width="426px" height="231px" style="float: left;">
	<div id="about1_1">
	According to a study by the Institute<br>for Health and Social Affairs,
	they<br>spend 10 years of their old lives curing<br>diseases.<br><br> 
	Assuming 30 years of old life, you can<br>see that 33% of 
	all old life is spent<br>curing diseases.
	<br><br><br>
	</div>
	<br><br><br>
	</div>
	<div id="about1_3">
	So why should 33 percent of old life be spent on illness?</div>
	<br><br><br><br><br><br>
	
	
	
	<div id="llast">
	From now on, let me introduce you to<br>
	the best app, "Silver Now."
	</div>
	
	<div>
	<button class="btn btn-3" style="margin:0px;margin-top: 20px;margin-bottom: 100px;" onclick="location.href='#'">Let's Go</button>
	</div>
	
	
	
	
	
<!-- 	How many minutes do you exercise a day?<br><br>
	10분 이하 : <input type="radio" name="time" value="one"><br>
	30분 이하 : <input type="radio" name="time" value="two"><br>
	1시간 이하 : <input type="radio" name="time" value="three"><br>
	1시간 초과 : <input type="radio" name="time" value="four"><br>
	 -->
	
	
	

</body>
</html>