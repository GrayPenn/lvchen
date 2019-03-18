<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 页面头部 -->
<!--  -->
<!--  -->

		

		<style type="text/css">
.tpl-header-list-user-ico img {
	
	display: inline-block;
	border-radius: 50%;
	width: 28px;
	height: 28px;
}
</style>








		<!-- start header -->
		<div class="header_bg">
			<div class="wrap">
				<div class="header">
					<div class="logo">
						<a href="ToindexServlet"><img src="images/logo.png" alt=""> </a>
					</div>


					<c:if test="${empty user}">
						<div class="h_right">
							<!--start menu -->
							<ul class="menu">
								<li class="active">
									<a href="ToindexServlet">主页</a>
								</li>
								|
								<li>
									<a href="ToHostServlet?uname=${sessionScope.user.uname }">成为房东</a>
								</li>
								|
								<li>
									<a href="ToTopHouseServlet">房源</a>
								</li>
								|
								<li>
									<a href="reservation.jsp">帮助</a>
								</li>
								
								|

								<li>
									<a href="login.jsp">登录</a>

								</li>
								<div class="clear"></div>
							</ul>
						</div>
					</c:if>

					<c:if test="${not empty user}">
						<div class="h_right">
							<ul class="menu">
								<li class="active">
									<a href="ToindexServlet">主页</a>
								</li>
								|
								<li>
									<a href="ToHostServlet?uname=${sessionScope.user.uname }">成为房东</a>
								</li>
								|
								<li>
									<a href="ToTopHouseServlet">房源</a>
								</li>
								|
								<li>
									<a href="reservation.jsp">帮助</a>
								</li>
								|
								<li>
									<a href="PersonalDataServlet?uname=${sessionScope.user.uname }">
										 ${sessionScope.user.uname }<span class="tpl-header-list-user-ico"> <img
												src="${sessionScope.user.uicon }"> </span></a>
								</li>

								<li>
									<a href="logout.jsp">退出登录</a>
								</li>
							</ul>
						</div>
					</c:if>

					<div class="clear"></div>
				</div>
			</div>
		</div>




