package dao.impl;

import java.sql.ResultSet;

import util.DBUtil;
import dao.EquipmentDao;
import entity.Equipment;

public  class EquipmentDaoImpl implements EquipmentDao{
	DBUtil db=new DBUtil();
	Equipment equ=new Equipment();
	@Override
	public Equipment getEquipment(int rid) {
		String sql="select * from t_Equipment where e_id=(select e_id from t_room where r_id=?)";
		ResultSet rs=db.query(sql, rid);
		try {
			if(rs.next()){
				equ=new Equipment(rs.getString("e_id"),rs.getString("bed_s"),rs.getString("bed_b"),rs.getString("bed_d"),
						rs.getString("washer"),rs.getString("air_condit"),rs.getString("hairdrier"),rs.getString("wifi"),
						rs.getString("kitchen"),rs.getString("breakfast"),rs.getString("needs"),rs.getString("pet"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return equ;
	}
	@Override
	public boolean addEquipment(int beds,int bedb,int bedd,int washer,int aircondit
			,int hairdrier,int wifi,int kitchen,int breakfast,int needs,int pet) {


		int i =db.update("insert into t_equipment(bed_s,bed_b,bed_d,washer,air_condit,hairdrier,wifi,kitchen,breakfast,needs,pet) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?)", beds,bedb,bedd,washer,aircondit,hairdrier,wifi,kitchen,breakfast,needs,pet);
		return i>0;
	}
	@Override
	public int reEquipment(int hid, String rimg, int rprice,
			String rinfo, String rtitle,  String rrent,
			String rstyle, int rmun, int rcounting) {
		String sql="select * from t_room where h_id=? and r_img=? and r_price=? and "
				+ "r_info=? and r_title=?  and r_rent=? and r_style=? and r_mun=? and r_counting=? ";
		ResultSet rs=null;
		rs=db.query(sql, hid, rimg, rprice,rinfo, rtitle, rrent,
				rstyle, rmun, rcounting);
		int con=0;
		try {
			if(rs.next()){
				con++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return con;

	}
	@Override
	public int seEquipment(int hid, String rimg,int eid ,int rprice, String rinfo,
			String rtitle, String rrent, String rstyle, int rmun, int rcounting) {
		String sql="select * from t_room where h_id=? and r_img=? and e_id=? and r_price=? and "
				+ "r_info=? and r_title=?  and r_rent=? and r_style=? and r_mun=? and r_counting=? ";
		ResultSet rs=null;
		rs=db.query(sql, hid, rimg,eid, rprice,rinfo, rtitle, rrent,
				rstyle, rmun, rcounting);
		int rid = 0;
		try {
			if(rs.next()){
				rid=Integer.valueOf(rs.getString("r_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return rid;

	}
	@Override
	public int addsEquipment(Equipment eq) {
		System.out.println(eq);
		equ.setBedb(eq.getBedb());
		equ.setBedd(eq.getBedd());
		equ.setBeds(eq.getBeds());
		equ.setWasher(eq.getWasher());
		equ.setAir_condit(eq.getAir_condit());
		equ.setHairdrier(eq.getHairdrier());
		equ.setWifi(eq.getWifi());
		equ.setKitchen(eq.getKitchen());
		equ.setBreakfast(eq.getBreakfast());
		equ.setNeeds(eq.getNeeds());
		equ.setPet(eq.getPet());
		String sql="select * from t_equipment where bed_s=? and bed_b=? and bed_d=? and "
				+ "washer=? and air_condit=?  and hairdrier=? and wifi=? and kitchen=? "
				+ "and breakfast=? and needs=? and pet=?";
		ResultSet rs=null;
		rs=db.query(sql,Integer.parseInt(equ.getBeds()),Integer.parseInt(equ.getBedb()),Integer.parseInt(equ.getBedd()),Integer.parseInt(equ.getWasher()),Integer.parseInt(equ.getAir_condit()),Integer.parseInt(equ.getHairdrier()),
				Integer.parseInt(equ.getWifi()),Integer.parseInt(equ.getKitchen()),Integer.parseInt(equ.getBreakfast()),Integer.parseInt(equ.getNeeds()),Integer.parseInt(equ.getPet()));
		int eid = 0;
		try {
			if(rs.next()){
				eid=rs.getInt("e_id");
			}else{
				addEquipment(Integer.parseInt(equ.getBeds()),Integer.parseInt(equ.getBedb()),Integer.parseInt(equ.getBedd()),Integer.parseInt(equ.getWasher()),Integer.parseInt(equ.getAir_condit()),Integer.parseInt(equ.getHairdrier()),
						Integer.parseInt(equ.getWifi()),Integer.parseInt(equ.getKitchen()),Integer.parseInt(equ.getBreakfast()),Integer.parseInt(equ.getNeeds()),Integer.parseInt(equ.getPet()));

				eid=addsEquipment(equ);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}



		return eid;




	}
}
