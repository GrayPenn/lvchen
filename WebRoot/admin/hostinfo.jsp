<!DOCTYP<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Amaze UI Admin index Examples</title>
		<meta name="description" content="这是一个 index 页面">
		<meta name="keywords" content="index">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link rel="icon" type="image/png" href="assets/i/favicon.png">
		<link rel="apple-touch-icon-precomposed"
			href="assets/i/app-icon72x72@2x.png">
		<meta name="apple-mobile-web-app-title" content="Amaze UI" />
		<link rel="stylesheet" href="assets/css/amazeui.min.css" />
		<link rel="stylesheet" href="assets/css/admin.css">
		<link rel="stylesheet" href="assets/css/app.css">
		<script type="text/javascript">
			function back(){
			   
			   alert('返回首页！');
			   location='index.html'
			   
			}
			var yj=document.getElementsByName("yijian");
			yj=function(){
				if (this.checked){
					alert('审核状态:通过');
					  location='index.html'
				}
				else{
					alert("reject");
				}
			}
			
		</script>
	</head>

	<body data-type="generalComponents">


		<!-- 页面头部 -->
		<jsp:include page="head.jsp" />
		<div class="tpl-page-container tpl-page-header-fixed">
			<!-- 左边导航 -->
			<jsp:include page="navigation.jsp" />
			<!-- 右边内容 -->


			<div class="tpl-content-wrapper">
				<div class="tpl-content-page-title">
					Amaze UI 表单
				</div>
				<ol class="am-breadcrumb">
					<li>
						<a href="#" class="am-icon-home">首页</a>
					</li>
					<li>
						<a href="#">表单</a>
					</li>
					<li class="am-active">
						Amaze UI 表单
					</li>
				</ol>
				<div class="tpl-portlet-components">
					<div class="portlet-title">
						<div class="caption font-green bold">
							<span class="am-icon-code"></span> 表单
						</div>
						<div class="tpl-portlet-input tpl-fz-ml">
							<div class="portlet-input input-small input-inline">
								<div class="input-icon right">
									<i class="am-icon-search"></i>
									<input type="text" class="form-control form-control-solid"
										placeholder="搜索...">
								</div>
							</div>
						</div>


					</div>

					<div class="tpl-block">

						<div class="am-g">
							<div class="tpl-form-body tpl-form-line">
								<form class="am-form tpl-form-line-form" action="index.html">
									<div class="am-form-group">
										<label for="user-name" class="am-u-sm-3 am-form-label">
											用户ID
											<span class="tpl-form-line-small-title">Id:</span>
											</label>
										<div class="am-u-sm-9">
											<input type="text" class="tpl-form-input" id="user-name"
												placeholder=" ">
											 
										</div>
									</div>

									<div class="am-form-group">
										<label for="user-email" class="am-u-sm-3 am-form-label">
											用户姓名
											<span class="tpl-form-line-small-title">Name:</span>
										
										</label>
										
									</div>

									

									<div class="am-form-group">
										<label for="user-weibo" class="am-u-sm-3 am-form-label">
											证件照
											<span class="tpl-form-line-small-title">Images</span>
										</label>
										<div class="am-u-sm-9">
											<div class="am-form-group am-form-file">
												<div class="tpl-form-file-img">
													<img src="assets\img\43.jpg" alt="" width="600px" height="250px">
												</div>
												
											</div>

										</div>
								
									
									</div>

									<div class="am-form-group">
										<label for="user-intro" class="am-u-sm-3 am-form-label">
											隐藏文章
										</label>
										<div class="am-u-sm-9">
											<div class="tpl-switch">
												<input type="checkbox"
													class="ios-switch bigswitch tpl-switch-btn" name="yijian" />
												<div class="tpl-switch-btn-view">
													<div>
													</div>
												</div>
											</div>

										</div>
									</div>

									

									<div class="am-form-group">
										<label for="user-phone" class="am-u-sm-3 am-form-label">
											审核意见
											<span class="tpl-form-line-small-title"></span>
										</label>
										<div class="am-u-sm-9">
											<select data-am-selected="{searchBox: 1}">
												<option value="b" selected="通过">
													通过
												</option>
												<option value="o">
													拒绝
												</option>
											</select>
										</div>
									</div>

                                    <div align="center">
                                    	<table border="1px" cellspacing="" cellpadding="">
                                    		<tr><th>Header</th></tr>
                                    		<tr><td>Data</td></tr>
                                    	</table>
                                    	
                                    	
                                    </div>
                                     

									<div class="am-form-group">
										<div class="am-u-sm-9 am-u-sm-push-3">
											<button type="submit"  onclick="back()" 
												class="am-btn am-btn-primary tpl-btn-bg-color-success ">
												提交
											</button>
										</div>
									</div>
								</form>

							</div>
						</div>
					</div>


				</div>










			</div>

		</div>


		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/amazeui.min.js"></script>
		<script src="assets/js/app.js"></script>
	</body>

</html>
