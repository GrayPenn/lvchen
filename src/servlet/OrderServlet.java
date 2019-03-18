package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

public class OrderServlet extends HttpServlet {

	
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
		
		//房东、房间信息
		RoomBiz biz=new RoomBizImpl();
		UserBiz ubiz=new UserBizImpl();
		
		Room r=biz.getRoom(rid);
		User u=ubiz.getMasterInfo(rid);
		
		request.setAttribute("r", r);
		request.setAttribute("u", u);
		
		//房间类型、入住时间、退房时间、人数
		String roomstyle=request.getParameter("roomstyle");
		String checkindate=request.getParameter("checkindate");
		String canceldate=request.getParameter("canceldate");
		String number=request.getParameter("number");
		request.setAttribute("roomstyle", roomstyle);
		request.setAttribute("checkindate", checkindate);
		request.setAttribute("canceldate", canceldate);
		request.setAttribute("number", number);
		
		//订单生成时间
		String datetime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		request.setAttribute("datetime", datetime);
		
		//天数
		DateFormat df=new SimpleDateFormat("MM/dd/yy");
		int days=0;
		try {
			Date d1=df.parse(checkindate);
			Date d2=df.parse(canceldate);
			days=(int) ((d2.getTime()-d1.getTime())/(60*60*1000*24));
			request.setAttribute("days", days);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Order od=new Order();
		od.setHid(r.getHid());
		od.setHostid(u.getUid());
		od.setOendtime(canceldate);
		od.setOintime(checkindate);
		od.setOnum(Integer.valueOf(number));
		float totalprice=(Integer.valueOf(number)*r.getRprice()*days);
		od.setOprice(r.getRprice());
		od.setOtime(datetime);
		od.setOtotal(totalprice);
		
		OrderBiz odbiz=new OrderBizImpl();
		boolean flag = odbiz.addOrder(od);
		
		
		request.getRequestDispatcher("order.jsp").forward(request, response);
		
		out.flush();
		out.close();
	}

}
