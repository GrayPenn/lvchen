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
import entity.Experience;
import entity.User;


import biz.CommentBiz;
import biz.UserBiz;
import biz.experienceBiz;
import biz.impl.CommentBizImpl;
import biz.impl.UserBizImpl;
import biz.impl.experienceBizImpl;



public class experienceServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
            doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		int ex_id=Integer.valueOf(request.getParameter("ex_id"));		
		experienceBiz biz=new experienceBizImpl();		
		Experience ex=biz.getExperience(ex_id);
    	request.setAttribute("ex",ex);
    	
    	
    	UserBiz ubiz=new UserBizImpl();
    	User u=ubiz.getname(ex.getU_id());
    	request.setAttribute("u", u);
    	
	
	 
	
		
		
		if(ex.getEx_location()!=null){
			String[] a = ex.getEx_location().split(",");  
//			System.out.println("处理结果: "+a[0]+","+a[1]);   //输出的是: 处理结果: 1234,abc 
			
			String locationX = a[0];
			String locationY = a[1];
			
			request.setAttribute("x", locationX);
			request.setAttribute("y", locationY);
		}
		
		
		
		
		CommentBiz comm = new CommentBizImpl();	

		int pageSize = 8;// 每页显示4条记录
		int count = comm.getCommentCountByexid(ex_id);// 总条数
		int pageCount = count % pageSize == 0 ? count / pageSize : count
				/ pageSize + 1;// 总页数

		int index = pageCount;// 默认第一次请求第一页
		
		// 可能请求的不是第一页，那么就要获取当前请求的页数
		if (request.getParameter("page") != null) {
			index = Integer.valueOf(request.getParameter("page"));
		}
		
		
		
		List<Comment> comment_list = comm.getCommentByPageExid(index, pageSize, ex_id);
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
		
		
		request.getRequestDispatcher("experience.jsp").forward(request, response);
		
		
		out.flush();
		out.close();
	}

}
