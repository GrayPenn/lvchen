<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'host.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

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

	<jsp:include page="head.jsp" />


	<div class="template-page-wrapper">

		<!-- 左侧导航部分 -->
		<jsp:include page="my_navigation.jsp" />

		<div>

		<!--/.navbar-collapse -->
		<!-- 右侧部分 -->
		<div class="templatemo-content-wrapper">
			<div class="templatemo-content">
			
				<ol class="breadcrumb">
					<li><a href="my_information.jsp">个人信息</a></li>
				</ol>

			<!--/.navbar-collapse -->
			<form action="Host2statuServlet?uname=${sessionScope.user.uname }"
				method="post" enctype="multipart/form-data">
				<div class="templatemo-content-wrapper">
					<div class="templatemo-content">
						<div>
							<label>${sessionScope.user.uname }</label>
						</div>
						<!--文件选择input-->
						<h3>文件选择：</h3>
						<input type="file" id="exampleInputFile" name="exampleInputFile">

						<div class="control-group">
							<label class="control-label" for="location_p">详细地址:</label>
							<div class="controls">
								<select name="location_p" id="location_p"></select> <select
									name="location_c" id="location_c"></select> <select
									name="location_a" id="location_a"></select>
								<script type="text/javascript">
									new PCAS('location_p', 'location_c',
											'location_a', '福建省', '厦门市', '');
								</script>
								<input type="text" name="location_d" id="location_d" value="" />
							</div>
						</div>
						<div>
							<h4>您的房子有几间房间</h4>
							<input type="text" name="htype" id="htype" />
						</div>
						<input type="hidden" value="0" id="hstatu" name="hstatu" /> <input
							type="submit" id="addHost" value="提交" />
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
		window.onload = function() {
			var ctx_line = document.getElementById("templatemo-line-chart")
					.getContext("2d");
			window.myLine = new Chart(ctx_line).Line(lineChartData, {
				responsive : true
			});
		};
		$('#myTab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		});
		$('#loading-example-btn').click(function() {
			var btn = $(this);
			btn.button('loading');
			// $.ajax(...).always(function () {
			//   btn.button('reset');
			// });
		});
	</script>
</body>
</html>
