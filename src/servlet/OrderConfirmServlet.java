package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.OrderBiz;
import biz.RoomBiz;
import biz.UserBiz;
import biz.impl.OrderBizImpl;
import biz.impl.RoomBizImpl;
import biz.impl.UserBizImpl;
import entity.Order;
import entity.Room;
import entity.User;

public class OrderConfirmServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int rid=Integer.valueOf(request.getParameter("r_id"));
		
		RoomBiz biz=new RoomBizImpl();
		UserBiz ubiz=new UserBizImpl();
		OrderBiz obiz=new OrderBizImpl();
		
		Room r=biz.getRoom(rid);
		User u=ubiz.getMasterInfo(rid);
//		Order o=obiz.addOrder(rid);
		
		request.setAttribute("r", r);
		request.setAttribute("u", u);
		
		String roomstyle=request.getParameter("roomstyle");
		String checkindate=request.getParameter("checkindate");
		String canceldate=request.getParameter("canceldate");
		String number=request.getParameter("number");
		request.setAttribute("roomstyle", roomstyle);
		request.setAttribute("checkindate", checkindate);
		request.setAttribute("canceldate", canceldate);
		request.setAttribute("number", number);
		
		out.flush();
		out.close();
	}

}
