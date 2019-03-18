package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.CommentBiz;
import biz.impl.CommentBizImpl;

public class ToDelComment extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("====");
		response.setContentType("text/html;charset=utf-8");
		System.out.println("------");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		CommentBiz com = new CommentBizImpl();
		String idstr = request.getParameter("cid");
		String allIdstr = request.getParameter("allIDCheck");
		out.println("<script>alert("+idstr+"--"+allIdstr+")</script>");
		int rs = 0;

		if (null == idstr || "".equals(idstr)) {
			String allcid[] = allIdstr.split(",");
			rs = com.delAllComment(allcid);
		} else if (null == allIdstr || "".equals(allIdstr)) {
			int cid = Integer.valueOf(idstr);
			rs = com.deleteComment(cid);
		}
		if (rs != 0) {
			out.println("<script>alert('É¾³ý³É¹¦');location.href=document.referrer</script>");
		} else {
			out.println("<script>alert('É¾³ýÊ§°Ü');location.href=document.referrer</script>");
		}
		out.flush();
		out.close();
	}

}
