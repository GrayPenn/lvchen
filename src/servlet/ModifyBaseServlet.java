package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.UserBiz;
import biz.impl.UserBizImpl;

public class ModifyBaseServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String uname = request.getParameter("uname");
		String usex = request.getParameter("usex");
		String uage = request.getParameter("uage");
		String uphone = request.getParameter("uphone");
		String uemail = request.getParameter("uemail");

		String ucity1 = request.getParameter("ucity1");
		String ucity2 = request.getParameter("ucity2");
		String ucity3 = request.getParameter("ucity3");
		String ucity = ucity1 + ucity2 + ucity3;

		String uaddr = request.getParameter("uaddr");
		String uaccount = request.getParameter("uaccount");

		UserBiz biz = new UserBizImpl();
		Boolean bool = biz.Modifybase(uname, usex, uage, uphone, uemail, ucity,
				uaddr, uaccount);

		if (bool) {
			out.print("<script>alert('修改成功');</script>");
			response.sendRedirect("PersonalDataServlet?uname=" + uname);

		} else {
			out.print("<script>alert('修改失败');history.go(-1)</script>");
		}

		out.flush();
		out.close();
	}

}
