<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> -->




<title>评论管理</title>


</head>

<body>
	<!-- 页面头部 -->
	<jsp:include page="head.jsp" />
	<div class="tpl-page-container tpl-page-header-fixed">
		<!-- 左边导航 -->
		<jsp:include page="navigation.jsp" />
		<!-- 右边内容 -->

		<div class="tpl-content-wrapper">
			<div class="tpl-content-page-title">Amaze UI 表单</div>
			<ol class="am-breadcrumb">
				<li><a href="#" class="am-icon-home">首页</a></li>
				<li><a href="#">表单</a></li>
				<li class="am-active">Amaze UI 表单</li>

			</ol>
			<!-- 右侧上半部 -->

			<!-- 右边下半部 -->
			<div id="main">
				<iframe name="right" id="rightMain" src="CommentListServlet?page=1"
					frameborder="no" scrolling="auto" width="100%" height="100%"
					allowtransparency="true" />
			</div>
		</div>
	</div>


	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>

</html>

