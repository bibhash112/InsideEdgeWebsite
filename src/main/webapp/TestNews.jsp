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
</div>


  <div class="w3-container w3-white ">
   <div class="w3-panel w3-border-top ">
   <div class="w3-container w3-black">
    <p> 
   LIVE SCORES 
    
    
    </p>
     
  </div>
  </div>
  </div>
  <div class="w3-panel w3-padding-64"> 
  <div class="w3-panel w3-border-top ">
  <div class="w3-container w3-black ">

    <p>
    LIVE NEWS
    </p>
   <%--  <%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String dbName = "test";
String userId = "root";
String password = "admin";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!-- <h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>user_id</b></td>
<td><b>Password</b></td>
<td><b>Name</b></td>
<td><b>Email</b></td>
</tr>
-->
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM record";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%> --%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
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
  .prev, .next,.text {font-size: 11px}
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
            
            <c:if test="${news.getId()==0}">${news.getTitle()}</c:if>
  
   
   
           
            
            
        </tr>
    </c:forEach>
</div>
</div>
<div class="mySlides fade">

  <div style="text-align:center">
<c:forEach items="${news}" var="news">
        <tr>
            
            <c:if test="${news.getId()==1}">${news.getTitle()}</c:if>
  
   
   
           
            
            
        </tr>
    </c:forEach>
</div>
</div>
<div class="mySlides fade">

  <div style="text-align:center">
<%--   <%=resultSet.getString("password") %> --%>
<c:forEach items="${news}" var="news">
        <tr>
            
            <c:if test="${news.getId()==2}">${news.getTitle()}</c:if>
  
   
   
           
            
            
        </tr>
    </c:forEach>
</div>
</div>
<div class="mySlides fade">

  <div style="text-align:center">
<%--   <%=resultSet.getString("name") %> --%>
<c:forEach items="${news}" var="news">
        <tr>
            
            <c:if test="${news.getId()==3}">${news.getTitle()}</c:if>
  
   
   
           
            
            
        </tr>
    </c:forEach>
</div>
</div>

<div class="mySlides fade">

  <div style="text-align:center">
<%--   <%=resultSet.getString("name") %> --%>
<c:forEach items="${news}" var="news">
        <tr>
            
            <c:if test="${news.getId()==4}">${news.getTitle()}</c:if>
  
   
   
           
            
            
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
  <div class="w3-container w3-white w3-cell">
    <p>PLAYER SEARCH</p>
  <form>
  <input type="text" name="Player name" />
<button type="submit"><i class="fa fa-search"></i></button>
  </form>
  
  <div class="w3-panel w3-padding-64"> </div>
</div>
  <div class="w3-container w3-white w3-cell">
  <p>SOCIAL MEDIA</p>
  
  <div class="w3-panel w3-padding-64"> </div>
  </div>

</div>
  </div>

  <div class="w3-panel w3-padding-64"> </div>
  <div class="w3-container w3-white ">
   <div class="w3-container w3-black">
   <div class="w3-panel w3-border-top w3-border-bottom">
    <p>
   FOOTER
    
    
    
    
    </p>
  </div>
  </div>
  </div>
   

</body>
</html>
