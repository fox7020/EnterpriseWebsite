<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.NewsService"%>
<%@ page import="model.MultipartUtility" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title id="htmlTitle">最新消息-</title>
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/news-menu.css">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700'
	rel='stylesheet' type='text/css'>
<script src="js/modernizr.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		getArticle();
		setArticle();
	});
</script>
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>
<body>

	<header class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-5 header-logo">
					<br> <a href="index.html"><img src="img/logo.png" alt=""
						class="img-responsive logo"></a>
				</div>

				<div class="col-md-7">
					<nav class="navbar navbar-default">
						<div class="container-fluid nav-bar">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed"
									data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-1">

								<ul class="nav navbar-nav navbar-right">
									<li><a class="menu" href="index.html#home">首頁</a></li>
									<li><a class="menu" href="news.jsp">最新消息</a></li>
									<li><a class="menu" href="index.html#section">關於我們 </a></li>
									<li><a class="menu" href="index.html#menu">產品介紹</a></li>
									<li><a class="menu" href="index.html#order">線上訂購</a></li>
								</ul>
							</div>
							<!-- /navbar-collapse -->
						</div>
						<!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- end of header area -->
	<!-- team section -->
	<section class="team" id="team">
		<div class="container">
			<div class="row">
				<div class="team-heading text-center">
					<h2>最新消息</h2>
					<h4 id='title'></h4>
				</div>

				<div class="person" align="center";>
					
					<img id ="newsImg" class="img-responsive" src="img/actions-20160801-L.jpg" alt="member-1">
				</div>
				<div class="person-detail">
					<div class="arrow-bottom"></div>
					
					<p id="content"></p>
				</div>


			</div>
		</div>
	</section>
	<!-- end of team section -->


	<!-- footer starts here -->
	<footer class="footer clearfix">
		<div class="container">
			<div class="row">
				<div class="col-xs-6 footer-para">
					<p>&copy;Mostafizur All right reserved</p>
				</div>
				<div class="col-xs-6 text-right">
					<a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
						class="fa fa-twitter"></i></a> <a href=""><i class="fa fa-skype"></i></a>
				</div>
			</div>
		</div>
	</footer>

	<!-- script tags
	============================================================= -->
	<script>
		var url = "http://59.127.112.147:8080/EnterpriseWebsite/NewsSQL?id=";
		var jsonCoordinate = [];
		var context;
		var picName;
		var id =document.location.search;
		function getArticle() {
			id = id.substring(4, id.length); 
			$.ajax({
			     async: false,
			     type: 'GET',
			     url: url + id,
			     success: function(data) {
			    	jsonCoordinate = JSON.parse(data);
			    	title = jsonCoordinate[0].title;
					context = jsonCoordinate[0].content;
					picName = jsonCoordinate[0].picName;
			     }
			});
		}
		
		function setArticle(){
			$("#title").html(title);
			$("#content").html(context);
			$("#newsImg").attr("src","img/" + picName);
			
		}
	</script>
	<script src="js/jquery-2.1.1.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="js/gmaps.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>