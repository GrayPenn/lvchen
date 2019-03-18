package dao;

import entity.Room;

public interface RentalDao {

	public boolean rental(int hid,String rimg,int eid,int rprice,String rinfo,String rtitle,int rstatu,String rrent,String rstyle,int rmun,int rcounting);
}
