package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.CommentBiz;
import biz.UserBiz;
import biz.experienceBiz;
import biz.impl.CommentBizImpl;
import biz.impl.UserBizImpl;
import biz.impl.experienceBizImpl;
import entity.Comment;
import entity.Experience;
import entity.User;

public class ToDDexSerlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		int ex_id=Integer.valueOf(request.getParameter("ex_id"));		
		experienceBiz biz=new experienceBizImpl();		
		Experience ex=biz.getExperience(ex_id);
    	request.setAttribute("ex",ex);
    	   	
    	
    	int hid=Integer.valueOf(request.getParameter("uid"));
    	UserBiz ubiz=new UserBizImpl();
    	User u=ubiz.getMasterInfo(hid);
    	request.setAttribute("u", u);
    	
    		
		request.getRequestDispatcher("DDregister.jsp").forward(request, response);
		out.flush();
		out.close();
	}

}
