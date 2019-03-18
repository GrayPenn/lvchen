package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.CommentBiz;
import biz.impl.CommentBizImpl;
import entity.Comment;
import entity.House;
import entity.User;

public class AddCommentServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String body = request.getParameter("body");
		Object object = session.getAttribute("user");
		
		// 把你的字符串定义提取到外层
		String exidstr = request.getParameter("ex_id");
		String hidstr = request.getParameter("r_id");

		if (body == null || "" == body) {
			out.println("<script>alert('请输入内容后尝试！');history.go(-1)</script>");
		} else if (object == null) {
			// 更改跳转方式，携带来源信息

			//这里携带体验id跳转
			if(!(exidstr==null)){
				out
				.print("<script>alert('请登录后再评论！');location='login.jsp?from=1&ex_id="
						+ exidstr + "'</script>");
			}
			//这里携带房屋id跳转
			if(!(hidstr==null)){
				out
				.print("<script>alert('请登录后再评论！');location='login.jsp?from=2&r_id="
						+ hidstr + "'</script>");
			}
			
			
		} else {
			User user = (User) object;
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("hh:mm MM.dd"); // 获取时间

			//System.out.println(exidstr + " --------------" + hidstr);
			Comment comment = null;
			if (hidstr == null || "" == hidstr) {
				int exid = Integer.valueOf(exidstr);
				comment = new Comment(user.getUname(), -1, exid, body, sdf
						.format(date));
//				System.out.println(comment.getUname() + "--" + comment.getHid()
//						+ "--" + comment.getExid() + "--"
//						+ comment.getCcontext() + "--" + comment.getCtime());
			} else if (exidstr == null || "" == exidstr) {
				int hid = Integer.valueOf(hidstr);
				comment = new Comment(user.getUname(), hid, -1, body, sdf.format(date));
//				System.out.println(comment.getUname() + "--" + comment.getHid()
//						+ "--" + comment.getExid() + "--"
//						+ comment.getCcontext() + "--" + comment.getCtime());
			}
			CommentBiz biz = new CommentBizImpl();
			int result = biz.addComment(comment);
			if (result == 1) {
				out
						.println("<script>alert('评论成功！');location.href=document.referrer</script>");
			} else {
				out
						.println("<script>alert('评论失败，请稍后重试！'); location.href=document.referrer</script>");
			}
		}

		// out.println("<HTML>");
		// out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		// out.println("  <BODY>");
		// out.print("    This is ");
		// out.print(this.getClass());
		// out.println(", using the POST method");
		// out.println("  </BODY>");
		// out.println("</HTML>");
		out.flush();
		out.close();
	}

}
