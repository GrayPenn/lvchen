<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 页面底部 -->



<div class="footer_bg">
	<div class="wrap">
		<div class="footer">
			<div class="copy">
				<p class="link">
					<span>Copyright &copy; 2014.Company name All rights
						reserved. <a target="_blank" href="#">旅晨</a> -<Br>
				</p>
				<p>
					当前登录人数${applicationScope.online }
				</p>
			</div>
			<div class="f_nav">
				<ul>
					<li>
						<a href="index.jsp">home</a>
					</li>
					<li>
						<a href="rooms.jsp">rooms & suits</a>
					</li>
					<li>
						<a href="reservation.jsp">reservation</a>
					</li>
					<li>
						<a href="contact.jsp">Contact</a>
					</li>
				</ul>
			</div>
			<div class="soc_icons">
				<ul>
					<li>
						<a class="icon1" href="#"></a>
					</li>
					<li>
						<a class="icon2" href="#"></a>
					</li>
					<li>
						<a class="icon3" href="#"></a>
					</li>
					<li>
						<a class="icon4" href="#"></a>
					</li>
					<li>
						<a class="icon5" href="#"></a>
					</li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>

</div>
