package dao.impl;

import util.DBUtil;
import dao.RentalDao;
import entity.House;
import entity.Room;

public class RentalDaoImpl implements RentalDao{
	DBUtil db = new DBUtil();
	Room r=new Room();

	@Override
	public boolean rental(int hid, String rimg, int eid, int rprice,
			String rinfo, String rtitle, int rstatu, String rrent, String rstyle,
			int rmun, int rcounting) {
		int i =db.update("insert into t_room(h_id,r_img,e_id,r_price,"
				+ "r_info,r_title,r_statu,r_rent,r_style,r_mun,r_counting)"
				+ " values(?,?,?,?,?,?,?,?,?,?,?)", hid,rimg,eid,rprice,rinfo,rtitle,rstatu
				,rrent,rstyle,rmun,rcounting);
		return i>0;
	}

}
