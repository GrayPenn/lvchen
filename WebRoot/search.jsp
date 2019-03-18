<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="mxt"%>
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

		<title>search</title>
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
		<link type="text/css" rel="stylesheet" href="css/rooms.css" />
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


		<div class="main_bg">

			<div class="main2" style="height: 1000px">
				<!-- 主体左边详细内容 -->

				<div class="left"
					style="height: auto; width: 60%; float: left; margin-left: 100px; margin-top: 15px">
					<!--start grids_of_3 -->
					<div class="grids_of_3">
						<p align="right">
					<mxt:page pageIndex="${index}"
						url="ToTopHouseServlet?" pageMax="${pageCount}" />
				</p>
				<br>
				<br>
						<!--<c:if test="${empty rlist }">
							<h5 class="roompara" style="font-size: 27px">
								抱歉！暂无此类型房源。
							</h5>
						</c:if>-->

						<c:forEach items="${rlist }" var="room">

							<div class="grid1_of_3" style="width: 45%">
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


				</div>

				<!-- 主体右边预定 -->
				<div class="right"
					style="height: auto; width: 264px; float: right; margin-right: 100px; margin-top: 50px">
					<form method="post" action="ToTopHouseServlet" name="search" id="search">
						<h5>
							房屋类型：
						</h5>
						<!----------start section_room----------->
						<div class="section_room">
							<select id="roomstyle" name="roomstyle"
								onChange="change_country(this.value)" class="frm-field required"
								style="width: 264px">

								<option value="整体房源">
									整体房源
								</option>
								<option value="独立房间">
									独立房间
								</option>

							</select>
						</div>
						<h5>
							价格:
						</h5>
						<!----------start section_room----------->
						<div class="section_room">
							<select id="roomprice" name="roomprice"
								onChange="change_country(this.value)" class="frm-field required"
								style="width: 264px">

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
						<h5>
							人数:
						</h5>
						<!----------start section_room----------->
						<div class="section_room">
							<select id="roomcounting" name="roomcounting"
								onChange="change_country(this.value)" class="frm-field required"
								style="width: 264px">

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
						<div class="date_btn">

							<input type="submit" value="search" style="width: 264px" />

						</div>
					</form>
				</div>
			</div>

		</div>


		<!-- 页面底部 -->
		<jsp:include page="bottom.jsp" />
	</body>
</html>