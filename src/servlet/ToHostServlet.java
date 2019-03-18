package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.client.fluent.Request;

import entity.User;
import biz.UserBiz;
import biz.impl.UserBizImpl;

public class ToHostServlet extends HttpServlet {

	

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String uname=request.getParameter("uname");
		UserBiz ub =new UserBizImpl();
		User u = new User();
		try {
			u=ub.personalDate(uname);
			int i=u.getUstatu();
			if(i==0){ request.getRequestDispatcher("host.jsp").forward(request, response);}
			else{
				request.getRequestDispatcher("hostmanage.jsp").forward(request, response);
			}
		} catch (Exception e) {
			out.print("<script>alert('«Îœ»µ«»Î');location='ToindexServlet'</script>");
		}
		
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
