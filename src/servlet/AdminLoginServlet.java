package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.AdminBiz;

import biz.impl.AdminBizImpl;

import entity.Admin;


public class AdminLoginServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		String aname=request.getParameter("aname");
		String apwd=request.getParameter("apwd");
		AdminBiz adminbiz=new AdminBizImpl();
		Admin admin=adminbiz.checkLogin(aname, apwd);
		if(admin!=null){
			session.setAttribute("admin", admin);
			response.sendRedirect("index.jsp");
		}else{
			out.println("<script>alert('’À∫≈ªÚ√‹¬Î¥ÌŒÛ£¨«Î÷ÿ–¬ ‰»Î£°');location='login.jsp'</script>");
		}
	}

}
