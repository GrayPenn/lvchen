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
<!-- 可以用于活动体验 -->
<!--  -->
<!--  -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'experience.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
	rel='stylesheet' type='text/css'>
	
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />



  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Set here the key for your domain in order to hide the watermark on the web server -->
<style type="text/css">
#allmap {
	width: 600px;
	height: 400px;
	overflow: hidden;
	margin-left: 50;
	font-family: "微软雅黑";
}
</style>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=hwdBnY1bFRo3DDatOGcG5I3AzbiVvCYb"></script>

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



<c:if test="${from=='1'}">
			<script type="text/javascript">
	alert("登录成功");
</script>
		</c:if>


		<c:if test="${from=='2'}">
			<script type="text/javascript">
	alert("删除成功");
</script>
		</c:if>
</head>
<body onload="theLocation()">
	<!-- 页面头部 -->
	<jsp:include page="head.jsp" />
	<!--start main -->
	<div class="main_bg">
		<div class="wrap">
			<div class="main">
				<div class="content">
					<div class="room">
						<h4>热门体验活动</h4>
						<a href="ToAddNewsServlet">[添加活动信息]</a>
						<p class="para">活动：${ex.ex_title}</p>
						<p class="para">
							体验达人： <a href="user.jsp">${u.uname}</a>
						</p>
						<p class="para">时间：${ex.ex_time}</p>

						<p class="para">剩余体验名额：${ex.c_id}</p>
						<p class="para">注意事项：${ex.ex_tips}</p>

					</div>
					<div class="room">
						<hr />
						<div class="grids_of_2">
							<div class="grids_of_para">
								<%
										//获取当前在线人数对象
										Object onlinenum = application.getAttribute("online");
										if (onlinenum == null) {//原本没有
											onlinenum = 1;
										} else {
											int num = Integer.valueOf(onlinenum.toString());//原本有
											num++;
											onlinenum = num;
										}
										application.setAttribute("online", onlinenum);
									%>
								<p class="para">看来大家都想预订这个体验。本周已有超过${online}人浏览本活动。</p>

							</div>
							<div class="clear"></div>
						</div>
						<hr>

						<div class="grids_of_para">
							<p class="para">体验内容:</p>
							<p class="para2">${ex.ex_content}</p>
						</div>
						<div class="clear"></div>
					</div>
					<hr>
					<div class="grids_of_2">

						<div class="grids_of_para">
							<p class="para">体验内包括的东西 :</p>
							<p class="para2">${ex.ex_things}</p>
						</div>
						<div class="clear"></div>
					</div>
					<hr>

					<div class="grids_of_2">

						<div class="grids_of_para">
							<p class="para">体验地点:</p>
							<p class="para2">我们的位置</p>
							<div id="allmap"></div>
						</div>
						<div class="clear"></div>
					</div>
					<hr>



					<div class="grids_of_2">
						<div class="grids_of_para">
							<p class="para">
								团体人数:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这个体验共有15个名额。
							</p>
							<p class="para2">您不需要预订全部名额。旅程体验旨在广交朋友，因此其他参加者也可以加入。</p>

						</div>
						<div class="clear"></div>
					</div>
					<hr>

					<div class="grids_of_2">

						<div class="grids_of_para">
							<p class="para">
								对参加者的要求:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年龄\政府签发的身份证件
							</p>
							<p class="para2">所有体验者均须年满18岁，而且不能携带儿童参加。
								您将需要拍一张自拍照，并将它和您身份证件上的照片进行匹配，以帮助爱彼迎确认真正将要参加体验的是谁。您只需这么做一次。</p>
						</div>
						<div class="clear"></div>
					</div>
					<hr>

					<div class="grids_of_2">

						<div class="grids_of_para">
							<p class="para">
								灵活退订:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;退订政策
							</p>
							<p class="para2">任何旅程或体验在预订完成后的24小时内皆可以取消，您将获得全额退款。</p>
						</div>
						<div class="clear"></div>
					</div>

				</div>

				<div class="sidebar">

					<img alt="" src="upload${ex.ex_img}">

					<h4>&nbsp;&nbsp;&nbsp;${ex.ex_title}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥${ex.ex_price}/每人</h4>

					<div class="date_btn">
						<form  action="ToDDexSerlet?ex_id=${ex.ex_id}" method="post">
							<input type="button" value="预订体验" style="width: 150px;" onclick="jiancha()"/><br>
							<a href="login.jsp" style="margin-top: 20px">没有账号？请注册！</a>
						
						</form>
					</div>
					<div>
						<p class="pl">评论：</p>
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
								url="experienceServlet?ex_id=${ex.ex_id }&"
								pageMax="${pageCount}" />
						</p>
						<div>
							<hr>
						</div>
						<p>
						<form action="AddCommentServlet" method="post">
							<div>
								<input type="hidden" name="ex_id" value="${ex.ex_id }">
								<!-- 隐藏域房屋id -->
								<textarea name="body" class="xheditor"
									style="width: 95%; height: 100px;"></textarea>
							</div>
							</br>
							<button type="submit">确定</button>
						</form>
						</p>


					</div>
					<h4>点击分享</h4>
					<ul class="s_nav1">
						<li><a href="#"><img src="images/tu1.png" /> </a></li>
						<li><a href="#"><img src="images/tu2.png" /> </a></li>
						<li><a href="#"><img src="images/tu3.png" /> </a></li>
						<li><a href="#"><img src="images/tu4.png" /> </a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="top2">
				<div id="myCarousel" class="carousel slide" style="width: 900px; margin: auto;margin-top: 20px" >
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
		<li data-target="#myCarousel" data-slide-to="4"></li>
		<li data-target="#myCarousel" data-slide-to="5"></li>
		<li data-target="#myCarousel" data-slide-to="7"></li>
		
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
			<img src="img/aa.jpg" alt="First slide">
			<div class="carousel-caption">标题 1</div>
		</div>
		<div class="item">
			<img src="img/bb.jpg" alt="Second slide">
			<div class="carousel-caption">标题 2</div>
		</div>
		<div class="item">
			<img src="img/cc.jpg" alt="Third slide">
			<div class="carousel-caption">标题 3</div>
		</div>
		<div class="item">
			<img src="img/dd.jpg" alt="Third slide">
			<div class="carousel-caption">标题 4</div>
		</div>
		<div class="item">
			<img src="img/ee.jpg" alt="Third slide">
			<div class="carousel-caption">标题5</div>
		</div>
		<div class="item">
			<img src="img/hh.jpg" alt="Third slide">
			<div class="carousel-caption">标题6</div>
		</div>
		<div class="item">
			<img src="img/tt.jpg" alt="Third slide">
			<div class="carousel-caption">标题 7</div>
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="carousel-control left" href="#myCarousel" 
	   data-slide="prev" >&lsaquo;</a>
	<a class="carousel-control right" href="#myCarousel" 
	   data-slide="next">&rsaquo;</a>
</div> 
		
			</div>
		</div>
	</div>
	<!--start main -->
	

	<!-- 页面底部 -->
	<jsp:include page="bottom.jsp" />
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	map.centerAndZoom(new BMap.Point(116.331398, 39.897445), 11);//默认坐标地点
	map.enableScrollWheelZoom(true);

	// 用经纬度设置地图中心点
	//alert("${x},${y}");//这里都能取得到值
	//alert("${x}");
	//alert("${y}");
	function theLocation() {
		
		map.clearOverlays();
		var new_point = new BMap.Point(${ex.ex_location});//输入我们的要得坐标	
		var marker = new BMap.Marker(new_point); // 创建标注
		map.addOverlay(marker); // 将标注添加到地图中
		map.panTo(new_point);

	}
	function jiancha(){
			var name='${user.uname}';
			var id='${u.uid}';
	
			if(name==""){
				alert("请先登录账号!");
				location='login.jsp?from=1&ex_id='+${ex.ex_id}+'';
			}else{
				location='ToDDexSerlet?ex_id='+${ex.ex_id}+'&uid='+id+'';
				}
		}
</script>


