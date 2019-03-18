package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.jms.Session;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;

import biz.UserBiz;
import biz.impl.UserBizImpl;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		ServletContext application = getServletContext();
		PrintWriter out = response.getWriter();

		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");
		String issave = request.getParameter("issave");
		
		String str = request.getParameter("from");//获取来源
		String str1 = request.getParameter("ex_id");//获取来源id
		String str2 = request.getParameter("r_id");//获取来源id2

		UserBiz biz = new UserBizImpl();
		User user = biz.checkLogin(uname, upwd);// 调用登录的方法，传入给user对象
		// 如果数据库查询成功，user不为空，如果查询不到，user为空
		if (user != null) {
			session.setAttribute("user", user);

			Object onlinenum = application.getAttribute("online");
			if (onlinenum == null) {
				onlinenum = 1;// 原本没有
			} else {
				int num = Integer.valueOf(onlinenum.toString());// 原本有
				num++;
				onlinenum = num;
			}
			// 重新写入到application对象按
			application.setAttribute("online", onlinenum);
			
			
				
				
			
				
				
			
			
			
			if ("save".equals(issave)) {
				// 记住密码
				// 构建cookie对象
				Cookie cname = new Cookie("uname", URLEncoder.encode(uname));
				Cookie cpwd = new Cookie("upwd", upwd);
				// 设置有效期
				cname.setMaxAge(60 * 60 * 24);// 1天
				cpwd.setMaxAge(60 * 60 * 24);// 1天
				// 写入到客户端
				response.addCookie(cname);
				response.addCookie(cpwd);
				// 重定向到界面不携带数据
				// response.sendRedirect("index.jsp");
				
				
				//这里判断来源页面，成功后放回来源页面
				//如果from和ex_id都不为空的话
				if(!str.equals("null")&&!str1.equals("null")){
					int from = Integer.valueOf(str);
					int ex_id = Integer.valueOf(str1);
					out.print("<script>alert('登录成功2-记住密码');</script>");
					if (from == 1) {
						out.print("<script>alert('登录成功-记住密码');</script>");
						request.getRequestDispatcher("experienceServlet?ex_id="+ex_id).forward(request,response);
						
						//response.sendRedirect("experienceServlet?ex_id="+ex_id);
						return;
					}
					
				}
				//如果from和r_id都不为空的话
				if(!str.equals("null")&&!str2.equals("null")){
					int from = Integer.valueOf(str);
					int r_id = Integer.valueOf(str2);
					
					if (from == 2) {
						out.print("<script>alert('登录成功-记住密码');</script>");
						request.getRequestDispatcher("RoomServlet?r_id="+r_id).forward(request,response);
						
						//response.sendRedirect("experienceServlet?ex_id="+ex_id);
						return;
					}
				}
				
				//如果from和ex_id都为空的话
				if(str.equals("null")&&str1.equals("null")){
				
					out.print("<script>alert('登录成功-记住密码');</script>");
					response.sendRedirect("ToindexServlet?uname=" + uname);
					
				}
				
				
				
				
			} else {
				// 不记住密码
				// response.sendRedirect("index.jsp");
				
				
				//这里判断来源页面，成功后放回来源页面
				//如果from和ex_id都不为空的话
				if(!str.equals("null")&&!str1.equals("null")){
					int from = Integer.valueOf(str);
					int ex_id = Integer.valueOf(str1);
					
					
					if (from == 1) {
						out.print("<script>alert('登录成功-记住密码');</script>");
						request.getRequestDispatcher("experienceServlet?ex_id="+ex_id).forward(request,response);
						
						//response.sendRedirect("experienceServlet?ex_id="+ex_id);
						return;
					}
				}
				//如果from和r_id都不为空的话
				if(!str.equals("null")&&!str2.equals("null")){
					int from = Integer.valueOf(str);
					int r_id = Integer.valueOf(str2);
					
					if (from == 2) {
						out.print("<script>alert('登录成功-记住密码');</script>");
						request.getRequestDispatcher("RoomServlet?r_id="+r_id).forward(request,response);
						
						//response.sendRedirect("experienceServlet?ex_id="+ex_id);
						return;
					}
				}
				//如果from和ex_id都为空的话
				if(str.equals("null")&&str1.equals("null")){
				
					out.print("<script>alert('登录成功-不记住密码');</script>");
					response.sendRedirect("ToindexServlet?uname=" + uname);
				}
			}

		} else {
			
			//out.print("<script>alert('登录失败');</script>");		
			out.println("<script>alert('账号或密码错误，请重新输入！');history.go(-1)</script>");
			//response.sendRedirect("ToindexServlet");
		}

		out.flush();
		out.close();
	}
	public void pFrom(){
		
	}

}
