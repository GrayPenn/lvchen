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
	</head>

	<body>
		<!-- 左侧导航部分 -->
		<div class="navbar-collapse collapse templatemo-sidebar">
			<ul class="templatemo-sidebar-menu">

				<li class="active">
					<a href="my_information.jsp"><i class="fa fa-home"></i>个人信息</a>
				</li>
				<li class="sub open">
					<a href="javascript:;"> <i class="fa fa-database"></i>修改信息
						<div class="pull-right">
							<span class="caret"></span>
						</div> </a>
					<ul class="templatemo-submenu">
						<li>
							<a href="my_modify_icon.jsp">上传头像</a>
						</li>
						<li>
							<a href="my_modify_base.jsp">基本信息</a>
						</li>
						<li>
							<a href="my_modify_pwd.jsp">修改密码</a>
						</li>
						<li>
							<a href="my_modify_certificate.jsp">个人验证</a>
						</li>

					</ul>
				</li>
				<li>
					<a href="ToHostServlet?uname=${sessionScope.user.uname }" ><i class="fa fa-cubes"></i><span
						class="badge pull-right"></span>房东</a>
				</li>
				<li>
					<a href="my_message.jsp"><i class="fa fa-map-marker"></i><span
						class="badge pull-right">42</span>消息</a>
				</li>
				
				<li>
					<a href="addexperience.jsp"><i class="fa fa-users"></i><span
						class="badge pull-right">NEW</span>发布体验</a>
				</li>
				<!--
				<li>
					<a href="my_information.jsp"><i class="fa fa-cog"></i>Preferences</a>
				</li>
				-->
			</ul>
		</div>

	</body>

</html>
