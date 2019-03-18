package servlet;

import java.awt.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBUtil;
import biz.UserBiz;
import biz.impl.UserBizImpl;
import entity.House;
import entity.Room;
import entity.User;

public class TouploadroomServlet extends HttpServlet {


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
		u=ub.personalDate(uname);
		DBUtil db = new DBUtil();
		try {
			int uid=u.getUid();
			
			String sql ="select * from T_HOUSE t where h_id=?";
			ResultSet rs=db.query(sql, uid);
			ArrayList<House> list= new ArrayList<House>();
			while(rs.next()){
				House h=new House();
				h.setHid(rs.getInt("h_id"));
				h.setHlocation(rs.getString("h_location"));
				h.setHaddr(rs.getString("h_addr"));
				h.setHtype(rs.getString("h_type"));
				h.setHcei(rs.getString("h_cei"));
				h.setHstatu(rs.getInt("h_statu"));
				list.add(h);
			}

		} catch (Exception e) {
			request.getRequestDispatcher("uploadroom.jsp").forward(request, response);
		}finally{
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		request.getRequestDispatcher("uploadroom.jsp").forward(request, response);
		out.flush();
		out.close();
	}

}
