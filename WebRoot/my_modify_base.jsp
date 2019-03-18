<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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

		<script language="javascript" src="js/area.js"></script>

		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

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
		<script type="text/javascript">
	function edit() {
		document.getElementById("usex").disabled = false;
		document.getElementById("uage").disabled = false;
		document.getElementById("uphone").disabled = false;
		document.getElementById("uemail").disabled = false;
		document.getElementById("province").disabled = false;
		document.getElementById("city").disabled = false;
		document.getElementById("country").disabled = false;
		document.getElementById("uaddr").disabled = false;
	}
</script>




	</head>

	<body onload="setup('');">
		<!-- 页面头部 -->
		<jsp:include page="head.jsp" />


		<div class="template-page-wrapper">
			<!-- 左侧导航部分 -->
			<jsp:include page="my_navigation.jsp" />
			<!--/.navbar-collapse -->
			<!-- 右侧部分 -->
			<div class="templatemo-content-wrapper">
				<div class="templatemo-content">
					<ol class="breadcrumb">
						<li>
							<a href="my_information.jsp">修改信息</a>
						</li>
						<li>
							<a href="my_modify_base.jsp">基本信息</a>
						</li>

					</ol>
					<div>
						<form action="ModifyBaseServlet" method="post">
							<table class="table table-striped table-hover">
								<input type="hidden" name="uname"
									value="${sessionScope.user.uname }">

								<tr>
									<td style="text-align: center;">
										性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别
									</td>
									<td style="text-align: center;">
										<input type="text" name="usex"
											value="${sessionScope.user.usex }" disabled="disabled"
											id="usex">


									</td>
								</tr>
								<tr>
									<td style="text-align: center;">
										年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄
									</td>
									<td style="text-align: center;">
										<input type="text" name="uage"
											value="${sessionScope.user.uage }" disabled="disabled"
											id="uage">


									</td>
								</tr>
								<tr>
									<td style="text-align: center;">
										电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话
									</td>
									<td style="text-align: center;">
										<input type="text" name="uphone"
											value="${sessionScope.user.uphone }" disabled="disabled"
											id="uphone">


									</td>
								</tr>
								<tr>
									<td style="text-align: center;">
										邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱
									</td>
									<td style="text-align: center;">
										<input type="text" name="uemail"
											value="${sessionScope.user.uemail }" disabled="disabled"
											id="uemail">


									</td>
								</tr>
								<tr>
									<td style="text-align: center;">
										所在城市
									</td>
									<td style="text-align: center;">
										<select id="province" disabled="disabled" name="ucity1"></select>
										<select id="city" disabled="disabled"  name="ucity2"></select>
										<select id="country" disabled="disabled"  name="ucity3"></select>
										
									</td>
								</tr>
								<tr>
									<td style="text-align: center;">
										地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址
									</td>
									<td style="text-align: center;">
										<input type="text" name="uaddr"
											value="${sessionScope.user.uaddr }" disabled="disabled"
											id="uaddr">


									</td>
								</tr>
								<tr>
									<td style="text-align: center;">
										账户余额
									</td>
									<td style="text-align: center;">
										<input type="text" name="uaccount"
											value="${sessionScope.user.uaccount }" disabled="disabled">


									</td>
								</tr>
								<tr>
									<td style="text-align: center;">
										<input type="button" value="编辑" style="height: 40px;"
											onclick=
	edit();
>
									</td>

									<td style="text-align: center; padding-top: 15px;">
										<input type="submit" value="提交"
											style="border: none; font-family: 'Open Sans', sans-serif; height: 40px; background: #32A2E3; width: 150px; font-size: 1em; color: #FFF;">
									</td>
								</tr>
							</table>

						</form>

					</div>




				</div>
			</div>
			<!-- Modal -->

			<footer class="templatemo-footer">
			<div class="templatemo-copyright">
				<!-- 页面底部 -->
				<jsp:include page="bottom.jsp" />
			</div>
			</footer>
		</div>

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/Chart.min.js"></script>
		<script src="js/templatemo_script.js"></script>
		<script type="text/javascript">
	// Line chart
	var randomScalingFactor = function() {
		return Math.round(Math.random() * 100)
	};
	var lineChartData = {
		labels : [ "January", "February", "March", "April", "May", "June",
				"July" ],
		datasets : [
				{
					label : "My First dataset",
					fillColor : "rgba(220,220,220,0.2)",
					strokeColor : "rgba(220,220,220,1)",
					pointColor : "rgba(220,220,220,1)",
					pointStrokeColor : "#fff",
					pointHighlightFill : "#fff",
					pointHighlightStroke : "rgba(220,220,220,1)",
					data : [ randomScalingFactor(), randomScalingFactor(),
							randomScalingFactor(), randomScalingFactor(),
							randomScalingFactor(), randomScalingFactor(),
							randomScalingFactor() ]
				},
				{
					label : "My Second dataset",
					fillColor : "rgba(151,187,205,0.2)",
					strokeColor : "rgba(151,187,205,1)",
					pointColor : "rgba(151,187,205,1)",
					pointStrokeColor : "#fff",
					pointHighlightFill : "#fff",
					pointHighlightStroke : "rgba(151,187,205,1)",
					data : [ randomScalingFactor(), randomScalingFactor(),
							randomScalingFactor(), randomScalingFactor(),
							randomScalingFactor(), randomScalingFactor(),
							randomScalingFactor() ]
				} ]
	}
</script>
	</body>

</html>
