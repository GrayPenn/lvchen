package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.HostBiz;
import biz.HouseBiz;
import biz.impl.HostBizImpl;
import biz.impl.HouseBizImpl;

import entity.House;
import entity.User;

public class HouseListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		//���� ҵ���߼�
		HouseBiz hbz = new HouseBizImpl();
		//List<House> list = hbz.queryHouse();
		
	    List<House> houselist=hbz.queryHouse(-1,-1);
		
		HostBiz hbiz=new HostBizImpl();
		List<User> list =hbiz.getHostByPage(2, 3);
		//request.setAttribute("test", test);
		//��תҳ��
	
		System.out.println(houselist);
		
			request.setAttribute("houselist", houselist);//��list���뵽request������
			request.getRequestDispatcher("admin/houselist.jsp").forward(request, response);
		
	}

}
