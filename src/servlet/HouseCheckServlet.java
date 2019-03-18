package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.House;

import biz.HouseBiz;
import biz.impl.HouseBizImpl;

public class HouseCheckServlet extends HttpServlet {

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
	  // int hid = Integer.valueOf(request.getParameter("hid"));
	   //int hstatu = Integer.valueOf(request.getParameter("hstatu"));
		
		HouseBiz hb =new HouseBizImpl();
		List<House> list =hb.checkHouse(5,0);
		out.print("<script>alert('list');location='http://localhost:8080/lvchen/HouseCheckServlet'</script>");
		request.setAttribute("house",list);
		
		request.getRequestDispatcher("HouseListServlet").forward(request, response);
		
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
