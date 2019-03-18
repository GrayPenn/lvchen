package dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;





import util.DBUtil;
import util.Util;
import dao.experienceDao;
import entity.Experience;

public class experienceDaoImpl implements experienceDao {
	DBUtil db = new DBUtil();

	@Override
	public Experience getExperience(int ex_id) {

		String sql = "select * from T_EXPERIENCE where ex_id=?";
		ResultSet rs = db.query(sql, ex_id);
		Experience ex = null;
		try {
			if (rs.next()) {
				ex = new Experience(rs.getInt("ex_id"), rs.getInt("u_id"),
						rs.getInt("c_id"), rs.getInt("ex_price"),
						rs.getString("ex_title"), rs.getDate("ex_time"),
						rs.getString("ex_tips"), rs.getString("ex_content"),
						rs.getString("ex_things"), rs.getString("ex_Location"),
						rs.getString("ex_img"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				db.closeAll();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		return ex;
	}

	@Override
	public boolean save(Experience ex) {
		String sql = "insert into T_EXPERIENCE(u_id,c_id,ex_price,ex_title,ex_time,ex_tips,ex_content,ex_things,ex_location,ex_img)values(?,?,?,?,sysdate,?,?,?,?,?)";

		return db.update(sql, ex.getU_id(), ex.getC_id(), ex.getEx_price(),
				ex.getEx_title(), ex.getEx_tips(), ex.getEx_content(),
				ex.getEx_things(), ex.getEx_location(), ex.getEx_img()) > 0;
	}


	@Override
	public List<Experience> getExperience() {
		List<Experience>list=new ArrayList<Experience>();
		String sql="select ex_id,u_id,c_id,ex_title,ex_tips,ex_things,ex_location,ex_price, ex_img ,ex_content from T_EXPERIENCE ";
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
				Experience ex=new Experience();
				ex.setEx_id(rs.getInt("ex_id"));
				ex.setC_id(rs.getInt("c_id"));
				ex.setU_id(rs.getInt("u_id"));
				ex.setEx_price(rs.getInt("ex_price"));
				ex.setEx_title(rs.getString("ex_title"));
		//		ex.setEx_time(rs.getString("ex_time"));
				ex.setEx_tips(rs.getString("ex_tips"));
				ex.setEx_content(rs.getString("ex_content"));
				ex.setEx_things(rs.getString("ex_things"));
				ex.setEx_location(rs.getString("ex_location"));
				ex.setEx_img(rs.getString("ex_img"));
				list.add(ex);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
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
	public int getCountexperience() {
		int num=0;
		String sql="select count(*)num from T_EXPERIENCE";
		ResultSet rs=db.query(sql);
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
	public List<Experience> getexBypage(int page, int size) {
		List<Experience>list=new ArrayList<Experience>();
		String sql="select * from(select t.*,rownum as snum from(select ex_id,u_id,c_id,ex_title," +
				"ex_tips,ex_things,ex_location,ex_price, ex_img ,ex_content from T_EXPERIENCE)t where rownum<="+(page*size)+")" +
						"s where s.snum>"+((page-1)*size);
		ResultSet rs=db.query(sql);
		try {
			while(rs.next()){
				Experience ex=new Experience();
				ex.setEx_id(rs.getInt("ex_id"));
				ex.setC_id(rs.getInt("c_id"));
				ex.setU_id(rs.getInt("u_id"));
				ex.setEx_price(rs.getInt("ex_price"));
				ex.setEx_title(rs.getString("ex_title"));
		//		ex.setEx_time(rs.getString("ex_time"));
				ex.setEx_tips(rs.getString("ex_tips"));
				ex.setEx_content(rs.getString("ex_content"));
				ex.setEx_things(rs.getString("ex_things"));
				ex.setEx_location(rs.getString("ex_location"));
				ex.setEx_img(rs.getString("ex_img"));
				list.add(ex);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
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
	public List<Integer> getExid() { // 获取所有活动的ex_id
		// TODO Auto-generated method stub
		List<Integer> list =new ArrayList<Integer>();
		ResultSet rs= db.query("select distinct EX_ID from T_EXPERIENCE");
		try {
			while(rs.next()){
				int ex_id=rs.getInt("EX_ID");
				list.add(ex_id);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.closeAll();
		}
		return list;
	}
	

}
