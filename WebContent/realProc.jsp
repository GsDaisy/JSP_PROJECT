<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
<script>

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
window.onload=showSlides;

</script>
    
    
<style> 


.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1280px;
  position: relative;
  margin: 0px;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;

}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {

}




.dot {
  cursor: pointer;
  height: 10px;
  width: 10px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

 
</style>
</head>
<body>
 
<div class="mySlides fade">

  <img src="img/Untitled-2.gif" style="width:100%">



<div class="mySlides fade">
  <img src="img/Untitled-2-2.gif" style="width:100%">
</div>
<div class="mySlides fade">
  <img src="img/Untitled-3.gif" style="width:100%">

</div>
<div class="mySlides fade">
  <img src="img/Untitled-4.gif" style="width:100%">

</div>
<div class="mySlides fade">
  <img src="img/Untitled-5.gif" style="width:100%">

</div>

<a class="prev" onclick="plusSlides(-1)"><img alt="" src="img/plus.gif"></a>
<a class="next" onclick="plusSlides(1)"><img alt="" src="img/minus.gif"></a>
</div>

<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
    <span class="dot" onclick="currentSlide(4)"></span> 
      <span class="dot" onclick="currentSlide(5)"></span> 
</div>
 
 
 
</body>
</html> -->


<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}

.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  margin-left:-110px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border:none;
  background-color: rgba(255,255,255,0.0);
}

.next {
  right: 0;

}
</style>
<body>


<div class="w3-content w3-display-container" style="margin-left: -60px;position: static;margin-top: 100px;margin-bottom: 500px;">
  <img class="mySlides" src="img/Untitled-2.gif" style="width:1000px">
  <img class="mySlides" src="img/Untitled-2-2.gif" style="width:1000px">
  <img class="mySlides" src="img/Untitled-3.gif" style="width:1000px">
  <img class="mySlides" src="img/Untitled-4.gif" style="width:1000px">
  <img class="mySlides" src="img/Untitled-5.gif" style="width:1000px">

  <button class="prev" onclick="plusDivs(-1)"><img alt="" src="img/plus.gif" width="60px"></button>
  <button class="next" onclick="plusDivs(1)" ><img alt="" src="img/minus.gif" width="60px"></button>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

</body>
</html>

