package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.UserBiz;
import biz.impl.UserBizImpl;

public class LoginNameServlet extends HttpServlet {

	
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
		UserBiz biz = new UserBizImpl();
		boolean flag = biz.CheckName(uname);

		
		out.print(flag ? "<label style='color: blue;'>可用</label>" : "<label style='color: red;'>不可用</label>");
		
		 
		out.flush();
		out.close();
	}

}
