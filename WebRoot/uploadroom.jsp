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
<meta charset="utf-8">
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
<title>Dashboard, Free HTML5 Admin Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="css/templatemo_main.css">
<link rel="stylesheet" herf="css/addrooms.css">
<script type="text/javascript" src="js/jquery-2.0.2.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/uploadSingleImg.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link href="css/style.css" rel="stylesheet">
<!--自己书写input样式-->

<script src="js/jquery-2.0.2.js"></script>
<script type="text/javascript" src="js/tools.js"></script>
<script type="text/javascript" src="js/pictureHandle.js"></script>
<script type="text/javascript" src="js/region_select.js"></script>
<link rel="stylesheet" href="css/templatemo_main.css">

<script type="text/javascript">
var count = 1;
	function addFile() {
		//var div=document.getElementById("divup");

		$("#divup").append(
				"<div id='asdasd'><input type='file' name='fileup" + count + "' /><a id='"+count+"'  onclick='detele(this)'>删除</a></div>");
				
		count++;
	}
	function detele(obj){
		var that =obj.id;
		$("#"+that).parent().hide();
	}
</script>
</head>

<body>
	<jsp:include page="head.jsp" />


		<div class="template-page-wrapper">

			<!-- 左侧导航部分 -->
			<jsp:include page="my_navigation.jsp" />

				<div>

			<!--/.navbar-collapse -->
			<!-- 右侧部分 -->
			<div class="templatemo-content-wrapper">
				<div class="templatemo-content">
					<ol class="breadcrumb">
						<li>
							<a href="my_information.jsp">个人信息</a>
						</li>
					</ol>
				<div>
					<form class="form-inline" action="RentalServlet" method="post"
						enctype="multipart/form-data">
						<div>
							<div class="col-md-6">
								<h2>
									${sessionScope.user.uname },TA们有故事!<br>你准备好提供房间了吗？
								</h2>
								<br />
								<h3>给您的房间取一个酷酷的标题吧</h3>
								<input type="text" class="form-control" id="title" name="title" placeholder="Text input">

								<h3>您拥有什么样的空间？</h3>
								<div>
									<div class="col-md-4">
										<select class="form-control" id="space" name="space">
											<option>独立房间</option>
											<option>整体房源</option>
											<option>合住房间</option>
										</select>
									</div>

									<div class="col-md-4" >
										<select class="form-control" id="pMaxNum" name="pMaxNum">
											<option value="1">1为房客</option>
											<option value="2">2为房客</option>
											<option value="3">3为房客</option>
											<option value="4">4为房客</option>
											<option value="5">5为房客</option>
											<option value="6">6为房客</option>
											<option value="7">7为房客</option>
											<option value="8">8为房客</option>
											<option value="9">9为房客</option>
											<option value="10">10为房客</option>
										</select>
									</div>

								</div>
								<div>
									<div class="col-md-7">
										<h3>这是什么类型的房源？</h3>
										<select id="house-type" name="house_type" class="form-control">
											<option value="" data-reactid="50">请选择</option>
											<option value="公寓" data-reactid="51">公寓</option>
											<option value="小平房" data-reactid="52">小平房</option>
											<option value="小木屋" data-reactid="53">小木屋</option>
											<option value="公寓" data-reactid="54">公寓</option>
											<option value="宾馆" data-reactid="55">宾馆</option>
											<option value="独立屋" data-reactid="56">独立屋</option>
											<option value="附属单元" data-reactid="57">附属单元（In-law）</option>
											<option value="客房" data-reactid="58">客房</option>
											<option value="连栋住宅" data-reactid="59">连栋住宅</option>
											<option value="度假屋" data-reactid="60">度假屋</option>
											<option value="-1" disabled="" data-reactid="61">──────────────</option>
											<option value="住宿加早餐" data-reactid="62">住宿加早餐</option>
											<option value="精品酒店" data-reactid="63">精品酒店</option>
											<option value="自然小屋" data-reactid="64">自然小屋</option>
											<option value="旅舍" data-reactid="65">旅舍</option>
											<option value="分时度假住宿" data-reactid="66">分时度假住宿</option>
											<option value="酒店式公寓" data-reactid="67">酒店式公寓</option>
											<option value="古巴家庭旅馆(Casaparticular)" data-reactid="68">古巴家庭旅馆(Casaparticular)</option>
											<option value="葡萄牙旅馆（Pousada）" data-reactid="69">葡萄牙旅馆（Pousada）</option>
											<option value="台湾民宿" data-reactid="70">台湾民宿</option>
											<option value="日式旅馆" data-reactid="71">日式旅馆</option>
											<option value="韩国膳宿公寓" data-reactid="72">韩国膳宿公寓</option>
											<option value="印度传统酒店" data-reactid="73">印度传统酒店</option>
											<option value="-2" disabled="" data-reactid="74">──────────────</option>
											<option value="船" data-reactid="75">船</option>
											<option value="城堡" data-reactid="76">城堡</option>
											<option value="洞穴" data-reactid="77">洞穴</option>
											<option value="牧人小屋" data-reactid="78">牧人小屋</option>
											<option value="宿舍" data-reactid="79">宿舍</option>
											<option value="土房" data-reactid="80">土房</option>
											<option value="小屋" data-reactid="81">小屋</option>
											<option value="冰屋" data-reactid="82">冰屋</option>
											<option value="岛屿" data-reactid="83">岛屿</option>
											<option value="灯塔" data-reactid="84">灯塔</option>
											<option value="阁楼" data-reactid="85">阁楼</option>
											<option value="飞机" data-reactid="86">飞机</option>
											<option value="露营车/房车" data-reactid="87">露营车/房车</option>
											<option value="帐篷" data-reactid="88">帐篷</option>
											<option value="圆锥形帐篷" data-reactid="89">圆锥形帐篷</option>
											<option value="火车" data-reactid="90">火车</option>
											<option value="树屋" data-reactid="91">树屋</option>
											<option value="别墅" data-reactid="92">别墅</option>
											<option value="蒙古包" data-reactid="93">蒙古包</option>
											<option value="其它" data-reactid="94">其它</option>
										</select>
									</div>

								</div>
								<div>
									<div class="col-md-6">
										<h3>有几间卧室可以给房客使用？</h3>
										<select name="bedrooms" class="form-control" data-reactid="67">
											<option value="" data-reactid="68"></option>

											<option value="1">1间卧室</option>
											<option value="2">2间卧室</option>
											<option value="3">3间卧室</option>
											<option value="4">4间卧室</option>
											<option value="5">5间卧室</option>
											<option value="6">6间卧室</option>
											<option value="7">7间卧室</option>
											<option value="8">8间卧室</option>
											<option value="9">9间卧室</option>
											<option value="10">10间卧室</option>
										</select>
									</div>
								</div>
								<div>
									<div class="col-md-10">
										<h3>简单描述下您的房子：</h3>
										<textarea class="form-control" rows="3" id="rinfo" name="rinfo"></textarea>
									</div>
									<div class="col-md-7"></div>
									<div class="col-md-2" id="jixu">

										<button type="submit" class="btn btn-default btn-lg">继续</button>
									</div>
								</div>
							</div>
						</div>
						<div id="upsec">
							<div>
								<div class="form-group" class="col-md-3">
									<div class="input-group">
										<div class="input-group-addon">¥</div>
										<input type="text" class="form-control"
											id="rprice" name="rprice" placeholder="你房间的价值/每晚">
										<div class="input-group-addon">.00</div>
									</div>
								</div>

							</div>


							<h3>选择你可以提供的设备和服务</h3>
							<div>
								<h6>有多少单人床（大）</h6>
								<div>
									<select class="form-control" name="beds">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
							</div>

							<div>
								<h6>有多少单人床（小）</h6>
								<div>
									<select class="form-control" name="bedb">
									    <option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
							</div>

							<div>
								<h6>有多少双人床</h6>
								<div>
									<select class="form-control" name="bedd">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
							</div>

							<h4>选择其他设备</h4>
							<div>

								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox4" name="washer" id="washer" value="1">洗衣机
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox5" name="aircondit" id="aircondit" value="1">空调
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox6" name="hairdrier" id="hairdrier" value="1">吹风机
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox7" name="wifi" id="wifi" value="1">无线上网
								</label>
							</div>

							<div>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox8" name="kitchen" id="kitchen" value="1">厨房
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox8" name="breakfast" id="breakfast" value="1">早餐
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox10" name="needs" id="needs"  value="1">生活必须品
								</label>
							</div>
							<label class="checkbox-inline"> <input type="checkbox"
								id="inlineCheckbox11" name="pet" id="pet" value="1">允许携带宠物
							</label>
							<div>
								<h3>看看你家可爱的照片吧</h3>

								<a onclick=addFile();>添加附件</a>
								<div id="divup">
									<div>
										<input type="file" name="fileup0" />

									</div>
								</div>
							</div>
						</div>
					</form>
					</div>
				</div>
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
		};
		window.onload = function() {
			var ctx_line = document.getElementById("templatemo-line-chart")
					.getContext("2d");
			window.myLine = new Chart(ctx_line).Line(lineChartData, {
				responsive : true
			});
		};
		$('#myTab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		});
		$('#loading-example-btn').click(function() {
			var btn = $(this);
			btn.button('loading');
			// $.ajax(...).always(function () {
			//   btn.button('reset');
			// });
		});
	</script>

</body>

</html>
