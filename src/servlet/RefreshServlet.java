package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Comment;

import biz.UserBiz;
import biz.impl.UserBizImpl;

public class RefreshServlet extends HttpServlet {

	
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
		ServletContext application = getServletContext();
		
		String uname = request.getParameter("uname");
		String hid = request.getParameter("hid");
		
		UserBiz biz = new UserBizImpl();
		List<Comment> mlist= biz.Message(hid);
		for(Comment str : mlist){
			System.out.println(str + " , ");
		}
		
		//request.setAttribute("mlist", mlist);
		//application.setAttribute("mlist", mlist);
		session.setAttribute("mlist", mlist);
		
		out.print("<script>alert('Ë¢ÐÂ³É¹¦£¡');</script>");
		response.sendRedirect("my_message.jsp");
		
		out.flush();
		out.close();
	}

}
