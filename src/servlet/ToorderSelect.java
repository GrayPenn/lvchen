package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.xinxidaobiz;
import biz.impl.xinxidaobizimpl;
import entity.xinxi;

public class ToorderSelect extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
doPost(request, response);

}


public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

response.setContentType("text/html;charset=utf-8");
request.setCharacterEncoding("utf-8");
PrintWriter out = response.getWriter();


String name=request.getParameter("name");
String checkindate=request.getParameter("checkindate");
int price=0;
int sfz=0;
int phone=0;
int age=0;
if(request.getParameter("price")!=null){
	 price=Integer.valueOf(request.getParameter("price"));
}
if(request.getParameter("sfz")!=null){
	sfz=Integer.valueOf(request.getParameter("sfz"));
}
if(request.getParameter("phone")!=null){
	phone=Integer.valueOf(request.getParameter("phone"));
}
if(request.getParameter("age")!=null){
	age=Integer.valueOf(request.getParameter("age"));
}

//int sfz=Integer.valueOf(request.getParameter("sfz"));
//int phone=Integer.valueOf(request.getParameter("phone"));	
//int age=Integer.valueOf(request.getParameter("age"));



request.setAttribute("name",name );
request.setAttribute("price", price);
request.setAttribute("sfz",sfz );
request.setAttribute("phone",phone );
request.setAttribute("name",name );
request.setAttribute("age",age );
request.setAttribute("checkindate",checkindate );


xinxi x=new xinxi();
x.setX_name(name);
x.setX_phone(phone);		
x.setX_sfz(sfz);
x.setX_price(price);

xinxidaobiz biz=new xinxidaobizimpl();
boolean flag = biz.save(x);
if (flag) {
	out.print("<script>alert('信息提交成功');location='zf.jsp'</script>");
} else {
	out.print("<script>alert('信息提交失败');location='DDregister.jsp'</script>");
}


request.getRequestDispatcher("zf.jsp").forward(request, response);

out.flush();
out.close();
}

}
