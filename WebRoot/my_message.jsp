<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		
		<script type="text/javascript">
		function xs(){
			var a = document.getElementById("tables");
			a.setAttribute("style", "display:block;")
			}
		</script>
		
		
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
						<li>
							<a href="my_message.jsp">消息查询</a>
						</li>


					</ol>
					<div>
						<input type="hidden" name="uname"
							value="${sessionScope.user.uname }">
						<input type="hidden" name="uname" value="${sessionScope.user.hid }">
						<a
							href="RefreshServlet?uname=${sessionScope.user.uname }&hid=${sessionScope.user.hid }"><input
								type="button" name="refresh" value="刷新信息" onclick="xs()" id="refresh"/> </a>
						<br />
						<table class="table table-striped table-hover" id="tables">
							<tr>
								<td>
									消息内容
								</td>
								<td>
									发送者
								</td>
								<td>
									发送时间
								</td>
								<td>
									操作
								</td>
							</tr>
							<c:forEach var="mes" items="${mlist}">
								<tr>
									<td>
										<c:out value="${mes.ccontext}"></c:out>
									</td>

									<td>
										<c:out value="${mes.uname}"></c:out>
									</td>

									<td>
										<c:out value="${mes.ctime}"></c:out>
									</td>
									<td>
										<a href="#" >查看详情</a>
									</td>
								</tr>

							</c:forEach>

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
