<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<link href="admin/style/authority/basic_layout.css" rel="stylesheet"
	type="text/css">
<link href="admin/style/authority/common_style.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="admin/style/authority/jquery.fancybox-1.3.4.css" media="screen"></link>

<script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript" src="scripts/authority/commonAll.js"></script>
<script type="text/javascript"
	src="scripts/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript"
	src="scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript"
	src="scripts/artDialog/artDialog.js?skin=default"></script>


<title>My JSP 'hostlist.jsp' starting page</title>

<script type="text/javascript">
	$(document).ready(function() {
		/** 新增   **/
		$("#addBtn").fancybox({
			'href' : 'house_edit.html',
			'width' : 733,
			'height' : 530,
			'type' : 'iframe',
			'hideOnOverlayClick' : false,
			'showCloseButton' : false,
			'onClosed' : function() {
				window.location.href = 'house_list.html';
			}
		});

		/** 导入  **/
		$("#importBtn").fancybox({
			'href' : '/xngzf/archives/importFangyuan.action',
			'width' : 633,
			'height' : 260,
			'type' : 'iframe',
			'hideOnOverlayClick' : false,
			'showCloseButton' : false,
			'onClosed' : function() {
				window.location.href = 'house_list.html';
			}
		});

		/**编辑   **/
		$("a.edit").fancybox({
			'width' : 733,
			'height' : 530,
			'type' : 'iframe',
			'hideOnOverlayClick' : false,
			'showCloseButton' : false,
			'onClosed' : function() {
				window.location.href = 'house_list.html';
			}
		});
	});

	/** 查询 **/
	function search() {
		alert("调用成功");
		$("#submitForm").attr("action", "HostListServlet?page=" + 1)
				.submit();
	}

	function del() {
		// 非空判断
		//if(fyID == '') return;
		if (confirm("您确定要删除吗？")) {
			$("#submitForm").attr("action",
					"/xngzf/archives/delFangyuan.action?fyID=" + fyID).submit();
		}
	}

	/** 批量删除 **/
	function batchDel() {
		if ($("input[name='IDCheck']:checked").size() <= 0) {
			art.dialog({
				icon : 'error',
				title : '友情提示',
				drag : false,
				resize : false,
				content : '至少选择一条',
				ok : true,
			});
			return;
		}
		// 1）取出用户选中的checkbox放入字符串传给后台,form提交
		var allIDCheck = "";
		$("input[name='IDCheck']:checked").each(
				function(index, domEle) {
					bjText = $(domEle).parent("td").parent("tr").last()
							.children("td").last().prev().text();
					// 			alert(bjText);

					allIDCheck += $(domEle).val() + ",";

				});
		// 截掉最后一个","
		if (allIDCheck.length > 0) {
			allIDCheck = allIDCheck.substring(0, allIDCheck.length - 1);
			// 赋给隐藏域

			alert(allIDCheck);
			if (confirm("您确定要批量删除这些记录吗？")) {
				// 提交form
				if (xmlHttp == null) {
					createXMLHttpRequest();
				}
				//请求的URL
				var url = "HostListServlet?allIDCheck=" + allIDCheck;
				xmlHttp.open("POST", url, true);
				xmlHttp.onreadystatechange = callBack;
				xmlHttp.setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded");
				xmlHttp.send();

			}
		}
	}

	/** 普通跳转 **/
	function jumpNormalPage(page) {
		alert("HostListServlet");
		$("#submitForm").attr("action", "HostListServlet?page=" + page)
				.submit();
	}

	/** 输入页跳转 **/
	function jumpInputPage(totalPage) {
		// 如果“跳转页数”不为空
		if ($("#jumpNumTxt").val() != '') {
			var pageNum = parseInt($("#jumpNumTxt").val());
			var pagecount = ${pageCount};
			// 如果跳转页数在不合理范围内，则置为1
			if (pageNum<1 || pageNum>pagecount) {
				art.dialog({
					icon : 'error',
					title : '友情提示',
					drag : false,
					resize : false,
					content : '请输入合适的页数，\n自动为您跳到首页',
					ok : true,
				});
				pageNum = 1;
			}
			$("#submitForm").attr("action",
					"HostListServlet?page=" + pageNum).submit();
		} else {
			// “跳转页数”为空
			art.dialog({
				icon : 'error',
				title : '友情提示',
				drag : false,
				resize : false,
				content : '请输入合适的页数，\n自动为您跳到首页',
				ok : true,
			});
			$("#submitForm").attr("action", "HostListServlet?page=" + 1)
					.submit();
		}
	}
</script>
<style>
.alt td { .alt td{ background:black!important;
	
}
}
</style>

</head>

<body>
	<form id="submitForm" name="submitForm" action="" method="post">
		<input type="hidden" name="allIDCheck" value="" id="allIDCheck" /> <input
			type="hidden" name="fangyuanEntity.fyXqName" value="" id="fyXqName" />
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">搜索</div>
						<div id="box_center">
						    用户ID<select name="chooseuname" id="chooseuname"
								class="ui_select01">
								<option value="">--请选择--</option>
								<c:forEach var="uname" items="${uname_list}">
									<option value="${uname}">${uname}</option>
								</c:forEach>
							</select> 房子ID <select name="choosehid" id="choosehid" class="ui_select01">
								<option value="">--请选择--</option>
								<c:forEach var="hid" items="${hid_list}">
									<option value="${hid}">${hid}</option>
								</c:forEach>
							</select> 活动ID <select name="chooseexid" id="chooseexid"
								class="ui_select01">
								<option value="">--请选择--</option>
								<c:forEach var="exid" items="${exid_list}">
									<option value="${exid}">${exid}</option>
								</c:forEach>
							</select> <input type="button" value="查询" class="ui_input_btn01"
								onclick="search();" /> <input type="button" value="新增"
								class="ui_input_btn01" id="addBtn" /> <input type="button"
								value="删除" class="ui_input_btn01" onclick="batchDel();" /> <input
								type="button" value="删除" class="ui_input_btn01" onclick="del();" />
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%"
						align="center" border="0">
						<tr>
							<th width="30"><input type="checkbox" id="all"
								onclick="selectOrClearAllCheckbox(this);" /></th>
							<th>房屋ID</th>
							<th>用户ID</th>
							<th>用户头像</th>
							<th>城市</th>
							<th>房源类型</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
						<c:forEach var="time" begin="1" end="10" varStatus="status">
							<c:if test="${userlist[time-1].uid!=null}">
								<tr>
									<td><input type="checkbox" name="IDCheck"
										value="${userlist[time-1].uid}" class="acb" /></td>
									<td>${userlist[time-1].uid}</td>
									<td>${userlist[time-1].uname}</td>
									<td><img alt="" src="${userlist[time-1].uicon} " width="60px" heigth="60px"></td>
									<td>${userlist[time-1].hid}</td>
									<td>${userlist[time-1].uaddr}</td>
									 
									<c:if test="${userlist[time-1].ustatu==0}">
									<td>拒绝</td>
									</c:if>
									<c:if test="${houselist[time-1].hstatu==1}">
									<td>通过</td>
									</c:if>
									<td><a href="house_edit.jsp?fyID=14458625716623"
										class="edit">编辑</a> <a href="ToDelComment?cid="
										+${userlist[time-1].uid}>删除</a></td>

								</tr>
							</c:if>
						</c:forEach>
					</table>
				</div>
				<div class="ui_tb_h30">
					<div class="ui_flt" style="height: 30px; line-height: 30px;">
						共有 <span id="count" class="ui_txt_bold04">${count}</span> 条记录，当前第
						<span id="page" class="ui_txt_bold04">${page} /
							${pageCount}</span> 页
					</div>
					<div class="ui_frt">
						<!--    如果是第一页，则只显示下一页、尾页 -->

						<c:if test="${page!=1}" var="string">
							<input type="button" value="首页" class="ui_input_btn01"
								onclick="jumpNormalPage(1);" />
							<input type="button" value="上一页" class="ui_input_btn01"
								onclick="jumpNormalPage(${page-1});" />
						</c:if>
						<!--     如果是最后一页，则只显示首页、上一页 -->
						<c:if test="${page!=pageCount}" var="str">
							<input type="button" value="下一页" class="ui_input_btn01"
								onclick="jumpNormalPage(${page+1});" />
							<input type="button" value="尾页" class="ui_input_btn01"
								onclick="jumpNormalPage(${pagecount});" />
						</c:if>
                      

						转到第 <input type="text" id="jumpNumTxt" class="ui_input_txt01" />页
						<input type="button" class="ui_input_btn01" value="跳转" onclick="" />
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
