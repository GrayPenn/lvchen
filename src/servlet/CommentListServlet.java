package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.CommentBiz;
import biz.RoomBiz;
import biz.experienceBiz;
import biz.impl.CommentBizImpl;
import biz.impl.RoomBizImpl;
import biz.impl.experienceBizImpl;
import entity.Comment;

public class CommentListServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		CommentBiz comm = new CommentBizImpl();	
		RoomBiz rbiz =new RoomBizImpl();
		experienceBiz exbiz=new experienceBizImpl();
		
		String uname=request.getParameter("chooseuname");
		String hidstr=request.getParameter("choosehid");
		String exidstr=request.getParameter("chooseexid");
		//System.out.println("--"+uname+"--"+ridstr+"--"+exidstr);
		int page =Integer.valueOf(request.getParameter("page"));
		int hid=-1;
		int exid=-1;
		List<Comment> comment_list=new ArrayList<Comment>();
		List<String> uname_list=new ArrayList<String>();
		List<Integer> hid_list=new ArrayList<Integer>();
		List<Integer> exid_list=new ArrayList<Integer>();
		if(null!=hidstr&&!"".equals(hidstr)){
			hid=Integer.valueOf(hidstr);
		}if(null!=exidstr&&!"".equals(exidstr)){
			exid=Integer.valueOf(exidstr);
		}
		comment_list=comm.getComment(uname,hid,exid,page);
		uname_list=comm.getUname();
		//System.out.println(uname_list.size());
		hid_list=rbiz.getRid();
		//System.out.println(rid_list.size());
		exid_list=exbiz.getExid();
		//System.out.println(exid_list.size());
		int count = comm.getCommentCount(uname,hid,exid);// 总条数
		int pageCount = count % 10 == 0 ? count / 10 : count
				/ 10 + 1;// 总页数
		request.setAttribute("chuname", uname);
		request.setAttribute("chhid", hidstr);
		request.setAttribute("chexid", exidstr);
		request.setAttribute("comment_list", comment_list);
		request.setAttribute("uname_list", uname_list);
		request.setAttribute("hid_list", hid_list);
		request.setAttribute("exid_list", exid_list);
		request.setAttribute("count", count);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("page", page);
		
		request.getRequestDispatcher("comment-list.jsp").forward(request, response);
	}

}
