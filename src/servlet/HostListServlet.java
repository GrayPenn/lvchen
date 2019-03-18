package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import entity.Comment;
import entity.User;

import biz.CommentBiz;
import biz.HostBiz;
import biz.HouseBiz;
import biz.experienceBiz;

import biz.impl.CommentBizImpl;
import biz.impl.HostBizImpl;
import biz.impl.HouseBizImpl;
import biz.impl.experienceBizImpl;


public class HostListServlet extends HttpServlet {

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
			response.setContentType("text/html;chatset=utf-8");
			response.setCharacterEncoding("utf-8");
			 
         	PrintWriter out = response.getWriter();
  
         	
		
	       //
			
			//CommentBiz comm = new CommentBizImpl();	
			HouseBiz hbiz =new HouseBizImpl();
			//experienceBiz exbiz=new experienceBizImpl();
			HostBiz hb=new HostBizImpl();
			String uname=request.getParameter("chooseuname");
			String hidstr=request.getParameter("choosehid");
			String exidstr=request.getParameter("chooseexid");
			int page =Integer.valueOf(request.getParameter("page"));
			 System.out.println(page);
			//System.out.println("--"+uname+"--"+hidstr+"--"+exidstr);
			//int page1 =Integer.valueOf(request.getParameter("page"));
			int uid=-1;
			int hid=-1;
			List<Comment> comment_list=new ArrayList<Comment>();
			List<String> uname_list=new ArrayList<String>();
			List<Integer> hid_list=new ArrayList<Integer>();
			List<Integer> exid_list=new ArrayList<Integer>();
			if(null!=hidstr&&!"".equals(hidstr)){
				uid=Integer.valueOf(hidstr);
			}if(null!=exidstr&&!"".equals(exidstr)){
				hid=Integer.valueOf(exidstr);
			}
		 
	 
		
				
			List<User> userlist= hb.HostList(-1,-1);

			int count = hb.getHostCount();// 总条数
			int pageCount = count % 10 == 0 ? count / 10 : count
					/ 10 + 1;// 总页数
			request.setAttribute("chuname", uname);//选中名字
			request.setAttribute("chhid", hidstr);//选中房号
			request.setAttribute("chexid", exidstr);//
			request.setAttribute("comment_list", comment_list);//评论列表
			request.setAttribute("uname_list", uname_list);//评论者列表
			request.setAttribute("hid_list", hid_list);
			
			request.setAttribute("count", count);
			request.setAttribute("pageCount", pageCount);
			 //request.setAttribute("page", page);
			
			request.setAttribute("userlist", userlist);
			
			System.out.println(pageCount);
			
			request.getRequestDispatcher("admin/hostlist.jsp").forward(request, response);

			out.flush();
			out.close();
			
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
