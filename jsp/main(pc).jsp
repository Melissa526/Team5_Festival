<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="height=device-height, initial-scale=1">
<title>야!여기 어때!?</title>

<link rel= "stylesheet" type="text/css" href="css/main.css">

</head>
<body>

<%@include file="header.jsp"%>
		
		<div class="slideshow-container">

		<div class="mySlides fade">
 		 <img src="img/image1.PNG" style="width:100%;height: 600px">
		</div>

		<div class="mySlides fade">
		  <img src="img/image2.PNG" style="width:100%;height: 600px">
		</div>

		<div class="mySlides fade">
		  <img src="img/image3.PNG" style="width:100%;height: 600px">
			</div>

			<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			<a class="next" onclick="plusSlides(1)">&#10095;</a>

			</div>
			<br>		
	
		
		<div style="text-align:center">
 			 <span class="dot" onclick="currentSlide(1)"></span> 
 			 <span class="dot" onclick="currentSlide(2)"></span> 
 			 <span class="dot" onclick="currentSlide(3)"></span> 
		</div>
		
		 <!-- 캘린더 들어갈 div -->
		 <div style="position: absolute; left: 24%; top: 900px; width: 455px; height: 357px;">
		 	
		 	<div><%@include file="calendar.jsp"%></div>
		 </div>
		 
		 <!-- 축제 리스트 들어갈 div -->
		 <div style="position: absolute; top: 900px; left: 55%; width: 462.637px; height: 359px; border: 1px solid gray">
		 	<div>축제정보</div>
		 </div>		 

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
</script>

</body>
</html> 
