package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.FileUp;
import util.RenamePolicyCos;
import biz.AddHostBiz;
import biz.UserBiz;
import biz.impl.AddHostBizImpl;
import biz.impl.UserBizImpl;

import com.oreilly.servlet.MultipartRequest;

import entity.User;

public class Host2statuServlet extends HttpServlet {

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
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String savePath = request.getRealPath("/upload");
		int maxsize = 100 * 1024 * 1024;// 100M
		MultipartRequest req = new MultipartRequest(request, savePath,maxsize, 
				"utf-8");
		String files ="";
		try {
			files = FileUp.uploadfiles(req);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}// 文件上传返回文件名
		
		String uname=request.getParameter("uname");
		UserBiz ub =new UserBizImpl();
		User u = new User();
		u=ub.personalDate(uname);
		int uid=u.getUid();
		
		
		String haddr=req.getParameter("location_p")+req.getParameter("location_c")
				+req.getParameter("location_a")+req.getParameter("location_d");
		
		
		int hstatu=Integer.valueOf(req.getParameter("hstatu"));
		String hlocation="1";
		int htype=Integer.valueOf(req.getParameter("htype"));
		
		AddHostBiz ahb=new AddHostBizImpl();
		boolean flag=ahb.apply(uid, hlocation, files, haddr, htype, hstatu);
		if (flag) {
			out.print("<script>alert('已提交审核');location='ToHostServlet'</script>");
		} else {
			out.print("<script>alert('现在网络忙，请稍后再试');location='index.jsp'</script>");
		}
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
