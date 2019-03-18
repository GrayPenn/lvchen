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

public class ToTopHouseServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		RoomBiz rbiz = new RoomBizImpl();

		int index = 1;
		int pageSize = 6;
		int count = rbiz.getRoomCount();
		int pageCount = count % pageSize == 0 ? (count / pageSize) : (count
				/ pageSize + 1);

		String rrent = request.getParameter("roomstyle");
		String rprice1 = request.getParameter("roomprice");
		String rcounting1 = request.getParameter("roomcounting");
		
		if(rrent==null&&rprice1==null&&rcounting1==null){
			if (request.getParameter("page") != null) {
				index = Integer.valueOf(request.getParameter("page"));
			}
			
			List<Room> rlist = rbiz.getRoomByPage(index, pageSize);

			request.setAttribute("pageCount", pageCount);
			request.setAttribute("rlist", rlist);

			request.getRequestDispatcher("search.jsp").forward(request, response);

			out.flush();
			out.close();
			return;
		}else{
			float rprice = Float.parseFloat(rprice1);
			int rcounting = Integer.parseInt(rcounting1);
			// float rprice = Float.parseFloat(request.getParameter("roomprice"));
			// int rcounting =
			// Integer.parseInt(request.getParameter("roomcounting"));

			if (request.getParameter("page") != null) {
				index = Integer.valueOf(request.getParameter("page"));
			}
			// List<Room> rlist=rbiz.getRoom();
			List<Room> rlist = rbiz.getRoomByPageSearch(index, pageSize, rrent, rprice,
					rcounting);

			request.setAttribute("pageCount", pageCount);
			request.setAttribute("rlist", rlist);

			request.getRequestDispatcher("search.jsp").forward(request, response);

			out.flush();
			out.close();
		}
		
		
	}

}
