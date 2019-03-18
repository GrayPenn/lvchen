package dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import dao.RoomDao;
import entity.House;
import entity.Room;

public class RoomDaoImpl implements RoomDao{
	DBUtil db=new DBUtil();
	
	@Override
	public Room getRoom(int rid) {
		String sql="select * from T_ROOM where r_id=?";
		ResultSet rs=db.query(sql, rid);
		Room r=null;
		try {
			if(rs.next()){
				r=new Room(rs.getInt("r_id"),rs.getInt("h_id"),
						rs.getString("r_img"),rs.getString("r_rent"),
						rs.getString("r_style"),rs.getInt("r_mun"),
						rs.getInt("r_counting"),rs.getInt("e_id"),
						rs.getFloat("r_price"),rs.getString("r_info"),
						rs.getString("r_title"),rs.getInt("r_statu"));
				

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
		return r;
	}
	@Override
	public List<Room> getRoom() {
		List<Room> list=new ArrayList<Room>();
		String sql="select r_id,h_id,r_img,e_id,r_price,r_info,r_title,r_statu,r_rent,r_style,r_mun,r_counting from T_ROOM";
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
				Room r=new Room();
				r.setRid(rs.getInt("r_id"));
				r.setHid(rs.getInt("h_id"));
				r.setRimg(rs.getString("r_img"));
				r.setEid(rs.getInt("e_id"));
				r.setRprice(rs.getFloat("r_price"));
				r.setRinfo(rs.getString("r_info"));
				r.setRtitle(rs.getString("r_title"));
				r.setRstatu(rs.getInt("r_statu"));
				r.setRrent(rs.getString("r_rent"));
				r.setRstyle(rs.getString("r_style"));
				r.setRmun(rs.getInt("r_mun"));
				r.setRcounting(rs.getInt("r_counting"));
				list.add(r);
				
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
		list.size();
		return list;
	}
	@Override
	public List<Room> searchRoom(String rrent, float rprice, int rcounting) {
		List<Room> list=new ArrayList<Room>();
		String sql="select r_id,h_id,r_img,e_id,r_price,r_info,r_title,r_statu,r_rent,r_style,r_mun,r_counting from T_ROOM where r_rent=? and r_price<=? and r_counting=?";
		ResultSet rs=db.query(sql,rrent,rprice,rcounting);
		try {
			while(rs.next()){
				Room r=new Room();
				r.setRid(rs.getInt("r_id"));
				r.setHid(rs.getInt("h_id"));
				r.setRimg(rs.getString("r_img"));
				r.setEid(rs.getInt("e_id"));
				r.setRprice(rs.getFloat("r_price"));
				r.setRinfo(rs.getString("r_info"));
				r.setRtitle(rs.getString("r_title"));
				r.setRstatu(rs.getInt("r_statu"));
				r.setRrent(rs.getString("r_rent"));
				r.setRstyle(rs.getString("r_style"));
				r.setRmun(rs.getInt("r_mun"));
				r.setRcounting(rs.getInt("r_counting"));
				list.add(r);
				
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
		list.size();
		return list;
	}

	@Override
	public int getRoomCount() {
		String sql="select count(*) num from t_room";
		ResultSet rs= db.query(sql);
		int num=0;
		try {
			if(rs.next()){
				num=rs.getInt("num");
				
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
		return num;
	}
	@Override
	public List<Room> getRoomByPageSearch(int page, int size,String rrent, float rprice, int rcounting) {
		List<Room> list=new ArrayList<Room>();
		String sql="select * from (select t.*,rownum as snum from (select r_id,h_id,r_img,e_id,r_price,r_info,r_title,r_statu,r_rent,r_style,r_mun,r_counting from T_ROOM where r_rent=? and r_price<=? and r_counting=?)t where rownum<="+(page*size)+") s where s.snum>"+(page-1)*size;
		ResultSet rs=db.query(sql,rrent,rprice,rcounting);
		try {
			while(rs.next()){
				Room r=new Room();
				r.setRid(rs.getInt("r_id"));
				r.setHid(rs.getInt("h_id"));
				r.setRimg(rs.getString("r_img"));
				r.setEid(rs.getInt("e_id"));
				r.setRprice(rs.getFloat("r_price"));
				r.setRinfo(rs.getString("r_info"));
				r.setRtitle(rs.getString("r_title"));
				r.setRstatu(rs.getInt("r_statu"));
				r.setRrent(rs.getString("r_rent"));
				r.setRstyle(rs.getString("r_style"));
				r.setRmun(rs.getInt("r_mun"));
				r.setRcounting(rs.getInt("r_counting"));
				list.add(r);
				
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
		list.size();
		return list;
	}
	@Override
	public List<Room> getRoomByPage(int page, int size) {
		List<Room> list=new ArrayList<Room>();
		String sql="select * from (select t.*,rownum as snum from (select r_id,h_id,r_img,e_id,r_price,r_info,r_title,r_statu,r_rent,r_style,r_mun,r_counting from T_ROOM)t where rownum<="+(page*size)+") s where s.snum>"+(page-1)*size;
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
				Room r=new Room();
				r.setRid(rs.getInt("r_id"));
				r.setHid(rs.getInt("h_id"));
				r.setRimg(rs.getString("r_img"));
				r.setEid(rs.getInt("e_id"));
				r.setRprice(rs.getFloat("r_price"));
				r.setRinfo(rs.getString("r_info"));
				r.setRtitle(rs.getString("r_title"));
				r.setRstatu(rs.getInt("r_statu"));
				r.setRrent(rs.getString("r_rent"));
				r.setRstyle(rs.getString("r_style"));
				r.setRmun(rs.getInt("r_mun"));
				r.setRcounting(rs.getInt("r_counting"));
				list.add(r);
				
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
		list.size();
		return list;
	}

	
	@Override
	public List<Integer> getRid() {  //获取所有房子的hid
		// TODO Auto-generated method stub
		List<Integer> list =new ArrayList<Integer>();
		ResultSet rs= db.query("select distinct R_ID from T_Room");
		try {
			while(rs.next()){
				int h_id=rs.getInt("R_ID");
				list.add(h_id);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.closeAll();
		}
		return list;
	}
	
	

}
