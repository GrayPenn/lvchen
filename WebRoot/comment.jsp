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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>评论列表</title>
<!--  
    评论列表
    
    -->
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


</head>

<body>


	<c:forEach items="${comment_list}" var="n" varStatus="status">
		<div style="float:left">
			<img width="60px" height="60px" alt=""
				src="${uicon_list[status.index]}">
			<!-- 头像 -->
		</div>
		<div style="float:left;width: 100px;height: 50px;z-index:1;">
			<div width="58px">
				&#160; ${n.uname}
				<!-- 名字 -->
			</div></br>
			<div width=" 58px">
				&#160;${n.ctime}
				<!-- 时间 -->
			</div>
		</div>
		<div style="clear:both">
			<br /> ${n.ccontext}
			<!-- 评论内容 -->
		</div>
		<div>
			<hr>
		</div>
	</c:forEach>

	<%-- <p align="right">
		当前页数:${index }; <a href="ToCommentServlet?page=1">首页</a> <a
			href="ToCommentServlet?page=${lastPage }">上一页</a> <a
			href="ToCommentServlet?page=${nextPage }">下一页</a> <a
			href="ToCommentServlet?page=${pageCount }">末页</a> 跳转至： <select
			onchange="location='ToCommentServlet?page='+this.value">

			<c:forEach begin="1" end="${pageCount}" step="1" var="i">
				<option value="${i }"
					<c:if test="${index==i }">
							selected
						</c:if>>
					第${i }页</option>


			</c:forEach>
		</select>
	<form action="index.jsp" method="post">
		<input type="text" name="page" style="width: 30px" /> 页 <input
			type="submit" value="GO" />
	</form>
	</p> --%>
	<p align="right">
		<mxt:page pageIndex="${index}" url="ToCommentServlet?"
			pageMax="${pageCount}" />
	</p>
	<div>
		<hr>
	</div>
	<p>
	<form action="AddCommentServlet" method="post">
		<div>
			<input type="hidden" name="hid" value="2"> <!-- 隐藏域房屋id -->
			<textarea name="body" class="xheditor"
				style="width: 95%;height: 100px;"></textarea>
		</div>
		</br>
		<button type="submit">确定</button>
	</form>
	</p>
</body>
</html>
