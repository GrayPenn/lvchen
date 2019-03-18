package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.SendMessag;

public class SendMessageServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String phoneNum = request.getParameter("phoneNum");
		String rNum = request.getParameter("rNum");
		
		System.out.println(phoneNum+","+rNum);
		
		
		
		
		
		SendMessag sm = new SendMessag();
		sm.Send(phoneNum, rNum);
		
		
		
		//request.setAttribute("phoneNum", phoneNum);
		//request.setAttribute("rNum", rNum);
		
		//out.print("<script>alert('·¢ËÍ³É¹¦');history.go(-1)</script>");
		//request.getRequestDispatcher("register.jsp").forward(request,response);
		
		
		
		out.flush();
		out.close();
	}

}
