<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%--  <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%> --%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="w3-cell-row">
<div class="w3-cell w3-black">
  <img src="logonew.jpg" alt="logo" >
</div>
<div class="w3-cell w3-black ">
<img src="logo.jpg" alt="logo" >
</div>

<div class="w3-container  w3-cell ">
  <h4>advertisement</h4>
</div>
</div> -->

<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inside Edge Live Cricket Score and News</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta http-equiv="refresh" content="10" >

</head>
<body background="bck.png">

<div class="w3-cell-row">
<div class="w3-cell w3-black">
  <img src="logonew.jpg" alt="logo" >
</div>
<div class="w3-cell w3-black ">
<img src="logo.jpg" alt="logo" >
</div>

<div class="w3-black w3-cell ">
</div>
</div> 
<div class="w3-bar w3-black">
  <a href="#" class="w3-bar-item w3-button">Home</a>
  <a href="#" class="w3-bar-item w3-button">Fixtures</a>
  <a href="#" class="w3-bar-item w3-button">Teams</a>
  
</div>

  <div class="w3-container w3-white ">
   <div class="w3-panel w3-border-top ">
   <div class="w3-container w3-black">
    <p> 
   LIVE SCORES 
   <br>
   <table>
    <c:forEach items="${users}" var="users">
        <tr>
            <td>${users.getTeamA()}</td>
            <td>${users.getTeamB()}</td>
            
            <td>${users.getScoreA()}</td>
            <td>${users.getScoreB()}</td>
            
            <br>
        </tr>
    </c:forEach>
</table>
    
    </p>
      
     
  </div>
  </div>
  </div><br>
   
  <div class="w3-panel w3-padding-64"> 
  <div class="w3-panel w3-border-top ">
  <div class="w3-container w3-black ">

    <p>
    LIVE NEWS
    </p>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.fa {
  padding: 10px;
  font-size: 20px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
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
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}


/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
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
  .prev, .next,.text {font-size: 15px}
}
</style>
</head>
<body>

<div class="slideshow-container">

<div class="mySlides fade">

  <div style="text-align:center">
<%-- <%=resultSet.getString("id") %> --%>
<c:forEach items="${news}" var="news">
        <tr>
            
           
            <a href="https://www.google.com/search?q=${news.getTitle()}" target="_blank"> <c:if test="${news.getId()==0}">${news.getTitle()}</c:if></a>
  
   
   
           
            
            
        </tr>
    </c:forEach>
</div>
</div>
<div class="mySlides fade">

  <div style="text-align:center">
<c:forEach items="${news}" var="news">
        <tr>
            
           <a href="https://www.google.com/search?q=${news.getTitle()}" target="_blank"> <c:if test="${news.getId()==1}">${news.getTitle()}</c:if></a>
  
   
   
           
            
            
        </tr>
    </c:forEach>
</div>
</div>
<div class="mySlides fade">

  <div style="text-align:center">
<%--   <%=resultSet.getString("password") %> --%>
<c:forEach items="${news}" var="news">
        <tr>
            
            <a href="https://www.google.com/search?q=${news.getTitle()}" target="_blank"> <c:if test="${news.getId()==2}">${news.getTitle()}</c:if></a>
  
   
   
           
            
            
        </tr>
    </c:forEach>
</div>
</div>
<div class="mySlides fade">

  <div style="text-align:center">
<%--   <%=resultSet.getString("name") %> --%>
<c:forEach items="${news}" var="news">
        <tr>
            
           <a href="https://www.google.com/search?q=${news.getTitle()}" target="_blank"> <c:if test="${news.getId()==3}">${news.getTitle()}</c:if></a>
  
   
   
           
            
            
        </tr>
    </c:forEach>
</div>
</div>

<div class="mySlides fade">

  <div style="text-align:center">
<%--   <%=resultSet.getString("name") %> --%>
<c:forEach items="${news}" var="news">
        <tr>
            
           <a href="https://www.google.com/search?q=${news.getTitle()}" target="_blank"> <c:if test="${news.getId()==4}">${news.getTitle()}</c:if></a>
  
   
   
           
            
            
        </tr>
    </c:forEach>
</div>
</div>
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
   <span class="dot" onclick="currentSlide(5)"></span> 
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
  setTimeout(showSlides, 50); 
}
</script>

</body>
</html> 


<%-- <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> --%>
    
  </div>
  </div>
  </div>
  
  
 
 <div class="w3-cell-row">
<div class="w3-panel w3-border-top w3-border-bottom">
  <div class="w3-container w3-cell">
    <p>PLAYER SEARCH</p>
  <form>
  <input type="text" name="Player name" />
<button type="submit"><i class="fa fa-search"></i></button>
  </form>
  
  <div class="w3-panel w3-padding-64"> </div>
</div>
  <div class="w3-container  w3-cell">
  <h4>SOCIAL MEDIA</h4>
 


 <a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-linkedin"></a>
  
  <div class="w3-panel w3-padding-64"> </div>
  </div>

</div>
  </div>

  <!-- <div class="w3-panel w3-padding-64"> </div>
  <div class="w3-container w3-white ">
   <div class="w3-container w3-black">
   <div class="w3-panel w3-border-top w3-border-bottom">
    <p>
   FOOTER
    
    
    
    
    </p>
  </div>
  </div>
  </div> -->
  
   <!--  <button onclick="topFunction()" id="myBtn" title="Go to top" style="float: right;">Top</button>  -->
    
    <style>
* {
    box-sizing: border-box;
}

.row {
    display: flex;
}

/* Create three equal columns that sits next to each other */
.column {
    flex: 33.33%;
    padding: 5px;
}
</style>
 
<div class="row">
  <div class="column">
  <a href="https://www.netflix.com">
    <img src="NetFlix (1).jpg"  style="width:100%">
    </a>
  </div>
  <div class="column">
  <a href="https://www.swiggy.com/">
    <img src="swiggy.png"  style="width:100%">
    </a>
  </div>
  <div class="column">
  <a href="https://paytm.com/">
    <img src="paytm-gold.png"  style="width:100%">
   </a>
    </div>
  </div>

 
  <div class="w3-panel w3-padding-64"> </div>
  <div class="w3-container w3-white ">
   <div class="w3-container w3-black">
   <div class="w3-panel w3-border-top w3-border-bottom">
    <p>
   <div class="w3-cell-row">
     <div class="w3-cell"> <a href="feedback.jsp"><p style="text-align:left;">Send Feedback</p></a> </div>
     <div class="w3-cell"> <a href="terms.jsp"><p style="text-align:center;">Terms </p></a> </div>
 <div class="w3-cell">  <a href="privacy.jsp"><p style="text-align:right;">Privacy</p></a> </div>
  </div>
  </div>
  </div>
  </div>
    
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}


</script>
</body>
</html>
