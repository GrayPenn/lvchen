package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.RoomBiz;
import biz.UserBiz;
import biz.experienceBiz;
import biz.impl.RoomBizImpl;
import biz.impl.UserBizImpl;
import biz.impl.experienceBizImpl;
import entity.Experience;
import entity.Room;
import entity.User;

public class ToindexServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
doPost(request, response);
	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 
		  
		  experienceBiz exbiz=new experienceBizImpl();
//		  List<Experience>list=exbiz.getExperience();
		  int index=1;//默认第一次请求第一页
		  int pageSize=4;//每页显示4条记录
		  int count=exbiz.getCountexperience();//总条数
		  int pagecount=count%pageSize==0?(count/pageSize):(count/pageSize+1);
		  
		  if(request.getParameter("page")!=null){
			  index=Integer.valueOf(request.getParameter("page"));
			  
		  }
		  index=index<1?1:index;
		  index=index>pagecount?pagecount:index;
		  List<Experience>list=exbiz.getexBypage(index, pageSize);
		  request.setAttribute("list", list);
		  int lastpage=index-1;//上一页
		  int nextpage=index+1;//下一页
		  
		  request.setAttribute("lastpage", lastpage);
		  request.setAttribute("nextpage", nextpage);
		  request.setAttribute("index", index);
		  request.setAttribute("pagecount", pagecount);
		  
		  RoomBiz rbiz=new RoomBizImpl();
		  List<Room> rlist=rbiz.getRoom();
		  
		  request.setAttribute("rlist", rlist);
		  
		  request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

}
