<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="mxt"%>
<!-- 分页插件 -->
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 房间详细信息-->
<!--  -->
<!--  -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>rooms</title>




<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<!-- 地图 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
#allmap {
	width: 95%;
	height: 75%;
	overflow: hidden;
	margin: 0;
	font-family: "微软雅黑";
}
</style>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=hwdBnY1bFRo3DDatOGcG5I3AzbiVvCYb"></script>
<!-- 地图 -->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
	rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/JFGrid.css" />
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
<link type="text/css" rel="stylesheet" href="css/rooms.css" />
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

<!---strat-date-piker---->
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker,#datepicker1").datepicker();
	});
</script>
<!---/End-date-piker---->

<!-- form不能为空 -->
<script type="text/javascript" language="javascript">
	function checkform() {

		var name='${user.uname}';
		var id='${u.uid}';
		var name2='${u.uname}';
		//alert(${u.uid});
//alert(id);
//alert(name2);
//alert(name);
		if(name==""){
			alert("请先登录账号!");
			location='login.jsp?from=2&r_id='+${r.rid}+'';
			return false;
		}

		
		if (document.order.roomstyle.value == "选择类型") {
			alert("请选择房间类型!");
			document.order.roomstyle.focus();
			return false;
		}

		if (document.order.checkindate.value == "MM/DD/YY") {
			alert("请选择入住时间!");
			document.order.roomstyle.focus();
			return false;
		}
		if (document.order.canceldate.value == "MM/DD/YY") {
			alert("请选择退房时间!");
			document.order.roomstyle.focus();
			return false;
		}
		return true;
	}
</script>
<!-- form不能为空 -->

<!-- 计算预定天数 -->
<script type="text/javascript">
	
</script>
<!-- 计算预定天数 -->


</head>

<body onload="theLocation()">
	<!-- 页面头部 -->
	<jsp:include page="head.jsp" />

	<!-- 页面主体 -->
	<div class="main_bg">
		<div class="main">
			<!-- 主体图片 -->
			<div class="det_pic" style="text-align: center;">
				<img alt="" src="${r.rimg }">
			</div>

			<!-- 主体图片 -->
			<!-- main -->


			<!-- <div class="main1">  -->
			<div class="main2" style="height: 850px">
				<!-- 主体左边详细内容 -->
				<div class="left"
					style="height: auto; width: 60%; float: left; margin-left: 50px">

					<hr class="hrstyle">
					<h2 class="h2style">${r.rtitle }</h2>


					<hr class="hrstyle">
					<div class="det_text">
						<h3>关于此房源</h3>

						<p class="roompara">${r.rinfo }</p>
						<hr>
						<div class="roompara">
							<div class="content1">
								<span>房屋</span>
							</div>
							<div class="content2">
								<div class="content3">可住：${r.rcounting }</div>
								<c:if test="${equ.beds==1 }">
									<div class="content3">床铺：单人床(小)</div>
								</c:if>
								<c:if test="${equ.bedb==1 }">
									<div class="content3">床铺：单人床(大)</div>
								</c:if>
								<c:if test="${equ.bedd==1 }">
									<div class="content3">床铺：双人床</div>
								</c:if>
								<div class="content3">入住时间：15:00后</div>
							</div>
							<div class="content2">
								<div class="content3">退房时间：12:00</div>
								<div class="content3">房间类型：${r.rstyle }</div>
							</div>
							<hr class="hrstyle2">

							<div class="content1">
								<span>设施</span>
							</div>
							<div>
								<div class="content2">
									<c:if test="${equ.washer==1 }">
										<div class="content3">洗衣机</div>
									</c:if>
									<c:if test="${equ.washer==0 }">
										<div class="content3" style="text-decoration: line-through;">
											洗衣机</div>
									</c:if>

									<c:if test="${equ.air_condit==1 }">
										<div class="content3">空调</div>
									</c:if>
									<c:if test="${equ.air_condit==0 }">
										<div class="content3" style="text-decoration: line-through;">
											空调</div>
									</c:if>

									<c:if test="${equ.hairdrier==1 }">
										<div class="content3">吹风机</div>
									</c:if>
									<c:if test="${equ.hairdrier==0 }">
										<div class="content3" style="text-decoration: line-through;">
											吹风机</div>
									</c:if>

									<c:if test="${equ.pet==1 }">
										<div class="content3">允许携带宠物</div>
									</c:if>
									<c:if test="${equ.pet==0 }">
										<div class="content3" style="text-decoration: line-through;">
											允许携带宠物</div>
									</c:if>

								</div>
								<div class="content2">
									<c:if test="${equ.wifi==1 }">
										<div class="content3">无线上网</div>
									</c:if>
									<c:if test="${equ.wifi==0 }">
										<div class="content3" style="text-decoration: line-through;">
											无线上网</div>
									</c:if>

									<c:if test="${equ.kitchen==1 }">
										<div class="content3">厨房</div>
									</c:if>
									<c:if test="${equ.kitchen==0 }">
										<div class="content3" style="text-decoration: line-through;">
											厨房</div>
									</c:if>

									<c:if test="${equ.needs==1 }">
										<div class="content3">生活必需品</div>
									</c:if>
									<c:if test="${equ.needs==0 }">
										<div class="content3" style="text-decoration: line-through;">
											生活必需品</div>
									</c:if>
								</div>

							</div>
							<hr class="hrstyle2">

							<div class="content1">
								<span>收费相关</span>
							</div>
							<div>
								<div class="content2">
									<div class="content3">押金：￥1000</div>
									<div class="content3">清洁费：￥100</div>

								</div>
								<div class="content2">
									<div class="content3">价格：每人每天￥${r.rprice }</div>

								</div>

							</div>
							<hr class="hrstyle2">

							<div class="content1">
								<span>预定取消政策</span>
							</div>
							<div>
								<div style="float: left">
									<div class="content3">严格</div>
									<br>
									<div class="content3">距离旅程开始7天之前取消预订可获预订费用的50%及服务费的退款。</div>
								</div>

							</div>

						</div>

					</div>

				</div>
				<!-- 主体右边预定 -->
				<div class="right"
					style="height: auto; width: 264px; float: right; margin-right: 50px">
					<form method="post" action="OrderServlet?r_id=${r.rid }"
						name="order" id="order">
						<h5 class="roompara">房间类型：</h5>
						<!----------start section_room----------->
						<div class="section_room">
							<select name="roomstyle" id="country"
								onChange="change_country(this.value)" class="frm-field required"
								style="width: 264px">
								<option value="选择类型">选择类型</option>
								<option value="整体房源">整体房源</option>
								<option value="独立房间">独立房间</option>

							</select>
						</div>
						<h5 class="roompara">入住时间：</h5>
						<div class="book_date">

							<input class="date" style="width: 264px" name="checkindate"
								id="datepicker" type="text" value="MM/DD/YY"
								onFocus="this.value = '';"
								onBlur="if (this.value == '') {this.value = 'MM/DD/YY';}">


						</div>
						<h5 class="roompara">退房时间：</h5>
						<div class="book_date">

							<input class="date" style="width: 264px" name="canceldate"
								id="datepicker1" type="text" value="MM/DD/YY"
								onFocus="this.value = '';"
								onBlur="if (this.value == '') {this.value = 'MM/DD/YY';}">

						</div>
						<h5 class="roompara">人数:</h5>
						<!----------start section_room----------->
						<div class="section_room">
							<select name="number" id="country"
								onChange="change_country(this.value)" class="frm-field required"
								style="width: 264px">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</div>
						<div class="date_btn">

							<input type="submit" value="book now"
								onclick="javascript: return (checkform());" style="width: 264px" />

						</div>
					</form>
				</div>
			</div>
			<br> <br>
			<!--  </div> -->

			<!-- 评价 -->
			<div class="pingjia">
				<h6 class="h6style">评论</h6>
				<br>

				<c:forEach items="${comment_list}" var="n" varStatus="status">
					<div style="float: left">
						<img width="60px" height="60px" alt=""
							src="${uicon_list[status.index]}">
						<!-- 头像 -->
					</div>
					<div style="float: left; width: 100px; height: 50px; z-index: 1;">
						<div width="58px">
							&#160; ${n.uname}
							<!-- 名字 -->
						</div>
						</br>
						<div width=" 58px">
							&#160;${n.ctime}
							<!-- 时间 -->
						</div>
					</div>
					<div style="clear: both">
						<br /> ${n.ccontext}
						<!-- 评论内容 -->
					</div>
					<div>
						<hr>
					</div>
				</c:forEach>


				<p align="right">
					<mxt:page pageIndex="${index}"
						url="RoomServlet?r_id=${r.rid}&" pageMax="${pageCount}" />
				</p>
				<div>
					<hr>
				</div>
				<p>
				<form action="AddCommentServlet" method="post">
					<div>
						<input type="hidden" name="r_id" value="${r.rid}">
						
						<!-- 隐藏域房屋id -->
						<textarea name="body" class="xheditor"
							style="width: 95%; height: 100px;"></textarea>
					</div>
					</br>
					<button type="submit">确定</button>
				</form>
				</p>


			</div>
			<hr style="margin: 50px 50px">

			<!-- 房东信息 -->
			<div class="master">
				<h6 class="h6style">房东：${u.uname }</h6>
				<br>
				<div class="roompara">
					<a href="user.jsp"><img
						style="border-radius: 200px; width: 77px; height: 77px; margin-left: 127px"
						alt="" src="${u.uicon }"> </a> <br>
					<div class="content5" style="margin-left: 127px;">${u.ucity }
					</div>
					<br>
					<div class="content5">
						<img style="width: 22px; height: 22px; margin-left: 127px"
							alt="已验证" src="images/mastericon1.png"> <span>已验证身份</span>
					</div>
					<br>
					<div class="content5" style="margin-left: 127px;">
						联系电话：${u.uphone }，邮箱：${u.uemail }</div>
				</div>

			</div>
			<hr style="margin-left: 50px">

			<!-- 地图 -->
			<div class="map" style="margin-left: 50px">
				<h6 class="h6style">地址</h6>
				<br>
				<div id="allmap"></div>
			</div>
		</div>
	</div>

	<!-- 页面底部 -->
	<jsp:include page="bottom.jsp" />
</body>
</html>

<script type="text/javascript">
	//百度地图API功能
	var map = new BMap.Map("allmap");
	map.centerAndZoom(new BMap.Point(116.331398, 39.897445), 11);//默认坐标地点
	map.enableScrollWheelZoom(true);

	// 用经纬度设置地图中心点
	//alert("${x},${y}");//这里都能取得到值
	//alert("${x}");
	//alert("${y}");
	function theLocation() {
		//alert("11");
		map.clearOverlays();
		var new_point = new BMap.Point(${h.hlocation });//输入我们的要得坐标	
		var marker = new BMap.Marker(new_point); // 创建标注
		map.addOverlay(marker); // 将标注添加到地图中
		map.panTo(new_point);

	}
</script>