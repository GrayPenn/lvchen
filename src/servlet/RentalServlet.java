package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBUtil;
import util.FileUp;
import biz.EquipmentBiz;
import biz.RentalBiz;
import biz.impl.EquipmentBizImpl;
import biz.impl.RentalBizImpl;

import com.oreilly.servlet.MultipartRequest;

import entity.Equipment;

public class RentalServlet extends HttpServlet {

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
		
		String rtitle=req.getParameter("title");
		String rrent =req.getParameter("space");
		
		
		int rcounting=Integer.valueOf(req.getParameter("pMaxNum"));
		String rstyle=req.getParameter("house_type");
		int rmun=Integer.valueOf(req.getParameter("bedrooms"));
		String rinfo=req.getParameter("rinfo");
		int rprice=Integer.valueOf(req.getParameter("rprice"));
		int rstatu=0;
		
		int beds=Integer.valueOf(req.getParameter("beds"));
		int bedb=Integer.valueOf(req.getParameter("bedb"));
		int bedd=Integer.valueOf(req.getParameter("bedd"));
		int washer=0;
		if(null!=req.getParameter("washer")){
			washer=1;
		}
		int aircondit=0;
		if(null!=req.getParameter("aircondit")){
			aircondit=1;
		}
		int hairdrier=0;
		if(null!=req.getParameter("hairdrier")){
			hairdrier=1;
		}
		int wifi=0;
		if(null!=req.getParameter("wifi")){
			wifi=1;
		}
		int kitchen=0;
		if(null!=req.getParameter("kitchen")){
			kitchen=1;
		}
		int breakfast=0;
		if(null!=req.getParameter("breakfast")){
			breakfast=1;
		}
		int needs=0;
		if(null!=req.getParameter("needs")){
			needs=1;
		}
		int pet=0;
		if(null!=req.getParameter("pet")){
			pet=1;
		}
		
		System.out.println(pet+""+wifi+""+needs+""+bedb);
		
		int hid=2;
		
		Equipment eq =new Equipment();
		eq.setBedb(bedb+"");
		eq.setBedd(bedd+"");
		eq.setBeds(beds+"");
		eq.setWasher(washer+"");
		eq.setAir_condit(aircondit+"");
		eq.setHairdrier(hairdrier+"");
		eq.setWifi(wifi+"");
		eq.setKitchen(kitchen+"");
		eq.setBreakfast(breakfast+"");
		eq.setNeeds(needs+"");
		eq.setPet(pet+"");
		
		
		
		EquipmentBiz equ =new EquipmentBizImpl();
		int eid=equ.addsEquipment(eq);
		int i =equ.reEquipment(hid, files, rprice, rinfo, rtitle, rrent, rstyle, rmun, rcounting);
		if (i>0) {
			out.print("<script>alert('填写有误，请重新填写');location='uploadroom.jsp'</script>");
		} else {
			RentalBiz rb =new RentalBizImpl();
			boolean flag = rb.rental(hid, files,eid,rprice, rinfo, rtitle, rstatu, rrent, rstyle, rmun, rcounting);
			
			if(flag){
				int rid=equ.seEquipment(hid, files,eid, rprice, rinfo, rtitle, rrent, rstyle, rmun, rcounting);
				out.print("<script>alert('提交成功');location='index.jsp'</script>");
			}else{
				out.print("<script>alert('填写有误，请重新填写');location='uploadroom.jsp'</script>");
			}
		
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
