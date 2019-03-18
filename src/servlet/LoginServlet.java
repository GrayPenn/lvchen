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
		
		String str = request.getParameter("from");//��ȡ��Դ
		String str1 = request.getParameter("ex_id");//��ȡ��Դid
		String str2 = request.getParameter("r_id");//��ȡ��Դid2

		UserBiz biz = new UserBizImpl();
		User user = biz.checkLogin(uname, upwd);// ���õ�¼�ķ����������user����
		// ������ݿ��ѯ�ɹ���user��Ϊ�գ������ѯ������userΪ��
		if (user != null) {
			session.setAttribute("user", user);

			Object onlinenum = application.getAttribute("online");
			if (onlinenum == null) {
				onlinenum = 1;// ԭ��û��
			} else {
				int num = Integer.valueOf(onlinenum.toString());// ԭ����
				num++;
				onlinenum = num;
			}
			// ����д�뵽application����
			application.setAttribute("online", onlinenum);
			
			
				
				
			
				
				
			
			
			
			if ("save".equals(issave)) {
				// ��ס����
				// ����cookie����
				Cookie cname = new Cookie("uname", URLEncoder.encode(uname));
				Cookie cpwd = new Cookie("upwd", upwd);
				// ������Ч��
				cname.setMaxAge(60 * 60 * 24);// 1��
				cpwd.setMaxAge(60 * 60 * 24);// 1��
				// д�뵽�ͻ���
				response.addCookie(cname);
				response.addCookie(cpwd);
				// �ض��򵽽��治Я������
				// response.sendRedirect("index.jsp");
				
				
				//�����ж���Դҳ�棬�ɹ���Ż���Դҳ��
				//���from��ex_id����Ϊ�յĻ�
				if(!str.equals("null")&&!str1.equals("null")){
					int from = Integer.valueOf(str);
					int ex_id = Integer.valueOf(str1);
					out.print("<script>alert('��¼�ɹ�2-��ס����');</script>");
					if (from == 1) {
						out.print("<script>alert('��¼�ɹ�-��ס����');</script>");
						request.getRequestDispatcher("experienceServlet?ex_id="+ex_id).forward(request,response);
						
						//response.sendRedirect("experienceServlet?ex_id="+ex_id);
						return;
					}
					
				}
				//���from��r_id����Ϊ�յĻ�
				if(!str.equals("null")&&!str2.equals("null")){
					int from = Integer.valueOf(str);
					int r_id = Integer.valueOf(str2);
					
					if (from == 2) {
						out.print("<script>alert('��¼�ɹ�-��ס����');</script>");
						request.getRequestDispatcher("RoomServlet?r_id="+r_id).forward(request,response);
						
						//response.sendRedirect("experienceServlet?ex_id="+ex_id);
						return;
					}
				}
				
				//���from��ex_id��Ϊ�յĻ�
				if(str.equals("null")&&str1.equals("null")){
				
					out.print("<script>alert('��¼�ɹ�-��ס����');</script>");
					response.sendRedirect("ToindexServlet?uname=" + uname);
					
				}
				
				
				
				
			} else {
				// ����ס����
				// response.sendRedirect("index.jsp");
				
				
				//�����ж���Դҳ�棬�ɹ���Ż���Դҳ��
				//���from��ex_id����Ϊ�յĻ�
				if(!str.equals("null")&&!str1.equals("null")){
					int from = Integer.valueOf(str);
					int ex_id = Integer.valueOf(str1);
					
					
					if (from == 1) {
						out.print("<script>alert('��¼�ɹ�-��ס����');</script>");
						request.getRequestDispatcher("experienceServlet?ex_id="+ex_id).forward(request,response);
						
						//response.sendRedirect("experienceServlet?ex_id="+ex_id);
						return;
					}
				}
				//���from��r_id����Ϊ�յĻ�
				if(!str.equals("null")&&!str2.equals("null")){
					int from = Integer.valueOf(str);
					int r_id = Integer.valueOf(str2);
					
					if (from == 2) {
						out.print("<script>alert('��¼�ɹ�-��ס����');</script>");
						request.getRequestDispatcher("RoomServlet?r_id="+r_id).forward(request,response);
						
						//response.sendRedirect("experienceServlet?ex_id="+ex_id);
						return;
					}
				}
				//���from��ex_id��Ϊ�յĻ�
				if(str.equals("null")&&str1.equals("null")){
				
					out.print("<script>alert('��¼�ɹ�-����ס����');</script>");
					response.sendRedirect("ToindexServlet?uname=" + uname);
				}
			}

		} else {
			
			//out.print("<script>alert('��¼ʧ��');</script>");		
			out.println("<script>alert('�˺Ż�����������������룡');history.go(-1)</script>");
			//response.sendRedirect("ToindexServlet");
		}

		out.flush();
		out.close();
	}
	public void pFrom(){
		
	}

}
