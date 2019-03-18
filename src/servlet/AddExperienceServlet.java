package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.FileUp;
import util.RenamePolicyCos;

import biz.experienceBiz;
import biz.impl.experienceBizImpl;

import com.oreilly.servlet.MultipartRequest;

import entity.Experience;

public class AddExperienceServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
doPost(request, response);
	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();		
		
		String savepath=request.getRealPath("/upload");		
		 
		int maxsize=100*1024*1024;
		MultipartRequest req=new MultipartRequest(request, savepath,maxsize,"utf-8",new RenamePolicyCos());
		
		String files="";
		try {
			files=FileUp.uploadfiles(req);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
		int user=Integer.valueOf(req.getParameter("user"));
		int cid=Integer.valueOf(req.getParameter("cid"));
		int price=Integer.valueOf(req.getParameter("price"));
		String title=req.getParameter("title");
		String tips=req.getParameter("tips");
		String content=req.getParameter("content");
		String things=req.getParameter("things");
		String location=req.getParameter("location");
		
		Experience ex=new Experience();
		ex.setC_id(cid);
		ex.setU_id(user);
		ex.setEx_price(price);
		ex.setEx_title(title);
		ex.setEx_things(things);
		ex.setEx_tips(tips);
		ex.setEx_location(location);
		ex.setEx_content(content);
		ex.setEx_img(files);
		
		experienceBiz biz=new experienceBizImpl();
		boolean flag=biz.save(ex);
		if(flag){
			out.print("<script>alert('添加信息成功！');location='ToindexServlet'</script>");
		}else{
			out.print("<script>alert('添加信息失败！');location='addexperience.jsp'</script>");
		}
		
		
		out.flush();
		out.close();
	}

}
