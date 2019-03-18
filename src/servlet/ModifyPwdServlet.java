package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.UserBiz;
import biz.impl.UserBizImpl;

public class ModifyPwdServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String uname = request.getParameter("uname");
		String npwd = request.getParameter("npwd");
		
		UserBiz biz = new UserBizImpl();
		Boolean bool = biz.MofifyPwd(uname, npwd);
		
		
		if (bool) {
			out.print("<script>alert('修改成功');</script>");
			response.sendRedirect("PersonalDataServlet?uname=" + uname);
			//request.getRequestDispatcher("PersonalDataServlet?uname=" + uname).forward(request,response);
			

		} else {
			out.print("<script>alert('修改失败');history.go(-1)</script>");
		}

		
		//response.sendRedirect("PersonalDataServlet?uname=" + uname);
		//request.getRequestDispatcher("PersonalDataServlet?uname=" + uname).forward(request,response);
		
		
		

		out.flush();
		out.close();
	}

}
