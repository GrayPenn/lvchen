package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;

import biz.UserBiz;
import biz.impl.UserBizImpl;

public class PersonalDataServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		//ServletContext application = getServletContext();
		
		
		UserBiz biz = new UserBizImpl();
		//String uname = (String) session.getAttribute("uname");
		
		String uname = request.getParameter("uname");
		
		User user = biz.personalDate(uname);
		
		session.setAttribute("user",user);
		
		request.getRequestDispatcher("my_information.jsp").forward(request,response);
		
		
		out.flush();
		out.close();
	}

}
