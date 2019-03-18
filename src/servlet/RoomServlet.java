package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Comment;
import entity.Equipment;
import entity.House;
import entity.Room;
import entity.User;
import biz.CommentBiz;
import biz.EquipmentBiz;
import biz.HouseBiz;
import biz.RoomBiz;
import biz.UserBiz;
import biz.impl.CommentBizImpl;
import biz.impl.EquipmentBizImpl;
import biz.impl.HouseBizImpl;
import biz.impl.RoomBizImpl;
import biz.impl.UserBizImpl;

public class RoomServlet extends HttpServlet {

	
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
		EquipmentBiz equbiz=new EquipmentBizImpl();
		UserBiz ubiz=new UserBizImpl();
		HouseBiz hbiz=new HouseBizImpl();
		
		Room r=biz.getRoom(rid);
		Equipment equ=equbiz.getEquipment(rid);
		User u=ubiz.getMasterInfo(rid);
		House h=hbiz.getLocation(rid);
		
		request.setAttribute("r", r);
		request.setAttribute("equ", equ);
		request.setAttribute("u", u);
		request.setAttribute("h", h);
		
		
		//lws
		CommentBiz comm = new CommentBizImpl();	

		int pageSize = 5;// 每页显示4条记录
		int count = comm.getCommentCountByhid(rid);// 总条数
		int pageCount = count % pageSize == 0 ? count / pageSize : count
				/ pageSize + 1;// 总页数

		int index = pageCount;// 默认第一次请求第一页
		
		// 可能请求的不是第一页，那么就要获取当前请求的页数
		if (request.getParameter("page") != null) {
			index = Integer.valueOf(request.getParameter("page"));
		}
		
		
		
		List<Comment> comment_list = comm.getCommentByPageHid(index, pageSize, rid);
		request.setAttribute("comment_list", comment_list);
		
		List<String> uname_list = new ArrayList<String>();
		for (int n = 0; n < comment_list.size(); n++) {
			uname_list.add(comment_list.get(n).getUname());
		}

		
		List<String> uicon_list = comm.getUicon(uname_list);
		request.setAttribute("uicon_list", uicon_list);

		
		
		
		int lastPage = index - 1;// 上一页
		int nextPage = index + 1;// 下一页

		request.setAttribute("lastPage", lastPage);
		request.setAttribute("nextPage", nextPage);
		request.setAttribute("index", index);
		request.setAttribute("pageCount", pageCount);
		
		
		request.getRequestDispatcher("rooms.jsp").forward(request, response);
		
		out.flush();
		out.close();
	}

}
