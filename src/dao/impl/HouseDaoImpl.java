

package dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import dao.HouseDao;
import entity.House;
import entity.Room;




public class HouseDaoImpl<ruturn> implements  HouseDao{
      DBUtil db =new DBUtil();
	public List<House> queryHouse(int uid,int  hid) {
		//查询需要审核的房屋信息
		    String sql="select * from T_HOUSE where 1=1";
		    if (uid!=-1){
		    	sql+="and uid ="+uid;
		    }
		    if (hid!=-1){
		    	sql+="and hid ="+hid;
		    }
		    
			ResultSet rs =db.query(sql);
			//House house=null;
			List<House> list = new ArrayList<House>() ;
			try {
				while (rs.next()){
					int hid1=rs.getInt("h_id");
					String hlocation=rs.getString("h_location");
					String haddr=rs.getString("h_addr");
					String htype=rs.getString("h_type");
					String hcei=rs.getString("h_cei");
					int hstatu=rs.getInt("h_statu");
					//house=new House(hid,hlocation,haddr,htype,hcei,hstatu);
					list.add(new House(hid1,hlocation,haddr,htype,hcei,hstatu));
					
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
			return list;
	}

	public List<House> checkHouse(int hid,int hstatu) {
		// 审核房屋
		  String sql="update t_house set h_statu="+ hstatu+"where h_id="+ hid;
			int  h =db.update(sql);
			List<House> list = new ArrayList<House>() ;
			try {
				if (h>0){
				ruturn list1;
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
			return queryHouse(hid, hstatu);
	}

	@Override
	public House getLocation(int rid) {
		String sql="select * from T_HOUSE where h_id=(select h_id from t_room where r_id=?)";
		ResultSet rs=db.query(sql, rid);
		
		House h=null;
		try {
			if(rs.next()){
			
				h=new House(rs.getInt("h_id"), rs.getString("h_location"), rs.getString("h_addr"), rs.getString("h_type"), rs.getString("h_cei"), rs.getInt("h_statu"));
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
		return h;
	}


}

