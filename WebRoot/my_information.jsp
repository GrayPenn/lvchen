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
		
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		
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
	<style type="text/css">
*:hover {
	text-decoration: none;
}
</style>
	<body>
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
							<a href="my_information.jsp">个人信息</a>
						</li>
					</ol>
					<div>
						
						<table  class="table table-striped table-hover">
							<tr>
								<td>
									用户名
								</td>
								<td>
									${sessionScope.user.uname }
								</td>
							</tr>
							<tr>
								<td>
									性别
								</td>
								<td>
									${sessionScope.user.usex }
								</td>
							</tr>
							<tr>
								<td>
									年龄
								</td>
								<td>
									${sessionScope.user.uage }
								</td>
							</tr>
							<tr>
								<td>
									电话
								</td>
								<td>
									${sessionScope.user.uphone }
								</td>
							</tr>
							<tr>
								<td>
									邮箱
								</td>
								<td>
									${sessionScope.user.uemail }
								</td>
							</tr>
							<tr>
								<td>
									城市
								</td>
								<td>
									${sessionScope.user.ucity }
								</td>
							</tr>
							<tr>
								<td>
									地址
								</td>
								<td>
									${sessionScope.user.uaddr }
								</td>
							</tr>
							<tr>
								<td>
									是否是房东
								</td>
								<td>
									${sessionScope.user.ustatu }
								</td>
							</tr>
							<tr>
								<td>
									余额
								</td>
								<td>
									${sessionScope.user.uaccount }
								</td>
							</tr>
						</table>
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
