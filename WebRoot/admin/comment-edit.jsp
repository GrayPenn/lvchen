<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 

<!DOCTYPE html>
<html>
<head>
<title>信息管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
<link href="/lvchen/admin/style/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="/lvchen/admin/style/authority/common_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="scripts/authority/commonAll.js"></script>
<script type="text/javascript" src="scripts/jquery/jquery-1.4.4.min.js"></script>
<script src="scripts/My97DatePicker/WdatePicker.js" type="text/javascript" defer="defer"></script>
<script type="text/javascript" src="scripts/artDialog/artDialog.js?skin=default"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/*
		 * 提交
		 */
		$("#submitbutton").click(function() {
			/* if(validateForm()){
				checkFyFhSubmit();
			} */
			window.parent.$.fancybox.close();
		});
		
		/*
		 * 取消
		 */
		$("#cancelbutton").click(function() {
			/**  关闭弹出iframe  **/
			window.parent.$.fancybox.close();
			//window.history.go(-1);
		});
		
		var result = 'null';
		if(result =='success'){
			/**  关闭弹出iframe  **/
			window.parent.$.fancybox.close();
		}
	});
	


</script>
</head>
<body>
<form id="submitForm" name="submitForm" action="/xngzf/archives/initFangyuan.action" method="post">
	<input type="hidden" name="fyID" value="14458625716623" id="fyID"/>
	<div id="container">
		<div id="nav_links">
			当前位置：基础数据&nbsp;>&nbsp;<span style="color: #1A5CC6;">评论编辑</span>
			<div id="page_close">
				<a href="javascript:parent.$.fancybox.close();">
					<img src="images/page_close.png" width="20" height="20" style="vertical-align: text-top;"/>
				</a>
			</div>
		</div>
		<div class="ui_content">
			<table  cellspacing="0" cellpadding="0" width="100%" align="left" border="0">
				<tr>
					<td class="ui_text_rt" width="80">评论编号:</td>
					<td class="ui_text_lt">
						<input type="text" id="fyCh" name="fangyuanEntity.fyCh" value="${comment.cid}"  class="ui_input_txt01"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">用户名</td>
					<td class="ui_text_lt">
						<select name="fangyuanEntity.fyDhCode" id="fyDh" class="ui_select01">
                            <option value="">--请选择--</option>
                            <option value="${comment.uname}" selected="selected">瑞景河畔16号楼</option>
                            <option value="17">瑞景河畔17号楼</option>
                            <option value="69">瑞景河畔18号楼</option>
                            <option value="72">瑞景河畔20号楼</option>
                            <option value="73">瑞景河畔22号楼</option>
                            <option value="74">瑞景河畔23号楼</option>
                            <option value="75">瑞景河畔24号楼</option>
                        </select>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">房源编号:</td>
					<td class="ui_text_lt">
						<select name="fangyuanEntity.fyDhCode" id="fyDh" class="ui_select01">
                            <option value="">--请选择--</option>
                            <option value="${comment.rid}" selected="selected">瑞景河畔16号楼</option>
                            <option value="17">瑞景河畔17号楼</option>
                            <option value="69">瑞景河畔18号楼</option>
                            <option value="72">瑞景河畔20号楼</option>
                            <option value="73">瑞景河畔22号楼</option>
                            <option value="74">瑞景河畔23号楼</option>
                            <option value="75">瑞景河畔24号楼</option>
                        </select>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">活动编号:</td>
					<td class="ui_text_lt">
						<select name="fangyuanEntity.fyDhCode" id="fyDh" class="ui_select01">
                            <option value="">--请选择--</option>
                            <option value="${comment.exid}" selected="selected">瑞景河畔16号楼</option>
                            <option value="17">瑞景河畔17号楼</option>
                            <option value="69">瑞景河畔18号楼</option>
                            <option value="72">瑞景河畔20号楼</option>
                            <option value="73">瑞景河畔22号楼</option>
                            <option value="74">瑞景河畔23号楼</option>
                            <option value="75">瑞景河畔24号楼</option>
                        </select>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">内容:</td>
					<td class="ui_text_lt">
						<textarea name="body" value="${comment.ccontext}" class="xheditor"
				style="width: 20%;height: 100px;"></textarea>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt">时间:</td>
					<td class="ui_text_lt">
						<input type="text" id="fyJizuMj" name="fangyuanEntity.fyJizuMj" value="${comment.ctame}" class="ui_input_txt01"/>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td class="ui_text_lt">
						&nbsp;<input id="submitbutton" type="button" value="提交" class="ui_input_btn01"/>
						&nbsp;<input id="cancelbutton" type="button" value="取消" class="ui_input_btn01"/>
					</td>
				</tr>
			</table>
		</div>
	</div>
</form>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>