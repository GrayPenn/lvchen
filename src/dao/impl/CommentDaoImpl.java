package dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import dao.CommentDao;
import entity.Comment;

public class CommentDaoImpl implements CommentDao {
	DBUtil db = new DBUtil();

	@Override
	public List<Comment> getComment(String uname1, int hid1, int exid1, int page) { // 获得所有评论
		// TODO Auto-generated method stub
		List<Comment> list = new ArrayList<Comment>();
		String sql = "select * from (select t.*,rownum as snum from (select * from t_comment where 1=1";
		if (null != uname1 && "" != uname1) {
			sql += " and U_NAME='" + uname1 + "'";
		}
		if (hid1 != -1) {
			sql += " and H_ID=" + hid1;
		}
		if (exid1 != -1) {
			sql += " and EX_ID=" + exid1;
		}
		sql += " )t )s where s.snum between " + ((page - 1) * 10 + 1) + " and "
				+ (page * 10);

		ResultSet rs = db.query(sql);
		try {
			while (rs.next()) {
				int cid = rs.getInt("c_id");
				String uname = rs.getString("u_NAME");
				int hid = rs.getInt("h_id");
				int exid = rs.getInt("ex_id");
				String ccontext = rs.getString("c_context");
				String ctime = rs.getString("c_time");
				Comment comment = new Comment(cid, uname, hid, exid, ccontext,
						ctime);
				list.add(comment);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeAll();
		}

		return list;
	}

	@Override
	public int addComment(Comment comment) { // 添加评论
		// TODO Auto-generated method stub
		int result = 0;
		if (comment.getHid() == -1) {
			result = db
					.update("insert into T_COMMENT(U_NAME,EX_ID,C_CONTEXT,C_TIME) values(?,?,?,?)",
							comment.getUname(), comment.getExid(),
							comment.getCcontext(), comment.getCtime());
		} else if (comment.getExid() == -1) {
			result = db
					.update("insert into T_COMMENT(U_NAME,H_ID,C_CONTEXT,C_TIME) values(?,?,?,?)",
							comment.getUname(), comment.getHid(),
							comment.getCcontext(), comment.getCtime());
		}

		return result;

	}

	@Override
	public int deleteComment(int cid) { // 删除评论
		// TODO Auto-generated method stub
		int rs = db.update("DELETE FROM T_COMMENT WHERE C_ID = ?", cid);
		return rs;
	}

	@Override
	public List<String> getUicon(List<String> uid_list) { // 获得评论用户的头像
		// TODO Auto-generated method stub
		List<String> uicon_list = new ArrayList<String>();
		uicon_list = db.queryUicon("select u_icon from t_user where u_name=",
				uid_list);
		return uicon_list;

	}

	@Override
	public int getCommentCount(String uname1, int hid1, int exid) { // 获得评论总数
		// TODO Auto-generated method stub
		int num = 0;
		String sql = "select count(*) num from t_comment where 1=1";
		if (null != uname1 && "" != uname1) {
			sql += " and U_NAME='" + uname1 + "'";
		}
		if (hid1 != -1) {
			sql += " and H_ID=" + hid1;
		}
		if (exid != -1) {
			sql += " and EX_ID=" + exid;
		}
		ResultSet rs = db.query(sql);
		try {
			if (rs.next()) {
				num = rs.getInt("num");
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

		return num;
	}

	@Override
	public List<Comment> getCommentByPageExid(int index, int pageSize, int ex_id) {
		// TODO Auto-generated method stub
		// 通过 页数和 EXID获得评论
		List<Comment> list = new ArrayList<Comment>();
		String sql = "select * from (select t.*,rownum as snum from (select * from t_comment where ex_id=?)t )s where s.snum between "
				+ ((index - 1) * pageSize + 1) + " and " + (index * pageSize);
		ResultSet rs = db.query(sql, ex_id);
		try {
			while (rs.next()) {
				int cid = rs.getInt("c_id");
				String uname = rs.getString("u_NAME");
				int hid = rs.getInt("h_id");
				int exid = rs.getInt("ex_id");
				String ccontext = rs.getString("c_context");
				String ctime = rs.getString("c_time");
				Comment comment = new Comment(cid, uname, hid, exid, ccontext,
						ctime);
				list.add(comment);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeAll();
		}

		return list;
	}

	@Override
	public List<Comment> getCommentByPageHid(int index, int pageSize, int h_id) {
		// TODO Auto-generated method stub
		// 通过 页数和 EXID获得评论
		List<Comment> list = new ArrayList<Comment>();
		String sql = "select * from (select t.*,rownum as snum from (select * from t_comment where h_id=?)t )s where s.snum between "
				+ ((index - 1) * pageSize + 1) + " and " + (index * pageSize);
		ResultSet rs = db.query(sql, h_id);
		try {
			while (rs.next()) {
				int cid = rs.getInt("c_id");
				String uname = rs.getString("u_NAME");
				int hid = rs.getInt("h_id");
				int exid = rs.getInt("ex_id");
				String ccontext = rs.getString("c_context");
				String ctime = rs.getString("c_time");
				Comment comment = new Comment(cid, uname, hid, exid, ccontext,
						ctime);
				list.add(comment);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeAll();
		}

		return list;
	}

	public int getCommentCountByexid(int ex_id) {// 获取条数by exid
		// TODO Auto-generated method stub
		int num = 0;
		String sql = "select count(*) num from t_comment where ex_id=?";
		ResultSet rs = db.query(sql, ex_id);
		try {
			if (rs.next()) {
				num = rs.getInt("num");
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
		return num;
	}

	public int getCommentCountByhid(int h_id) {// 获取条数by hid
		// TODO Auto-generated method stub
		int num = 0;
		String sql = "select count(*) num from t_comment where h_id=?";
		ResultSet rs = db.query(sql, h_id);
		try {
			if (rs.next()) {
				num = rs.getInt("num");
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
		return num;
	}


	@Override
	public List<String> getUname() {
		// TODO Auto-generated method stub
		List<String> list = new ArrayList<String>();
		ResultSet rs = db.query("select distinct u_name from T_COMMENT");
		try {
			while (rs.next()) {
				String uname = rs.getString("u_name");
				list.add(uname);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.closeAll();
		}
		return list;
	}

	@Override
	public int delAllComment(String[] allcid) { // 删除多条评论
		// TODO Auto-generated method stub
		int rs = 0;
		for (String i : allcid) {
			rs += db.update("DELETE FROM T_COMMENT WHERE C_ID = ?",
					Integer.valueOf(i));
		}
		return rs;
	}

	@Override
	public Comment getComment(int cid) {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public int Update(Comment comment) {// 根据cid编辑评论
//		// TODO Auto-generated method stub
//		System.out.println(comment.getHid()+"-----"+comment.getExid());
//		int rs = db
//				.update("update T_COMMENT set U_NAME='?' , H_ID='?', C_CONTEXT='?', EX_ID='?' where C_ID=?",
//						comment.getUname(),comment.getHid(),comment.getCcontext(),comment.getExid(),comment.getCid());
//		return rs;
//	}

//	@Override
//	public Comment getComment(int cid) {		//根据cid获取单个评论 
//		// TODO Auto-generated method stub
//		ResultSet rs = db.query("select * from T_COMMENT where C_ID=?",cid);
//		Comment com=null;
//		try {
//			while (rs.next()) {
//				int id=rs.getInt("C_ID");
//				String uname = rs.getString("u_name");
//				int rid = rs.getInt("H_ID");
//				String context = rs.getString("C_CONTEXT");
//				String ctime = rs.getString("C_TIME");
//				int exid = rs.getInt("EX_ID");
//				com=new Comment(id,uname,rid,exid,context,ctime);
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			db.closeAll();
//		}
//		return com;
//	}

}
