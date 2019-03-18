<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 可用于房源 -->
<!--  -->
<!--  -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'activities.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1">
		<link
			href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
			rel='stylesheet' type='text/css'>
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<script src="js/jquery.min.js"></script>
		<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
		<script type="text/javascript" src="js/JFCore.js"></script>
		<script type="text/javascript" src="js/JFForms.js"></script>
		<!-- Set here the key for your domain in order to hide the watermark on the web server -->
		<script type="text/javascript">
	(function() {
		JC.init( {
			domainKey : ''
		});
	})();
</script>
		<!--nav-->
		<script>
	$(function() {
		var pull = $('#pull');
		menu = $('nav ul');
		menuHeight = menu.height();

		$(pull).on('click', function(e) {
			e.preventDefault();
			menu.slideToggle();
		});

		$(window).resize(function() {
			var w = $(window).width();
			if (w > 320 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}
		});
	});
</script>
	</head>

	<body>
		<!-- 页面头部 -->
		<jsp:include page="head.jsp" />
		<!--start main -->
		<div class="main_bg">
			<div class="wrap">
				<div class="main">
					<!-- start main_content -->
					<ul class="service_list">
						<li>
							<div class="ser_img">
								<a href="details.jsp"> <img src="images/ser_pic1.jpg" alt="" />
									<span class="next"> </span> </a>
							</div>
							<a href="details.jsp"><h3>
									Sed condimentum
								</h3> </a>
							<p class="para">
								There are many variations of passages of Lorem Ipsum available,
							</p>
							<h4>
								<a href="details.jsp">Lorem ipsum</a>
							</h4>
						</li>
						<li>
							<div class="ser_img">
								<a href="details.jsp"> <img src="images/ser_pic2.jpg" alt="" />
									<span class="next"> </span> </a>
							</div>
							<a href="details.jsp"><h3>
									Integer facilisis
								</h3> </a>
							<p class="para">
								Our website design and development provides quality web,
							</p>
							<h4>
								<a href="details.jsp">Nulla accumsan</a>
							</h4>
						</li>
						<li>
							<div class="ser_img">
								<a href="details.jsp"> <img src="images/ser_pic3.jpg" alt="" />
									<span class="next"> </span> </a>
							</div>
							<a href="details.jsp"><h3>
									Morbi sit amet mauris
								</h3> </a>
							<p class="para">
								There are many variations of passages of Lorem Ipsum available,
							</p>
							<h4>
								<a href="details.jsp">Vestilum feliing</a>
							</h4>
						</li>
						<li>
							<div class="ser_img">
								<a href="details.jsp"> <img src="images/ser_pic4.jpg" alt="" />
									<span class="next"> </span> </a>
							</div>
							<a href="details.jsp"><h3>
									Nulla commodo erat
								</h3> </a>
							<p class="para">
								Lorem ipsum dolor sit amet, consectetur elit,EIUSMOD tempor,
							</p>
							<h4>
								<a href="details.jsp">Nulla commodo</a>
							</h4>
						</li>
						<div class="clear"></div>
					</ul>
					<ul class="service_list top">
						<li>
							<div class="ser_img">
								<a href="details.jsp"> <img src="images/ser_pic5.jpg" alt="" />
									<span class="next"> </span> </a>
							</div>
							<a href="details.jsp"><h3>
									Nulla commodo erat
								</h3> </a>
							<p class="para">
								There are many variations of passages of Lorem Ipsum available,
							</p>
							<h4>
								<a href="details.jsp">Lorem ipsum</a>
							</h4>
						</li>
						<li>
							<div class="ser_img">
								<a href="details.jsp"> <img src="images/ser_pic6.jpg" alt="" />
									<span class="next"> </span> </a>
							</div>
							<a href="details.jsp"><h3>
									Morbi sit amet mauris
								</h3> </a>
							<p class="para">
								Lorem ipsum dolor sit amet, consectetur elit,EIUSMOD tempor,
							</p>
							<h4>
								<a href="details.jsp">Nulla accumsan</a>
							</h4>
						</li>
						<li>
							<div class="ser_img">
								<a href="details.jsp"> <img src="images/ser_pic7.jpg" alt="" />
									<span class="next"> </span> </a>
							</div>
							<a href="details.jsp"><h3>
									Integer facilisis
								</h3> </a>
							<p class="para">
								There are many variations of passages of Lorem Ipsum available,
							</p>
							<h4>
								<a href="details.jsp">Vestilum feliing</a>
							</h4>

						</li>
						<li>
							<div class="ser_img">
								<a href="details.jsp"> <img src="images/ser_pic8.jpg" alt="" />
									<span class="next"> </span> </a>
							</div>
							<a href="details.jsp"><h3>
									Sed condimentum
								</h3> </a>
							<p class="para">
								Our website design and development provides quality web,
							</p>
							<h4>
								<a href="details.jsp">Lorem ipsum</a>
							</h4>
						</li>
						<div class="clear"></div>
					</ul>
					<div class="clear"></div>
					<!-- end main_content -->

				</div>
			</div>
		</div>

		<!-- 页面底部 -->
		<jsp:include page="bottom.jsp" />

	</body>
</html>
