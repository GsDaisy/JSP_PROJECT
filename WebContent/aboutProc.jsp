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
	
	<div id="about1_3">
	<p>Lack of exercise is a major cause of chronic diseases</p><br><br><br>
	Chronic diseases are major killers in the modern era. Physical inactivity is a<br>primary cause of most chronic diseases.<br>And, physical activity/exercise is examined as primary prevention against<br>35 chronic conditions<br><br><br>
[Accelerated biological aging/premature death, low cardiorespiratory fitness<br>(VO2max), sarcopenia, metabolic syndrome, obesity, insulin resistance,<br>prediabetes, type 2 diabetes, non-alcoholic fatty liver disease, coronary heart<br>disease, peripheral artery disease, hypertension, stroke, congestive heart<br>failure, endothelial dysfunction, arterial dyslipidemia, hemostasis, deep vein<br>thrombosis, cognitive dysfunction, depression and anxiety, osteoporosis,<br>osteoarthritis, balance, bone fracture/falls, rheumatoid arthritis, colon cancer,<br>breast cancer, endometrial cancer, gestational diabetes, preeclampsia,<br>polycystic ovary syndrome, erectile dysfunction, pain, diverticulitis, constipation,<br>and gallbladder diseases].
<br><br><br><br>
 In summary, the body rapidly maladapts to insufficient physical activity,<br>
 and if continued, results in substantial decreases in both total and quality years of life. Taken together, conclusive evidence exists that physical inactivity is one important cause of<br>
 most chronic diseases. In addition, physical activity primarily prevents, or delays, chronic diseases, implying that chronic disease need not be an inevitable outcome during life.
	
	
	<br><br><br><br><br>
	<img src="img/about_over.gif" style="margin-left: -50px;" width="1100px"><br>
	Also, 89 percent of senior citizens have chronic diseases<br>such as high blood pressure and diabetes and arthritis, which are the causes of lack of exercise, and the cost of care for senior citizens is increasing.
<br><br>
This tells the elderly exercise has become a must-have problem.
<br><br>
<b>So we developed "Silver Now" to solve this problem.</b><br><br><br><br><br><br><br>
	</div>
	<div id="llast">
	From now on, let me introduce you to<br>
	the best app, "Silver Now."<br><br>
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