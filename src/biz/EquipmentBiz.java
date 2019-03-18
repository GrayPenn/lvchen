package biz;

import entity.Equipment;

public interface EquipmentBiz {
	public Equipment getEquipment(int rid);
	public boolean addEquipment(int beds,int bedb,int bedd,int washer,int aircondit
			,int hairdrier,int wifi,int kitchen,int breakfast,int needs,int pet);
	public int reEquipment(int hid,String rimg,int rprice,String rinfo,String rtitle,String rrent,String rstyle,int rmun,int rcounting);
	public int seEquipment(int hid,String rimg,int eid,int rprice,String rinfo,String rtitle,String rrent,String rstyle,int rmun,int rcounting);
	public int addsEquipment(Equipment eq);
}
