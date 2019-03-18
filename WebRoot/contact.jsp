<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 可用于注册登录，反馈 -->
<!--  -->
<!--  -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'contact.jsp' starting page</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1">
		<link
			href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
			rel='stylesheet' type='text/css'>
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<script src="js/jquery.min.js"></script>
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
	<body>
		<!-- 页面头部 -->
		<jsp:include page="head.jsp" />

		<!--start main -->
		<div class="main_bg">
			<div class="wrap">
				<div class="main">
					<div class="contact">
						<div class="contact_left">
							<div class="contact_info">
								<h3>
									Find Us Here
								</h3>
								<div class="map">
									<iframe width="100%" height="175" frameborder="0"
										scrolling="no" marginheight="0" marginwidth="0"
										src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe>
									<br>
									<small><a
										href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265"
										style="color: #242424; text-shadow: 0 1px 0 #ffffff; text-align: left; font-size: 0.7125em; padding: 5px; font-weight: 600;">View
											Larger Map</a> </small>
								</div>
							</div>
							<div class="company_address">
								<h3>
									Company Information :
								</h3>
								<p>
									500 Lorem Ipsum Dolor Sit,
								</p>
								<p>
									22-56-2-9 Sit Amet, Lorem,
								</p>
								<p>
									USA
								</p>
								<p>
									Phone:(00) 222 666 444
								</p>
								<p>
									Fax: (000) 000 00 00 0
								</p>
								<p>
									Email:
									<a href="mailto:info@mycompany.com">info(at)mycompany.com</a>
								</p>
								<p>
									Follow on:
									<a href="#">Facebook</a>,
									<a href="#">Twitter</a>
								</p>
							</div>
						</div>
						<div class="contact_right">
							<div class="contact-form">
								<h3>
									Contact Us
								</h3>
								<form method="post" action="contact-post.jsp">
									<div>
										<span><label>
												NAME
											</label> </span>
										<span><input name="userName" type="text"
												class="textbox"> </span>
									</div>
									<div>
										<span><label>
												E-MAIL
											</label> </span>
										<span><input name="userEmail" type="text"
												class="textbox"> </span>
									</div>
									<div>
										<span><label>
												MOBILE
											</label> </span>
										<span><input name="userPhone" type="text"
												class="textbox"> </span>
									</div>
									<div>
										<span><label>
												SUBJECT
											</label> </span>
										<span><textarea name="userMsg"> </textarea> </span>
									</div>
									<div>
										<span><input type="submit" value="submit us"> </span>
									</div>
								</form>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- 页面底部 -->
		<jsp:include page="bottom.jsp" />

	</body>
</html>