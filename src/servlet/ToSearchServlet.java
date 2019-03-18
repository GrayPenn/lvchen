package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.RoomBiz;
import biz.impl.RoomBizImpl;
import entity.Room;

public class ToSearchServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String rrent = request.getParameter("roomstyle");
		float rprice = Float.parseFloat(request.getParameter("roomprice"));
		int rcounting = Integer.parseInt(request.getParameter("roomcounting"));

		
		RoomBiz rbiz = new RoomBizImpl();
		List<Room> rlist = rbiz.searchRoom(rrent, rprice, rcounting);

		request.setAttribute("rlist", rlist);
		request.getRequestDispatcher("search.jsp").forward(request, response);

		out.flush();
		out.close();
	}

}
