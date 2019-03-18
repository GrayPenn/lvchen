package biz.impl;

import dao.RentalDao;
import dao.impl.RentalDaoImpl;
import entity.Room;
import biz.RentalBiz;

public class RentalBizImpl implements RentalBiz {
	RentalDao rd=new RentalDaoImpl();
  
	@Override
	public boolean rental(int hid,String rimg,int eid,int rprice,String rinfo,String rtitle,int rstatu,String rrent,String rstyle,int rmun,int rcounting) {
		
		return rd.rental(hid, rimg, eid, rprice, rinfo, rtitle, rstatu, rrent, rstyle, rmun, rcounting);
	}

}
