<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 可用于搜索 -->
<!--  -->
<!--  -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'reservation.jsp' starting page</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

		<style type="text/css">
			.m-big {
				width: 1000px;
				height: 500px;
				border: 1px solid black;
			}
			.m-t {
				width: 1000px;
				height: 400px;
				border: 1px solid black;
				float: left;
			}
		</style>
	</head>

	<body>
		<!-- 页面头部 -->
		<jsp:include page="head.jsp" />

		<!--start main -->
		<div class="main_bg">
			<div class="wrap">
				<div class="main">
					<center>
						<div class="m-big">

							<p>
							<h4 style="float: left;">&nbsp;&nbsp;联系我们</h4>
								<img style="CURSOR: pointer" onclick="javascript:window.open('tencent://message/?Menu=yes&uin=173611861&Site=商家&Service=300&sigT=45a1e5847943b64c6ff3990f8a9e644d2b31356cb0b4ac6b24663a3c8dd0f8aa12a595b1714f9d45', '_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"
								border="0" SRC=http://wpa.qq.com/pa?p=1:173611861:1 alt="联系我们">小黄&nbsp;&nbsp;
								<img style="CURSOR: pointer" onclick="javascript:window.open('tencent://message/?Menu=yes&uin=421813163&Site=商家&Service=300&sigT=45a1e5847943b64c6ff3990f8a9e644d2b31356cb0b4ac6b24663a3c8dd0f8aa12a595b1714f9d45', '_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"
								border="0" SRC=http://wpa.qq.com/pa?p=1:421813163:1 alt="联系我们">小彭&nbsp;&nbsp;
								<img style="CURSOR: pointer" onclick="javascript:window.open('tencent://message/?Menu=yes&uin=644261002&Site=商家&Service=300&sigT=45a1e5847943b64c6ff3990f8a9e644d2b31356cb0b4ac6b24663a3c8dd0f8aa12a595b1714f9d45', '_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"
								border="0" SRC=http://wpa.qq.com/pa?p=1:644261002:1 alt="联系我们">小杨&nbsp;&nbsp;
								<img style="CURSOR: pointer" onclick="javascript:window.open('tencent://message/?Menu=yes&uin=270763532&Site=商家&Service=300&sigT=45a1e5847943b64c6ff3990f8a9e644d2b31356cb0b4ac6b24663a3c8dd0f8aa12a595b1714f9d45', '_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"
								border="0" SRC=http://wpa.qq.com/pa?p=1:270763532:1 alt="联系我们">小洪&nbsp;&nbsp;
								<img style="CURSOR: pointer" onclick="javascript:window.open('tencent://message/?Menu=yes&uin=1244541782&Site=商家&Service=300&sigT=45a1e5847943b64c6ff3990f8a9e644d2b31356cb0b4ac6b24663a3c8dd0f8aa12a595b1714f9d45', '_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"
								border="0" SRC=http://wpa.qq.com/pa?p=1:1244541782:1 alt="联系我们">小刘&nbsp;&nbsp;
								<img style="CURSOR: pointer" onclick="javascript:window.open('tencent://message/?Menu=yes&uin=364086865&Site=商家&Service=300&sigT=45a1e5847943b64c6ff3990f8a9e644d2b31356cb0b4ac6b24663a3c8dd0f8aa12a595b1714f9d45', '_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"
								border="0" SRC=http://wpa.qq.com/pa?p=1:364086865:1 alt="联系我们">小熊&nbsp;&nbsp;
								<img style="CURSOR: pointer" onclick="javascript:window.open('tencent://message/?Menu=yes&uin=467018755&Site=商家&Service=300&sigT=45a1e5847943b64c6ff3990f8a9e644d2b31356cb0b4ac6b24663a3c8dd0f8aa12a595b1714f9d45', '_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"
								border="0" SRC=http://wpa.qq.com/pa?p=1:467018755:1 alt="联系我们">小林&nbsp;&nbsp;
							</p>

							<div class="m-t">
								<p>
									<h4 style="float: left;">&nbsp;&nbsp;热门问题</h4>
									<a href="http://help.ctrip.com/" target="_blank" class="rt" style="float: right;">更多&gt;&gt;</a>
									<br>
									<table class="table">

										<tr>
											<td><a href="http://help.ctrip.com/QuestionDetail.aspx?questionId=1" target="_blank" title="如何取消预订？">如何取消预订？</a></td>

										</tr>

										<tr>
											<td><a href="http://help.ctrip.com/QuestionDetail.aspx?questionId=3" target="_blank" title="担保订单过最晚时限取消/修改，会产生什么后果？">担保订单过最晚时限取消/修改，会产生什么后果？</a>
											</td>

										</tr>
										<tr>
											<td><a href="http://help.ctrip.com/QuestionDetail.aspx?questionId=4" target="_blank" title="选择信用卡担保/预付，需填写哪些信息？">选择信用卡担保/预付，需填写哪些信息？</a>
											</td>

										</tr>
										<tr>
											<td><a href="http://help.ctrip.com/QuestionDetail.aspx?questionId=13" target="_blank" title="提交订单时输入姓名需注意哪些问题？">提交订单时输入姓名需注意哪些问题？</a>
											</td>

										</tr>
										<tr>
											<td><a href="http://help.ctrip.com/QuestionDetail.aspx?questionId=26" target="_blank" title="网上航班的价格是否包含了机票税？">网上航班的价格是否包含了机票税？</a>
											</td>

										</tr>
										<tr>
											<td><a href="http://help.ctrip.com/QuestionDetail.aspx?questionId=51" target="_blank" title="预付订单，如何使用网上支付？">预付订单，如何使用网上支付？</a>
											</td>

										</tr>
										<tr>
											<td><a href="http://help.ctrip.com/QuestionDetail.aspx?questionId=66" target="_blank" title="什么是订单的最晚修改及取消时间？">什么是订单的最晚修改及取消时间？</a>
											</td>

										</tr>
									</table>

								</p>
							</div>

						</div>
					</center>
				</div>
			</div>
		</div>
		<!-- 页面底部 -->
		<jsp:include page="bottom.jsp" />

	</body>

</html>