package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Equipment;

import biz.EquipmentBiz;
import biz.impl.EquipmentBizImpl;

public class EquipmentServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int eid=Integer.valueOf(request.getParameter("r_id"));
		EquipmentBiz biz=new EquipmentBizImpl();
		Equipment equ=biz.getEquipment(eid);
		request.setAttribute("equ", equ);
		request.getRequestDispatcher("rooms.jsp").forward(request, response);
		
		out.flush();
		out.close();
	}

}
