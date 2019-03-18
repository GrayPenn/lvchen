<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DDregister.jsp' starting page</title>
    
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
			<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
.main_bg form input[type="submit"] {
	text-transform: capitalize;
	width:300px;
	float:right;
	background: #32A2E3;
	font-family: 'Open Sans', sans-serif;
	color: #FFF;
	padding: 8px;
	border: none;
	font-size: 1.5em;
	outline: none;
	cursor: pointer;
	margin-top: 30px;
}
.order{
border: 1px solid #dce0e0;
 margin-top: 50px; 
 margin-left: 100px;width: 900px;
 height: 330px
 
}
h3{
font-size: 25px;
font-weight: bold;
color: red;
margin-bottom: 8px;
margin-top: 5px
}
.zfnum{

float:left;
margin-left: 400px;
font: 30px bolder;
margin-top: 30px;
margin-bottom: 20px;
color: red;
}
hr{
border:1px solid #dce0e0;
}
p{
margin-left: 100px;
margin-top: 10px;
}

</style>


<script type="text/javascript" language="javascript">
		function checkform(){	
			if(document.order.checkindate.value=="MM/DD/YY"){
				alert("请选择预定体验时间");
				document.order.checkindate.focus();
				return false;
			}
			if(document.order.name.value==""){
				alert("请输入姓名");
				document.order.name.focus();
				return false;
			}
			if(document.order.age.value==""){
				alert("请输入年龄");
				document.order.age.focus();
				return false;
			}
			if(document.order.sfz.value==""){
				alert("请输入身份证号码");
				document.order.sfz.focus();
				return false;
			}
			if(document.order.phone.value==""){
				alert("请输入电话号码");
				document.order.phone.focus();
				return false;
			}
			return true;
		}
	</script>
  </head>
  
  <body>
<jsp:include page="head.jsp" />
  
  <div class="main_bg" style="background: #ffffff ">
 
		<div class="main">
			<div class="ocheck" style="margin-left: 50px;">
				<div style="font-weight: 700; color: #484848; font-size: 36px; line-height: 35px; font-family: ‘微软雅黑’; margin: 15px;">
					填写与核对订单----->>>【${ex.ex_title}】
				</div>
			</div>
			 <form action="ToorderSelect" method="post" name="order" id="order">
			<div class="order" style="height: 850px">
			<div style="width: 448;height:250px;   float: left;border: 1px solid #dce0e0; ">
			    <h3>预订信息：</h3>
				<hr/><br/>
				<p>体验活动名称：${ex.ex_title}</p>
				<p>日期：${ex.ex_time}</p>
				<input type="hidden" value="${ex.ex_price}" name="price">
				
				<p>价格(元)：${ex.ex_price}</p>				
				</div>
			<div style="width: 448;height:250px;float: left;border: 1px solid #dce0e0; ">
			<h3>联系人信息：</h3>
				<hr/><br/>
				
				<p>姓名：${u.uname }</p>		
				<p>性别：${u.usex }</p>
				<p>年龄：${u.uage }</p>
				<p>电话：${u.uphone }</p></div>				
				<br/>
				<div style="width: 900;float: left;">
				<h3>体验者信息填写：</h3><hr/><br/>		
				<P>预定体验时间：							
				<input class="date" style="width: 264px;height: 30PX" name="checkindate" id="datepicker"
				type="text" value="MM/DD/YY" onFocus="this.value = '';"
				onBlur="if (this.value == '') {this.value = 'MM/DD/YY';}">

</P>
				
				<p>姓名：<input type="text" name="name" id="name" value=""></p>
				<p>性别：<input type="radio" name="sex" id="sex" checked="checked">男
				<input type="radio" name="sex" id="se">女</p>	
				<p>年龄：<input type="text" id="ag" name="age" value=""/></p>
				<p>身份证号码：<input type="text" id="sfz" name="sfz" value=""/></p>
				<p>手机号码：<input type="text" id="phone" name="phone" value=""/></p>			
				
				</div>
				<div style="width: 900;float: left;">
				<h3>对参加者的要求：</h3><hr/>
				<p>年龄：</p>
				<p>所有体验者均须年满18岁，而且不能携带儿童参加。</p>
				<p>政府签发的身份证件：</p>
				<p>您将需要拍一张自拍照，并将它和您身份证件上的照片进行匹配，以帮助旅晨确认真正将要参加体验的是谁。您只需这么做一次。</p>
				<p>集合点：<br/><input type="radio" name="add" checked="checked">如酒店不在免费接送范内，愿意自行到附近可接送点集合（不可迟到）<br/>
				<input type="radio" name="add" >如酒店不在免费接送范围内，取消预订</p>
				</div>
			</div>
			
			<div class="order">
			<h3 >体验活动退改规则和预订须知:</h3>
			<textarea rows="20" cols="30" style="width: 900px;height: 280px" >
退改规则
该产品支持取消。如需取消，请登录携程账户申请取消。
使用日期前2天12:00（含）之前申请取消，不收取损失费；
使用日期前2天12:00之后申请取消，收取100%损失费。
订单不支持部分退。
如需改期，请申请取消后重新预订。
【特殊说明】
下午行程-【新品推广·八折秒杀】成人儿童同价【5周岁（含）以上】一经预订，不支持退改，敬请谅解。
退改规则
【新品推广·八折秒杀】芭提雅双体帆游+日落巡航+沙晶岛+猴子岛 唯美日落之旅【下午行程 成人 5周岁（含）以上】
*该产品一经预订成功，不支持退改，敬请谅解。
发票说明
【新品推广·八折秒杀】芭提雅双体帆游+日落巡航+沙晶岛+猴子岛 唯美日落之旅【下午行程 成人 5周岁（含）以上】
*如需发票，请在游玩结束次日登录最新版本的携程旅行客户端，在订单详情页中申请，发票金额不含优惠券或礼品卡支付部分。
 为普及旅游安全知识及旅游文明公约，使您的旅程顺利圆满完成，特制定《携程旅游告游客注意事项》，请您认真阅读并切实遵守。 
一日游预订须知
第一条 特别提示
 上海携程国际旅行社有限公司
 企业类型：有限责任公司（国内合资）
 国际旅行社业务许可证编号：L-SH-GJ00025
经营范围：入境旅游业务，国内旅游业务；旅游规划及开发，旅游产品开发；出境旅游业务。
 保险兼业代理业务许可证机构编码：31011073900651502
法定代表人：范敏
 上海市旅游局质量监督所电话：021-64393615 
在预订开始前，请仔细阅读本须知，本须知及产品页面中的重要条款也作为双方协议的补充内容。当您开始预订旅游度假产品时，已表明您仔细阅读并接受协议的所有条款。 
第二条 旅行社
1.除法律另有规定外，旅行社对可能危及旅游者人身、财产安全的旅游项目未履行告知、警示义务，并采取防止危害发生的必要措施，造成旅游者人身损害、财产损失的，应承担相应的赔偿责任。发生危及旅游者人身安全的情形，旅行社未采取必要处置措施的，应承担相应的赔偿责任。 
2.旅行社距约定出发时间12小时（含12小时）以上解除合同的，应向旅游者全额退还预付旅游费用；旅行社距约定出发时间12小时之内解除合同的，还应向旅游者支付旅游费用总额20%的违约金。 

3.旅行社未按合同约定安排具有合法有效资质的旅游车辆、驾驶员或导游员的，应向旅游者全额退还已付旅游费用。如果因此给旅游者造成其他人身、财产损害的，旅行社还应承担相应的赔偿责任。

4.旅行社在行程中弃置旅游者的，应向旅游者全额退还已付旅游费用，并承担弃置期间给旅游者造成的必要的住宿费、餐饮费、返回交通费等实际损失。如果因此给旅游者造成其他人身、财产损害的，旅行社还应承担相应的赔偿责任。

5.旅行社违反合同包车游约定安排合车游的，应向旅游者支付旅游费用总额20%的违约金。出发前旅游者要求解除合同的，旅行社还应向旅游者全额退还已付旅游费用。

6.旅行社及导游员、驾驶员安排旅游者在其指定的购物场所购物或以参观等形式变相安排购物（合同中明示景点含购物场所的除外）的、强迫或者变相强迫旅游者购物的，每安排或强迫一次，旅行社应向旅游者支付旅游费用总额20%的违约金。旅游者要求退货的，旅行社应自旅游者向其交付货物之日起三日内承担退货责任。

7.旅行社及导游员、驾驶员安排另行付费项目的，旅行社应向旅游者全额退还另行付费项目价款。

8.旅行社及导游员、驾驶员擅自缩短游览时间、遗漏旅游景点、减少旅游服务项目的，应退还旅游者相应旅游费用（约定旅游服务项目未完成时间÷总游览时间×旅游费用总额），并支付旅游费用总额20%的违约金。

9.旅行社出现其他《旅行社服务质量赔偿标准》规定的需承担赔偿责任的情形，依照《旅行社服务质量赔偿标准》承担赔偿责任。

第三条 旅游者

1.旅游者不按约定支付旅游费用的，旅行社有权解除合同，旅游者应向旅行社支付业务损失费（最高不超过旅游费用总额）。

2.旅游者在距约定出发时间12小时（含12小时）以上解除合同的，旅游者应向旅行社支付实际发生的费用；旅游者在距约定出发时间12小时以内解除合同的，还应向旅行社支付旅游费用总额20%的违约金（实际发生的费用与违约金总计最高不超过旅游费用总额）。旅游者未按约定时间到达约定集合出发地点，也未能在出发中途加入旅游团队的，视为旅游者在距约定出发时间12小时以内解除合同。

3.旅游者在行程中解除合同或者擅自脱离旅游团队的，旅游者应向旅行社支付实际发生的费用。因此造成旅行社其他经济损失的，旅游者还应承担相应的赔偿责任。

4.旅游者违反合同约定妨碍旅游行程，给旅行社造成经济损失的，应承担相应的赔偿责任。 

5.旅游者采取拖延行程等不正当方式解决争议，妨碍旅游行程、造成损失扩大的，应就扩大的损失承担相应的赔偿责任。 

6.旅游者其他过错行为给旅行社造成经济损失的，应承担相应的赔偿责任。 

			</textarea>
			
			</div>
		<div class="zfnum">在线支付总额：${ex.ex_price}</div>
				<div class="zf" >				
					<input type="hidden" value="${ex.ex_price}" name="price">
					<input type="submit" value="同意以上条款，去支付" onclick="javascript:return(checkform())"/>	
					</form>
				</div>
			</div>
		</div>
	</div>
   
<jsp:include page="bottom.jsp" />	
  </body>
</html>

