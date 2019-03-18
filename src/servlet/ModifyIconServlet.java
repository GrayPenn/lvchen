package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.FileUp;
import util.RenamePolicyCos;

import biz.UserBiz;
import biz.impl.UserBizImpl;

import com.oreilly.servlet.MultipartRequest;

public class ModifyIconServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// ��ȡ·��
		String savePath = request.getRealPath("/upload");

		int maxsize = 100 * 1024 * 1024;// 100M
		MultipartRequest req = new MultipartRequest(request, savePath, maxsize,
				"utf-8", new RenamePolicyCos());
		String files = "";
		try {
			files = FileUp.uploadfiles(req);// �ļ��ϴ������ļ���

		} catch (Exception e) {
			e.printStackTrace();
		}

		// ��ȡ�û���
		String uname = req.getParameter("uname");

		String fileName = "upload/";
		for (String str : files.split("/")) {
			fileName += str;

		}

		// ����biz����
		UserBiz biz = new UserBizImpl();
		Boolean bool = biz.ModifyIcon(uname, fileName);

		if (bool) {
			out.print("<script>alert('�޸ĳɹ�');</script>");
			response.sendRedirect("PersonalDataServlet?uname=" + uname);

		} else {
			out.print("<script>alert('�޸�ʧ��');history.go(-1)</script>");
		}

		out.flush();
		out.close();
	}

}
