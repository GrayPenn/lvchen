package biz.impl;

import java.util.List;

import biz.HouseBiz;
import dao.HouseDao;
import dao.impl.HouseDaoImpl;
import entity.House;

public class HouseBizImpl implements  HouseBiz{
     HouseDao hd=new HouseDaoImpl();
	public List<House> checkHouse(int hid, int hstatu) {
		// TODO Auto-generated method stub
		return hd.checkHouse(hid, hstatu);
	}

	public List<House> queryHouse(int uid,int hid) {
		// TODO Auto-generated method stub
		return hd.queryHouse(uid,hid);
	}


	@Override
	public House getLocation(int rid) {
		// TODO Auto-generated method stub
		return hd.getLocation(rid);
	}

 





	
}
