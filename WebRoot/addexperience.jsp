<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="biz.UserBiz"%>
<%@page import="biz.impl.UserBizImpl"%>
<%@page import="entity.User"%>
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

		<title>My JSP 'addexperience.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link
			href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
			rel='stylesheet' type='text/css'>
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />

		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="edit/xheditor-1.1.10-zh-cn.min.js"></script>
		<style type="text/css">
.addstyle {
	width: 700px;
	height: 680px;
	border: 1px solid black;
	margin-top: 30px;
}

h2 {
	margin-bottom: 30px;
	font-size: 25px;
	color: red;
}

p {
	margin-top: 15px;
}
</style>
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
							<a href="addexperience.jsp">发布体验</a>
						</li>
					</ol>
					<div>


						<form action="AddExperienceServlet" method="post"
							enctype="multipart/form-data">
							<table class="table">
								<tr>
									<td>
										体验用户：
									</td>
									<td>
										<select name="user">
											<option value="">
												请选择
											</option>
											<c:forEach items="${list}" var="u">
												<option value="${u.uid }">
													${u.uname }

												</option>
											</c:forEach>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										体验活动名称：
									</td>
									<td>
										<input type="text" name="title" />
									</td>
								</tr>
								<tr>
									<td>
										价格：
									</td>
									<td>
										<input type="text" name="price" />
									</td>
								</tr>
								<tr>
									<td>
										剩余体验名额：
									</td>
									<td>
										<input type="text" name="cid" />
									</td>
								</tr>
								<tr>
									<td>
										注意事项：
									</td>
									<td>
										<input type="text" name="tips" />
									</td>
								</tr>
								<tr>
									<td>
										体验内容：
									</td>
									<td>
										<textarea rows="10" cols="80" name="content" class="xheditor"></textarea>
									</td>
								</tr>
								<tr>
									<td>
										体验包含的东西：
									</td>
									<td>
										<input type="text" name="things" />
									</td>
								</tr>
								<tr>
									<td>
										体验地点：
									</td>
									<td>
										<input type="text" name="location" />
									</td>
								</tr>
								<tr>
									<td>
										图片上传：
									</td>
									<td>
										<input type="file" name="fileup0">
									</td>
								</tr>
								<tr>
									<td rowspan="2">
										<input type="submit" value="提交" />
									</td>
									<td></td>
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
