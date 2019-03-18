<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 用户个人页面-->
<!--  -->
<!--  -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>user</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1">
		<link
			href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
			rel='stylesheet' type='text/css'>
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<script src="js/jquery.min.js"></script>
		<link type="text/css" rel="stylesheet" href="css/JFGrid.css" />
		<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
		<link type="text/css" rel="stylesheet" href="css/user.css" />
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
	
	<!-- main -->
	<div class="usermain">
		<div class="userleft">
			<img alt="" src="images/user1.jpg" style="margin: 20px 20px 20px 150px">
			<div class="xinxi">
				<div class="xinxi-header">
					已验证的信息
				</div>
				<div class="xinxi-body">
					<div class="xinxi-body1">政府颁发的身份证明</div>
					<div class="xinxi-body1">电子邮件地址</div>
					<div class="xinxi-body1">电话号码</div>
					<div class="xinxi-body1" style="padding-bottom: 30px">芝麻信用</div>
				</div>
			</div>
		</div>
		<div class="userright">
			<div class="username">
				您好，我是Coco
			</div>
			<div class="intime">
				注册时间：
			</div>
			<div class="usertext">
				我从事设计工作,毕业于巴黎CREAPOLE高等艺术设计及管理学院,酷爱旅游,摄影。
			</div>
		</div>
	</div>
	
	<!-- 页面底部 -->
	<jsp:include page="bottom.jsp" />
  </body>
</html>
