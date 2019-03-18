<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 首页界面 -->
<!--  -->
<!--  -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<base href="<%=basePath%>">

		<title>旅晨--清晨出发，在家的旅程</title>
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
		<!--start slider -->
		<link rel="stylesheet" href="css/fwslider.css" media="all">
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/fwslider.js"></script>
		<!--end slider -->
		<!---strat-date-piker---->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<script src="js/jquery-ui.js"></script>
		<script>
	$(function() {
		$("#datepicker,#datepicker1").datepicker();
	});
</script>
		<!---/End-date-piker---->
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

		<!----start-images-slider---->
		<div class="images-slider">
			<!-- start slider -->
			<div id="fwslider">
				<div class="slider_container">
					<div class="slide">
						<!-- Slide image -->
						<img src="images/slider-bg.jpg" alt="" />
						<!-- /Slide image -->
						<!-- Texts container -->
						<div class="slide_content">
							<div class="slide_content_wrap">
								<!-- Text title -->
								<h4 class="title">
									<i class="bg"></i>推荐景点
									<span class="hide">dummy text</span>
								</h4>
								<h5 class="title1">
									<i class="bg"></i>热门房源
									<span class="hide">condimentum accumsan</span>
								</h5>
								<!-- /Text title -->
							</div>
						</div>
						<!-- /Texts container -->
					</div>
					<!-- /Duplicate to create more slides -->
					<div class="slide">
						<img src="images/slider-bg.jpg" alt="" />
						<div class="slide_content">
							<div class="slide_content_wrap">
								<!-- Text title -->
								<h4 class="title">
									<i class="bg"></i>推荐景点2
									<span class="hide"> condimentum </span>text
								</h4>
								<h5 class="title1">
									<i class="bg"></i>热门房源2
									<span class="hide">simply dummy text</span>
								</h5>
								<!-- /Text title -->
							</div>
						</div>
					</div>
					<!--/slide -->
				</div>
				<div class="timers">
				</div>
				<div class="slidePrev">
					<span> </span>
				</div>
				<div class="slideNext">
					<span> </span>
				</div>
			</div>
			<!--/slider -->
		</div>
		<!--start main -->
		<div class="copyrights">
			Collect from
			<a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
		</div>
		<div class="main_bg">
			<div class="wrap">
			<form method="post" action="ToTopHouseServlet"
							name="search" id="search">
				<div class="online_reservation">
					<div class="b_room">
						<div class="booking_room">
							<h4>
								搜索房源
							</h4>
							<p>
								Lorem Ipsum is simply dummy text of the printing and typesetting
								industry
							</p>
						</div>
						<div class="reservation">

							<ul>
								<li class="span1_of_1">
									<h5>
										房屋类型：
									</h5>
									<!----------start section_room----------->
									<div class="section_room">
										<select id="roomstyle" name="roomstyle"
											onChange="change_country(this.value)"
											class="frm-field required" style="width: 150px">

											<option value="整体房源">
												整体房源
											</option>
											<option value="独立房间">
												独立房间
											</option>

										</select>
									</div>
								</li>

								<li class="span1_of_1 left">
									<h5>
										价格:
									</h5>
									<!----------start section_room----------->
									<div class="section_room">
										<select id="roomprice" name="roomprice"
											onChange="change_country(this.value)"
											class="frm-field required" style="width: 150px">

											<option value="200">
												200以下
											</option>
											<option value="300">
												300以下
											</option>
											<option value="400">
												400以下
											</option>
											<option value="500">
												500以下
											</option>
										</select>
									</div>
								</li>
								<li class="span1_of_1 left">
									<h5>
										人数:
									</h5>
									<!----------start section_room----------->
									<div class="section_room">
										<select id="roomcounting" name="roomcounting"
											onChange="change_country(this.value)"
											class="frm-field required" style="width: 150px">

											<option value="1">
												1
											</option>
											<option value="2">
												2
											</option>
											<option value="3">
												3
											</option>
											<option value="4">
												4
											</option>
										</select>
									</div>
								</li>
								<li class="span1_of_3">
									<div class="date_btn">

										<input type="submit" value="搜索" />

									</div>
								</li>
								<div class="clear"></div>
							</ul>

						</div>
						<div class="clear"></div>
					</div>
				</div>
				</form>
				<!--start grids_of_3 -->
				<div class="grids_of_3">

					<c:forEach items="${rlist }" end="5" var="room">

						<div class="grid1_of_3">
							<div class="grid1_of_3_img">
								<a href="RoomServlet?r_id=${room.rid }"> <img
										src="${room.rimg }" alt="" /> <span class="next"> </span> </a>
							</div>
							<h4>
								<a href="RoomServlet?r_id=${room.rid }">${room.rstyle
									}/${room.rrent }<span>￥${room.rprice }</span> </a>
							</h4>
						</div>

					</c:forEach>

					<div class="clear"></div>
				</div>
				<div class="top">
					<p>
						热门体验
					</p>
					<c:forEach items="${list}" var="exx">

						<div class="top1">
							<a href="experienceServlet?ex_id=${exx.ex_id}"> <img alt=""
									src="upload${exx.ex_img}"> </a>
							<p>
								${exx.ex_title} &nbsp;&nbsp;&nbsp;&nbsp; ￥${exx.ex_price}
							</p>
						</div>

					</c:forEach>
					<br>
					<div class="clear"></div>
					<div align="right">
						当前页数：${index};
						<a href="ToindexServlet?page=1">首页</a>
						<a href="ToindexServlet?page=${lastpage}">上一页</a>
						<a href="ToindexServlet?page=${nextpage}">下一页</a>
						<a href="ToindexServlet?page=${pagecount}">末页</a>

						<select onchange="location='ToindexServlet?page='+this.value">

							<c:forEach begin="1" end="${pagecount}" step="1" var="i">
								<option value="${i }"
									<c:if test="${index==i }">
											selected
										</c:if>>
									第${i }页
								</option>


							</c:forEach>
						</select>
					</div>
				</div>
			</div>
		</div>
		<!-- 页面底部 -->
		<jsp:include page="bottom.jsp" />
	</body>
</html>