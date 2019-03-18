package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.UserBiz;
import biz.impl.UserBizImpl;

import dao.UserDao;

public class RegisterServlet extends HttpServlet {

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
		String upwd = request.getParameter("upwd");
		// int uphone = (int) Long.parseLong(request.getParameter("uphone"));
		//int uphone = Integer.valueOf(request.getParameter("uphone").trim());
		//int uphone = Integer.parseInt(request.getParameter("uphone"));
		String uphone = request.getParameter("uphone");
		
		//int phone = Integer.valueOf(uphone);
		
		UserBiz biz = new UserBizImpl();

		biz.checkReg(uname, upwd, uphone);

		response.sendRedirect("ToindexServlet");

		out.flush();
		out.close();
	}

}
