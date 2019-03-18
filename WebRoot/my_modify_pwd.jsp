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
		<base href="<%=basePath%>">

		<title>旅晨--清晨出发，在家的旅程</title>
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
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />
		<script src="js/jquery.min.js"></script>
		<!--start slider -->
		<link rel="stylesheet" href="css/fwslider.css" media="all">
		<script src="js/jquery-ui.min.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/fwslider.js"></script>
		<!--end slider -->
		<!---strat-date-piker---->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<script src="js/jquery-ui.js"></script>

		<!---/End-date-piker---->
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
		<script type="text/javascript">
		//验证密码
		var httpRequest = null;  //请求对象
		var rNum =parseInt(Math.random()*(9999-999+1)+999);//生成一个从 m - n 之间的随机整数
		
		//var uname = ${sessionScope.user.uname };
	function isOpwd() {
		var opwd = document.getElementById("opwd").value;
		var uname = document.getElementById("uname").value;
		//alert(opwd);

		if (opwd == "") {
			return;
		}
		try {
            //浏览器是ＩＥ二代
			httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				//浏览器是ＩＥ一代
				httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				try {
　　　　　　　　　　　　　　//谷歌火狐
					httpRequest = new XMLHttpRequest();
					if (httpRequest.overrideMimeType) {
						httpRequest.overrideMimeType("text/xml");
					}
				} catch (e) {

				}
			}

		}
		if (httpRequest == null) {
			alert("浏览器不支持ajax");
			return;
		}

		httpRequest.open("post", "CheckPwdServlet", true);

		httpRequest.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");

		httpRequest.onreadystatechange = PwdCallBack;//NameCallBack下面调用的回调方法名

		httpRequest.send("opwd=" + opwd +"&uname=" +uname);  //发送请求
	}

	function PwdCallBack(){
		if(httpRequest.readyState==4 && httpRequest.status==200 ){
             document.getElementById("lable_opwd").innerHTML=httpRequest.responseText;
		}
		
	}	
	
	//验证手机号
	function sednPhone() {
		var phoneNum = document.getElementById("phone").value;

		//alert(phoneNum);
		//alert(rNum);
		
		
		try {
            //浏览器是ＩＥ二代
			httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				//浏览器是ＩＥ一代
				httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				try {
　　　　　　　　　　　　　　//谷歌火狐
					httpRequest = new XMLHttpRequest();
					if (httpRequest.overrideMimeType) {
						httpRequest.overrideMimeType("text/xml");
					}
				} catch (e) {

				}
			}

		}
		if (httpRequest == null) {
			alert("浏览器不支持ajax");
			return;
		}

		httpRequest.open("post", "SendMessageServlet", true);

		httpRequest.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");

		httpRequest.onreadystatechange = SendMessage;//NameCallBack下面调用的回调方法名

		httpRequest.send("phoneNum=" + phoneNum +"&rNum=" + rNum );  //发送请求
		
	}
	function SendMessage(){
		if(httpRequest.readyState==4 && httpRequest.status==200 ){
             //document.getElementById("aname_span").innerHTML=httpRequest.responseText;
            //alert("信息发送成功!")
            document.getElementById("lable_phone").innerHTML="<label style='color: blue;'>信息发送成功！</label>";
        	
		}
		
	}	
	//验证短信
	function isMessage() {
		var message = document.getElementById("message").value;
		
		//alert(message);
		if(message!=rNum){
			document.getElementById("lable_message").innerHTML="<label style='color: red;'>错误</label>";
			return;
		}
		document.getElementById("lable_message").innerHTML="<label style='color: blue;'>正确</label>";
		
		
	}
	
	//更改提交按钮类型
	$(function() {
		$("#btn").click(function() {
			var message = document.getElementById("message").value;
			var npwd = document.getElementById("npwd").value;
			var opwd = document.getElementById("opwd").value;
			var phoneNum = document.getElementById("phone").value;
			
			if(npwd==""||message==""||opwd==""||phoneNum==""){
				document.getElementById("lable_npwd").innerHTML="<label style='color: red;'>信息不详细！</label>";
			}
		
			if (rNum != message) {
				//alert("验证码错误!");
				document.getElementById("lable_message").innerHTML="<label style='color: red;'>错误</label>";
			} else {
				$(this).prop("type", "submit");
			}
		});

	});
</script>




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
					<ol class="breadcrumb">
						<li>
							<a href="my_information.jsp">修改信息</a>
						</li>
						<li>
							<a href="my_modify_pwd.jsp">修改密码</a>
						</li>

					</ol>
					<div>
						<form action="ModifyPwdServlet" method="post">
							<input type="hidden" value="${sessionScope.user.uname }"
								name="uname" id="uname" />
							<table class="table table-striped table-hover">

								<tr style="height: 50px;">
									<td colspan="3">
										<center style="padding-top: 10px;">
											请先确认基本信息：

										</center>
									</td>

								</tr>

								<tr style="height: 50px;">
									<td style="padding-top: 20px;">
										&nbsp;&nbsp;&nbsp;请输入原始密码：

									</td>
									<td style="padding-top: 20px;">
										<input type="text" id="opwd" />
										<label id="lable_opwd">

										</label>
									</td>
									<td>
										<input type="button" name="q_opwd" style="height: 40px;"
											value="验证" onclick="isOpwd()" />
									</td>
								</tr>

								<tr style="height: 50px;">
									<td colspan="3">
										<center style="padding-top: 10px;">
											手机信息验证：
										</center>
									</td>

								</tr>
								<tr style="height: 50px;">

									<td style="padding-top: 20px;">
										&nbsp;&nbsp;&nbsp;输入手机号码：
									</td>
									<td style="padding-top: 20px;">
										<input type="text" id="phone" />
										<label id="lable_phone">

										</label>
									</td>
									<td>
										<input type="button" name="q_phone" style="height: 40px;"
											value="验证" onclick="sednPhone()" />
									</td>
								</tr>

								<tr style="height: 50px;">

									<td style="padding-top: 20px;">
										&nbsp;&nbsp;&nbsp;输入验证码：
									</td>
									<td style="padding-top: 20px;">
										<input type="text" id="message" />
										<label id="lable_message">

										</label>
									</td>
									<td>
										<input type="button" name="q_message" style="height: 40px;"
											value="验证" onclick="isMessage()" />
									</td>
								</tr>


								<tr style="height: 50px;">
									<td colspan="3">
										<center style="padding-top: 10px;">
											确认后修改密码：
										</center>
									</td>

								</tr>


								<tr style="height: 50px;">
									<td style="padding-top: 20px;">
										&nbsp;&nbsp;&nbsp;修改密码：
									</td>
									<td style="padding-top: 20px;">

										<input type="text" name="npwd" id="npwd">
										<label id="lable_npwd">

										</label>
									</td>
									<td>
										<input type="button" id="btn" value="提交" style="height: 40px;">
									</td>
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
