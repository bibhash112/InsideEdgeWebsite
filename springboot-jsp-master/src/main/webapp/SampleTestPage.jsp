<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<style>
#loader {
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}

#myDiv {
  display: none;
  text-align: center;
  }
.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid blue;
  border-right: 16px solid green;
  border-bottom: 16px solid red;
  border-left: 16px solid pink;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}






#customers {

	margin: 0px auto;
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 50%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
} 

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #4CAF50;
    color: white;
}
</style>

<!-- <style>
table, td, th {
float: center;
    border: 5px solid black;
    padding: 15px;
}

table {
float: center;
    border-collapse: collapse;
    width: 100%;
}

th {
    height: 50px;
}
</style> -->
<!-- <style>
	
	$baseColor: #398B93;
$borderRadius: 10px;
$imageBig: 100px;
$imageSmall: 60px;
$padding: 10px;





img {
   border-radius: 50%;
   height: $imageSmall;
   width: $imageSmall;
}

.table-users {
   border: 1px solid darken($baseColor, 5%);
   border-radius: $borderRadius;
   box-shadow: 3px 3px 0 rgba(0,0,0,0.1);
   max-width: calc(100% - 2em);
   margin: 1em auto;
   overflow: hidden;
   width: 800px;
}

table {
   width: 100%;
   
   td, th { 
      color: darken($baseColor, 10%);
      padding: $padding; 
   }
   
   td {
      text-align: center;
      vertical-align: middle;
      
      &:last-child {
         font-size: 0.95em;
         line-height: 1.4;
         text-align: left;
      }
   }
   
   th { 
      background-color: lighten($baseColor, 50%);
      font-weight: 300;
   }
   
   tr {     
      &:nth-child(2n) { background-color: white; }
      &:nth-child(2n+1) { background-color: lighten($baseColor, 55%) }
   }
}

@media screen and (max-width: 700px) {   
   table, tr, td { display: block; }
   
   td {
      &:first-child {
         position: absolute;
         top: 50%;
         transform: translateY(-50%);
         width: $imageBig;
      }

      &:not(:first-child) {
         clear: both;
         margin-left: $imageBig;
         padding: 4px 20px 4px 90px;
         position: relative;
         text-align: left;

         &:before {
            color: lighten($baseColor, 30%);
            content: '';
            display: block;
            left: 0;
            position: absolute;
         }
      }

      &:nth-child(2):before { content: 'Name:'; }
      &:nth-child(3):before { content: 'Email:'; }
      &:nth-child(4):before { content: 'Phone:'; }
      &:nth-child(5):before { content: 'Comments:'; }
   }
   
   tr {
      padding: $padding 0;
      position: relative;
      &:first-child { display: none; }
   }
}

@media screen and (max-width: 500px) {
   .header {
      background-color: transparent;
      color: lighten($baseColor, 60%);
      font-size: 2em;
      font-weight: 700;
      padding: 0;
      text-shadow: 2px 2px 0 rgba(0,0,0,0.1);
   }
   
   img {
      border: 3px solid;
      border-color: lighten($baseColor, 50%);
      height: $imageBig;
      margin: 0.5rem 0;
      width: $imageBig;
   }
   
   td {
      &:first-child { 
         background-color: lighten($baseColor, 45%); 
         border-bottom: 1px solid lighten($baseColor, 30%);
         border-radius: $borderRadius $borderRadius 0 0;
         position: relative;   
         top: 0;
         transform: translateY(0);
         width: 100%;
      }
      
      &:not(:first-child) {
         margin: 0;
         padding: 5px 1em;
         width: 100%;
         
         &:before {
            font-size: .8em;
            padding-top: 0.3em;
            position: relative;
         }
      }
      
      &:last-child  { padding-bottom: 1rem !important; }
   }
   
   tr {
      background-color: white !important;
      border: 1px solid lighten($baseColor, 20%);
      border-radius: $borderRadius;
      box-shadow: 2px 2px 0 rgba(0,0,0,0.1);
      margin: 0.5rem 0;
      padding: 0;
   }
   
   .table-users { 
      border: none; 
      box-shadow: none;
      overflow: visible;
   }
}

	</style> -->
	
	<head>
	<script>
var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 8000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
</script>
	
	
		<title>Inside Edge</title>
		<meta charset="utf-8">
		<meta name="format-detection" content="telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/countdown.css">
		<link rel="stylesheet" href="css/style_common.css" />
		<link rel="stylesheet" href="css/style4.css" />
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/camera.js"></script>
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="js/jquery.mobile.customized.min.js"></script>
		<!--<![endif]-->
		<script>
			$(document).ready(function(){
				jQuery('#camera_wrap').camera({
					loader: false,
					pagination: false ,
					minHeight: '444',
					thumbnails: false,
					height: '27.86458333333333%',
					caption: true,
					navigation: true,
					fx: 'simpleFade'
				});
				$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<!--[if lt IE 8]>
			<div style=' clear: both; text-align:center; position: relative;'>
				<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
					<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
				</a>
			</div>
		<![endif]-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
	</head>
	<body class="page1" onload="myFunction()" style="margin:0;" id="top">
		<div class="main">
<!--==============================header=================================-->
			<header>
			
			<h1>
			<!-- <div class="loader"></div> -->
							<a href="/home">
								<img src="images/logox.jpg" alt="Inside edge">
							</a>
						</h1>
				<div class="container_12">
					<div class="grid_12">
						
						
						<div class="menu_block">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li><a href="/home">Home</a></li>
									<li><a href="index-1">Player Search</a></li>
									<li  ><a href="/live">Live Score</a></li>
									<li><a href="/odi">ODI</a></li>
									<li  class="current"><a href="/test">Test</a></li>
									<li><a href="/t20">T20</a></li>
									<li><a href="index-4">Contacts</a></li>
								</ul>
							</nav>
							<div class="clear"></div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</header>
			
		
		<br>
		<table id="customers">
		<tr>
        <th colspan="7">Test Matches</th>
        </tr>
        <tr>
        <th>Flag</th>
        <th>Country</th>
        <th>Matches</th>
        <th>Won</th>
        <th>Lost</th>
        <th>Tied</th>
        <th>No Result</th>
        </tr>

    
   <c:forEach items="${odi}" var="users">
        
       <tr>
        	<td><img src="https://cricket.yahoo.net/static-assets/flags/min/${users.getFlagcode()}.png?v=1.06" height="30px" width="35px"></td>
            <td>${users.getCountry()}</td>
            <td>${users.getMatches()}</td>
            
            <td>${users.getWon()}</td>
            <td>${users.getLost()}</td>
            
            <td>${users.getTied()}</td>
            <td>${users.getNoResult()}</td>
            
            
        </tr>
    </c:forEach>
  
</table>	

   	<br>
   	<br>
   	
  
			
			
			
					<div class="clear"></div>
					
					
					
					
			
					<center>
					<div class="container_12">
					<div class="grid_12">
						<div class="socials">
						
							<a href="#" class="fa fa-twitter"></a>
							<a href="#" class="fa fa-facebook"></a>
							<a href="#" class="fa fa-google-plus"></a>
							<a href="#" class="fa fa-instagram"></a>
						</div>
						</div>
						</div>
						</center>
						<br>
					<!-- <div class="grid_4 prefix_1">
						<h3>Latest News</h3>
						<div class="news">
							<time datetime="2014-01-01">14<span>MAR</span></time>
							<div class="extra_wrapper">
								<p class="color1"><a href="#">Magna non nunc tristique rhoncuseri </a></p>
								Aliquam nibh ante, egestas id dictum a, commodo re luctus liberaesenucibus malesuada cibuste.
							</div>
						</div>
						<div class="news">
							<time datetime="2014-01-01">28<span>MAR</span></time>
							<div class="extra_wrapper">
								<p class="color1"><a href="#">Tagna non nunc tristique rhoncuserr </a></p>
								Boliquam nibh ante, egestas id dictum a, commodo re luctus liberaesenucibus malesuada cibustew.
							</div>
						</div>
					</div> -->
					<!-- <div class="clear"></div>
					<div class="grid_12">
						<div class="hor_separator"></div>
						<h3 class="head1 center">We Will Never Stop</h3>
					</div>
					<div class="clear"></div>
					<div class="grid_12">
						<div id="grid" class="main">
							<div class="view">
								<div class="view-back">
									<span data-icon="" class="fa fa-eye"><span>110</span></span>
									<span data-icon="" class="fa fa-heart-o"><span>60</span></span>
									<a href="#">&rarr;</a>
								</div>
								<img src="images/page1_img5.jpg" />
							</div>
							<div class="view">
								<div class="view-back">
									<span data-icon="" class="fa fa-eye"><span>208</span></span>
									<span data-icon="" class="fa fa-heart-o"><span>813</span></span>
									<a href="#">&rarr;</a>
								</div>
								<img src="images/page1_img6.jpg" />
							</div>
							<div class="view">
								<div class="view-back">
									<span data-icon="" class="fa fa-eye"><span>51</span></span>
									<span data-icon="" class="fa fa-heart-o"><span>88</span></span>
									<a href="#">&rarr;</a>
								</div>
								<img src="images/page1_img7.jpg" />
							</div>
							<div class="clear"></div>
							<div class="view">
								<div class="view-back">
									<span data-icon="" class="fa fa-eye"><span>228</span></span>
									<span data-icon="" class="fa fa-heart-o"><span>62</span></span>
									<a href="#">&rarr;</a>
								</div>
								<img src="images/page1_img8.jpg" />
							</div>
							<div class="view">
								<div class="view-back">
									<span data-icon="" class="fa fa-eye"><span>117</span></span>
									<span data-icon="" class="fa fa-heart-o"><span>368</span></span>
									<a href="#">&rarr;</a>
								</div>
								<img src="images/page1_img9.jpg" />
							</div>
							<div class="view">
								<div class="view-back">
									<span data-icon="" class="fa fa-eye"><span>22</span></span>
									<span data-icon="" class="fa fa-heart-o"><span>38</span></span>
									<a href="#">&rarr;</a>
								</div>
								<img src="images/page1_img10.jpg" />
							</div>
						</div>
					</div> -->
					<div class="clear"></div>
				</div>
			
		<br>
		<br>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="f_logo">
						<a href="index.html">Inside Edge</a>
					</div>
					<div class="f_contacts">
						<a href="#" class="mail_link"><span class="fa fa-envelope"></span> group5@capgemini.com</a>
						<div class="f_phone"><span class="fa fa-phone"></span>+91 98316 59987</div>
					</div>
					<div class="copy">
						<span>Inside Edge &copy; 2018 | <a href="#">Privacy Policy</a></span>
						Website designed by <a href="http://www.templatemonster.com/" rel="nofollow">Our Designer</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</footer>
		<script src="js/jquery.countdown.js"></script>
		<script src="js/cd_config.js"></script>
		<script src="js/modernizr.custom.69142.js"></script>
		<script type="text/javascript">
			Modernizr.load({
				test: Modernizr.csstransforms3d && Modernizr.csstransitions,
				yep : ['http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js','js/jquery.hoverfold.js'],
				nope: 'css/fallback.css',
				callback : function( url, result, key ) {
					if( url === 'js/jquery.hoverfold.js' ) {
						$( '#grid' ).hoverfold();
					}
				}
			});
		</script>
	</body>
</html>