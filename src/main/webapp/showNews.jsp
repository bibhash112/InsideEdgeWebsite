<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
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
    <br>
    <br>
    
    </p>
     
  </div>
  </div>
  </div>
  <div class="w3-panel w3-padding-64"> 
  <div class="w3-panel w3-border-top ">
  <div class="w3-container w3-black ">
 
    <p>
    LIVE NEWS
    <br>
    <br>
    
    
<table>
    <c:forEach items="${news}" var="news">
        <tr>
            <td>${news.getTitle()}</td>
           
            
            <br>
        </tr>
    </c:forEach>
</table>


<br>
</body>
</html>