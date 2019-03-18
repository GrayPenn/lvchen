<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 订单  -->
<!--  -->
<!--  -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>Order</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
		<link type="text/css" rel="stylesheet" href="css/rooms.css" />
		<script type="text/javascript" src="js/JFCore.js"></script>
		<script type="text/javascript" src="js/JFForms.js"></script>
		<script type="text/javascript" src="js/jquery.js"></script>

		<!---strat-date-piker---->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<script src="js/jquery-ui.js"></script>
		<script>
	$(function() {
		$("#datepicker,#datepicker1").datepicker();
	});
</script>
		<!---/End-date-piker---->

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
<script type="text/javascript">
	function yuding(){
		alert("支付成功!");
	}
</script>
	</head>
	<!-- 页面头部 -->
	<jsp:include page="head.jsp" />

	<div class="main_bg" style="background: #ebebeb">
		<div class="main">
			<div class="ocheck" style="margin-left: 50px;">
				<div style="font-weight: 700; color: #484848; font-size: 36px; line-height: 44px; font-family: ‘微软雅黑’; margin: 20px;">
					检查并支付
				</div>
			</div>
			
			<form name="orderconfirm" id="orderconfirm" method="post" action="RoomServlet?r_id=${r.rid }">
			
			<div style="margin-top: 50px; margin-left: 100px;color: #484848; font-size: 22px;font-family: ‘微软雅黑’;">
				订单信息
			</div>
			<!-- start订单信息 -->
			<div class="order"
				style="border: 1px solid #6b6b6b; margin-top: 50px; margin-left: 100px;width: 900px;height: 360px">
				
				
				<div style="float: left;width: 450px">
					<div class="opic" style="margin-top:70px;margin-left:77px;width: 210px;height: 150px">
						<img alt="" src="${r.rimg }">
					</div>
					<div class="otitli" style="margin-left: 20px">
						<div style="margin: 20px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
							${r.rtitle }
						</div>
						<div style="margin: 20px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
							房东：${u.uname }
						</div>
					</div>
				</div>
				<div style="float: left;">
					<div style="border-left: 1px solid #6b6b6b">
						<div style="margin: 20px;margin-left: 50px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
							订单生成时间：${datetime }
						</div>
						<div style="margin: 20px;margin-left: 50px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
							入住时间：${checkindate }
						</div>
						<div style="margin: 20px;margin-left: 50px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
							退房时间：${canceldate }
						</div>
						<div style="margin: 20px;margin-left: 50px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
							人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数：${number }
						</div>
						<div style="margin: 20px;margin-left: 50px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
							价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：￥${r.rprice }
						</div>
						<div style="margin: 20px;margin-left: 50px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
							天&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数：${days }
						</div>
						<div style="margin: 20px;margin-left: 50px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
							总&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：￥${number*r.rprice*days }
						</div>
					</div>
				</div>
			</div>
			<!-- end订单信息 -->
			
			
			<div style="margin-top: 50px; margin-left: 100px;color: #484848; font-size: 22px;font-family: ‘微软雅黑’;">
				支付方式
			</div>
			<!-- start支付 -->
			<div class="order"
				style="border: 1px solid #6b6b6b; margin-top: 50px; margin-left: 100px;width: 900px;height: 290px">
				<div style="margin-top:30px;margin-left:77px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
					<input id="g" type="radio" name="pd_FrpId" value="1" checked="checked" />
					工商银行
					<img src="img/icbc.png" align="middle" />
					<input id="z" type="radio" name="pd_FrpId" value="1" />
					中国银行
					<img src="img/bc.png" align="middle" />
					<br />
					<br />
					<input id="n" type="radio" name="pd_FrpId" value="1" />
					农业银行
					<img src="img/abc.png" align="middle" />
					<input  id="j" type="radio" name="pd_FrpId" value="1" />
					建设银行
					<img src="img/ccb.png" align="middle" />
					<br />
					<br />
					<input  id="t" type="radio" name="pd_FrpId" value="1" />
					交通银行
					<img src="img/bcc.png" align="middle" />
				</div>
			</div>
			<!-- end支付 -->
			
			<div class="pay" style="margin-top: 50px; margin-left: 100px;">
				<div style="margin: 20px;font-size: 17px; color: #6b6b6b; line-height: 28px; font-family: '微软雅黑';">
					退订政策
					<br>
					在购买后的24小时内取消预订可以获得全额退款。
				</div>
				<div class="date_btn" style="width: 300px">
					
						<input onclick="yuding()" type="submit" style="color: #fff;font-weight: 700;" value="￥${number*r.rprice*days }&nbsp;马上预订"/>
					
				</div>
			</div>
			</form>
			
		</div>
	</div>

	<!-- 页面底部 -->
	<jsp:include page="bottom.jsp" />
	<body>
	</body>
</html>
