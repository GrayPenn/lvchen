package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;

import biz.UserBiz;
import biz.impl.UserBizImpl;

public class ToAddNewsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
doPost(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 UserBiz userbiz=new UserBizImpl();
		  List<User>list=userbiz.getuser();
		  
		  request.setAttribute("list",list);
		  request.getRequestDispatcher("addexperience.jsp").forward(request, response);
	}

}
