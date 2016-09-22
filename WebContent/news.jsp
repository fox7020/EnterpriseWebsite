
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>真心茶飲店</title>
<link rel="Shortcut Icon" type="image/x-icon" href="img/icon.ico" />
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
		appendNews();
		
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
				<br/>
					<a href="index.html"><img id ="logoPNG" src="img/logo.png" alt="" class="img-responsive logo" style="width:130px; height:100px"></a>
				</div>

				<div class="col-md-7">
					<nav class="navbar navbar-default">
						<div class="container-fluid nav-bar">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

								<ul class="nav navbar-nav navbar-right">
									<li><a class="menu" href="index.html#home">首頁</a></li>
									<li><a class="menu" href="news.jsp">最新消息</a></li>
									<li><a class="menu" href="index.html#contact">關於我們 </a></li>
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



	<!-- about section -->
	<section class="about text-center" id="news-menu">
		<div class="container">
			<div class="row">
				<h2>最新消息</h2>
				<h4>喝好茶、拿好康都在這</h4>

		
				<div id="newsArea">
					
					
				</div>
			</div>
		</div>

	</section>
	<!-- end of about section -->

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
		var id;
		var newsCount;
		var picName;
		function getArticle() {
			$.ajax({
			     async: false,
			     type: 'GET',
			     url: url + 'allData',
			     success: function(data) {
			    	jsonCoordinate = JSON.parse(data);
			    	newsCount = jsonCoordinate.length;
			     }
			});
		}
		
		
		function setArticle(){
			for(var i=0; i<newsCount; i++){
				context = jsonCoordinate[i].content;
				$("#title"+i).html(jsonCoordinate[i].title);
				$("#content"+i).html(context.substring(0, 21) + "...");
			}
			
		}
		
		function appendNews() {
			
			for(var i=0; i<newsCount; i++){
				
				var append = "<div class='col-md-4 col-sm-6' style='height:550px;'><div class='single-about-detail'><div class='single-about-detail'>"
							+"<a href='newsDetail.jsp?id="+jsonCoordinate[i].id+"'/a>"+"<div class='about-img'>" + "<img class='img-responsive' src='img/"+jsonCoordinate[i].picName+"' style='height:300px'>"+
							"</div>"+"<div class='about-details' style='height:180px'>"+"<div class='pentagon-text'>"+"<h1>"+jsonCoordinate[i].title.substring(0, 1)+"</h1>"+"</div>"+
							"<h3 id='title"+i+"'>title</h3>"+"<p id='content"+i+"'>content</p>"+"</div></div></div>";
				$("#newsArea").append(append);
			}
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