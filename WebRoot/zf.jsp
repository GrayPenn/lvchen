<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
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

		<title>My JSP 'zf.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link
			href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
			rel='stylesheet' type='text/css'>
		<link href="css/style.css" rel="stylesheet" type="text/css"
			media="all" />

		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
.m {
	width: 800px;
	height: 850px;
	border: 1px solid #dce0e0;
	margin-left: 200px;
	margin-top: 10px;
}

.order1 {
	border: 1px solid #dce0e0;
	margin-top: 20px;
	width: 800px;
	height: 200px
}

.order {
	border: 1px solid #dce0e0;
	margin-top: 20px;
	width: 800px;
	height: 300px
}

.m form input[type="submit"] {
	text-transform: capitalize;
	width: 200px;
	float: right;
	background: #32A2E3;
	font-family: 'Open Sans', sans-serif;
	color: #FFF;
	padding: 8px;
	border: none;
	font-size: 1.5em;
	outline: none;
	cursor: pointer;
	margin-top: 5px;
}
p{
margin-left: 200px;
margin-top: 10px;
}
</style>
	</head>
	<body>
	<jsp:include page="head.jsp" />
<%
		  Date date=new Date();
		  SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		  String  str=format.format(date);
		%>
<script type="text/javascript">

//if(document.order.pd_FrpId.value!="1"){
//		alert("支付失败！")
//		location='zf.jsp';
 //    return false;
//}else{
//	alert("支付成功！")
//	location='experience.jsp';
//	return true;


        function check(){
        
  	   alert("支付成功！")
  	   return true;

	         }
</script>		
		
		<div class="m">
				<h1 style="">
					生成订单！<%=str %>
				</h1>
				<div class="order1">
					<p>
						体验人姓名：${name }
					</p>
					<p>
						年龄：${age}  
					</p>
					<p>
						身份证号码：${sfz}
					</p>
					<p>
						电话：${phone}
					</p>
					<p>
						选择体验日期：${checkindate}
					</p>
					<p>
						价格：${price}
					</p>
				</div>
				<h2>
					请选择支付方式
				</h2>
				<div class="order">
					<h3>
						选择银行：
					</h3>
					<br />
				
					<form action="ToindexServlet" onsubmit="return check()">
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
					<br />
					
					<input type="submit" id="btn" value="确认支付" />
				
			</form>
			</div>

			<div class="order1">
				<img alt="" src="img/zfb.png" width="150" height="150">支付宝支付
				<img alt="" src="img/wx.png" width="150" height="150">微信支付

			</div>
		</div>


	</body>
</html>
