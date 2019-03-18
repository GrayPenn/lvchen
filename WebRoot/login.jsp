<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 注册 -->
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

		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

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
		
	//调用发送验证码的方法
	var httpRequest = null;  //请求对象
		var rNum =parseInt(Math.random()*(9999-999+1)+999);//生成一个从 m - n 之间的随机整数
		//调用发送验证码的方法
		function send(){
			var phoneNum= document.getElementById("phoneNum").value;
			alert(rNum);
			//alert(phoneNum);
			
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
	            alert("信息发送成功!")
	            
			}
			
		}	



		
	function checkUname(oval) {
		if (oval == "") {
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

		httpRequest.open("post", "LoginNameServlet", true);

		httpRequest.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");

		httpRequest.onreadystatechange = NameCallBack;//NameCallBack下面调用的回调方法名

		httpRequest.send("uname=" + oval);  //发送请求
	}

	function NameCallBack(){
		if(httpRequest.readyState==4 && httpRequest.status==200 ){
             document.getElementById("aname_span").innerHTML=httpRequest.responseText;
		}
		
	}	



	//使用正规表达式验证手机号是否相同
	function checkPhone(oval)
	 {
		if (oval == "") {
			return;
		}
	
	  var phoneValue=document.getElementById("phoneNum").value;
	  if (!isPhone(phoneValue))
	  {
	  
	   
	   document.getElementById("phone_span").innerHTML="<label style='color: red;'>错误</label>";
	   return;
	   
	  }
	  
	  document.getElementById("phone_span").innerHTML="<label style='color: blue;'>正确</label>";
	  document.getElementById("message").disabled=false; 
	  document.getElementById("sendbt").disabled=false; 
	  //$("#message").show();
	  //$("#sendbt").show();
	 }
	 
	function isPhone(str){
	       var reg = /^1(3|4|5|7|8)\d{9}$/;
	       return reg.test(str);
	   }


	 //验证密码是否相同
	function checkPwd() {
		//alert("进来了!");
		var pwd=document.getElementById("pwd").value;
		var q_pwd=document.getElementById("q_pwd").value;
		if (q_pwd == ""||pwd=="") {
			return;
			}
		
		
		//String pwd=document.getElementById("pwd").value;
		//String q_pwd=document.getElementById("q_pwd").value;
		if(pwd!=q_pwd){
			
			 document.getElementById("pwd_span").innerHTML="<label style='color: red;'>密码不同</label>";
			return;
				}
		document.getElementById("pwd_span").innerHTML="<label style='color: blue;'>密码相同</label>";
		  
		}
	$(function(){
	    $("#btn").click(function(){
	       var message = document.getElementById("message").value;
	        if(rNum!=message){
	            alert("验证码错误!")
	        }else{
	            $(this).prop("type","submit");
	        }
	    });
    
	});
	

</script>




		<!-- 登录注册的js及css -->

		<link rel="stylesheet" href="css/style_login.css">
		<link href="css/popup-box.css" rel="stylesheet" type="text/css"
			media="all" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>

		</script>
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
		<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
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

						<div class="w3layouts">
							<div class="signin-agile">
								<h2>
									登录
								</h2>
								<form method="post" action="LoginServlet">
									<input name="from" type="hidden"
										value="<%=request.getParameter("from")%>">
									<input name="ex_id" type="hidden"
										value="<%=request.getParameter("ex_id")%>">
									<input name="r_id" type="hidden"
										value="<%=request.getParameter("r_id")%>">
									<div>
										<span><label>
												&nbsp;&nbsp;用户名
											</label> </span>
										<span><input name="uname" type="text" class="textbox">
										</span>
									</div>

									<div>
										<span><label>
												&nbsp;&nbsp;密码
											</label> </span>
										<span><input name="upwd" type="password"
												class="textbox"> </span>
									</div>

									<div>
										<span><label>
												&nbsp;&nbsp;自动登录
											</label> <input type="checkbox" value="save" name="issave"
												id="Icheckbox" /> </span>
									</div>

									<div>
										<span><input type="submit" value="登录"> </span>
									</div>
								</form>
							</div>
							<div class="signup-agileinfo">
								<h3>
									不得传播下列信息
								</h3>
								<p style="font-size: 2px;width: 400px;">
								（一）煽动抗拒、破坏宪法和法律、行政法规实施的； <br/>
								（二）煽动颠覆国家政权，社会主义制度的； <br/>
								（三）煽动分裂国家、破坏国家统一的； <br/>
								（四）煽动民族仇恨、民族歧视，破坏民族团结的； <br/>
								（五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的； <br/>
								（六）宣扬封建迷信、凶杀、恐怖、教唆犯罪的； <br/>
								</p>
								<div class="more">
									<a class="book popup-with-zoom-anim button-isi zoomIn animated"
										data-wow-delay=".5s" href="#small-dialog">点击注册</a>
								</div>
							</div>
							<div class="clear"></div>
						</div>
						<div class="footer-w3l">

						</div>
						<div class="pop-up">
							<div id="small-dialog" class="mfp-hide book-form">
								<h3>
									注册表单
								</h3>
								<form method="post" action="RegisterServlet">
									<div>
										<span><label
												style="font-family: '微软雅黑'; font-size: 15px;">
												用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;
											</label> </span>
										<span><input name="uname" type="text" class="textbox"
												onblur="checkUname(this.value)" style="width: 230px;">
											<label id="aname_span">

											</label> </span>
									</div>

									<div>
										<span><label
												style="font-family: '微软雅黑'; font-size: 15px;">
												电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话:&nbsp;&nbsp;
											</label> </span>
										<span><input id="phoneNum" name="uphone" type="text"
												class="textbox" onblur="checkPhone(this.value)"
												style="width: 230px;"> <label id="phone_span">

											</label> </span>
									</div>

									<div>
										<span> <input type="text" id="message"
												disabled="disabled" placeholder="输入正确手机号才可以使用"
												style="width: 230px;"> <input id="sendbt"
												type="button" value="发送验证码" onclick="send()"
												disabled="disabled"> <br /> </span>
									</div>
									<div>
										<span><label
												style="font-family: '微软雅黑'; font-size: 15px;">
												密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;
											</label> </span>
										<span><input id="pwd" name="upwd" type="password"
												class="textbox" style="width: 230px;"> </span>
									</div>
									<div>
										<span><label
												style="font-family: '微软雅黑'; font-size: 15px;">
												确认密码:&nbsp;&nbsp;&nbsp;
											</label> </span>
										<span><input id="q_pwd" name="q_upwd" type="password"
												class="textbox" onblur="checkPwd()" style="width: 230px;">
											<label id="pwd_span">

											</label> </span>
									</div>
									<div>
										<center>
											<span><input type="button" id="btn" value="注册">
											</span>
										</center>
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