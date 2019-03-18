<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	session.removeAttribute("user");//移除user对象在session中的存储
	//构建cookie对象
	Cookie cname = new Cookie("uname", "");
	Cookie cpwd = new Cookie("upwd", "");
	//设置有效期
	cname.setMaxAge(-1);//上一秒过期
	cpwd.setMaxAge(-1);//上一秒过期
	//写入到客户端
	response.addCookie(cname);
	response.addCookie(cpwd);
	
	//当前在线人数-1
	Object online=application.getAttribute("online");
	if(online!=null){
		int num=Integer.valueOf(online.toString());
		num--;
		application.setAttribute("online",num);
	}
	response.sendRedirect("ToindexServlet");
%>
