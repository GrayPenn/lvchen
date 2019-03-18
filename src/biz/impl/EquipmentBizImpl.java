package biz.impl;

import dao.EquipmentDao;
import dao.impl.EquipmentDaoImpl;
import entity.Equipment;
import biz.EquipmentBiz;

public class EquipmentBizImpl implements EquipmentBiz{
	EquipmentDao equDao= new EquipmentDaoImpl();
	@Override
	public Equipment getEquipment(int rid) {
		// TODO Auto-generated method stub
		return equDao.getEquipment(rid);
	}
	@Override
	public boolean addEquipment(int beds, int bedb, int bedd, int washer,
			int aircondit, int hairdrier, int wifi, int kitchen, int breakfast,
			int needs, int pet) {
		
		return equDao.addEquipment(beds, bedb, bedd, washer, aircondit, hairdrier, wifi, kitchen, breakfast, needs, pet);
	}
	@Override
	public int reEquipment(int hid, String rimg, int rprice, String rinfo,
			String rtitle,  String rrent, String rstyle, int rmun,
			int rcounting) {
		
		return equDao.reEquipment(hid, rimg, rprice, rinfo, rtitle,  rrent, rstyle, rmun, rcounting);
	}
	@Override
	public int seEquipment(int hid, String rimg,int eid, int rprice, String rinfo,
			String rtitle, String rrent, String rstyle, int rmun, int rcounting) {
		// TODO Auto-generated method stub
		return equDao.seEquipment(hid, rimg, eid, rprice, rinfo, rtitle, rrent, rstyle, rmun, rcounting);
	}
	@Override
	public int addsEquipment(Equipment eq) {
		// TODO Auto-generated method stub
		return equDao.addsEquipment(eq);
	}

}
