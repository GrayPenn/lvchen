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
<meta charset="utf-8">
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
<title>Dashboard, Free HTML5 Admin Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="css/templatemo_main.css">
<link href="css/uploadSingleImg.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link href="css/style.css" rel="stylesheet">
<!--自己书写input样式-->

<script src="js/jquery-2.0.2.js"></script>
<script type="text/javascript" src="js/tools.js"></script>
<script type="text/javascript" src="js/pictureHandle.js"></script>
<script type="text/javascript" src="js/region_select.js"></script>
<link rel="stylesheet" href="css/templatemo_main.css">
</head>

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
				<!-- 上方层级信息 -->
				<ol class="breadcrumb">
					<li><a href="my_information.jsp">修改信息</a></li>
					<li><a href="my_modify_base.jsp">基本信息</a></li>

				</ol>
				<div id="house">
				
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
						labels : [ "January", "February", "March", "April",
								"May", "June", "July" ],
						datasets : [
								{
									label : "My First dataset",
									fillColor : "rgba(220,220,220,0.2)",
									strokeColor : "rgba(220,220,220,1)",
									pointColor : "rgba(220,220,220,1)",
									pointStrokeColor : "#fff",
									pointHighlightFill : "#fff",
									pointHighlightStroke : "rgba(220,220,220,1)",
									data : [ randomScalingFactor(),
											randomScalingFactor(),
											randomScalingFactor(),
											randomScalingFactor(),
											randomScalingFactor(),
											randomScalingFactor(),
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
									data : [ randomScalingFactor(),
											randomScalingFactor(),
											randomScalingFactor(),
											randomScalingFactor(),
											randomScalingFactor(),
											randomScalingFactor(),
											randomScalingFactor() ]
								} ]
					}
				</script>
</body>

</html>
