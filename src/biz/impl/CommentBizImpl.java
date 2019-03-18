package biz.impl;

import java.util.List;

import dao.CommentDao;
import dao.impl.CommentDaoImpl;
import entity.Comment;
import biz.CommentBiz;

public class CommentBizImpl implements CommentBiz{
	CommentDao com=new CommentDaoImpl();
	@Override
	public List<Comment> getComment(String uname,int hid,int exid,int page) {		//获得所有评论
		// TODO Auto-generated method stub
		
		return com.getComment(uname,hid,exid,page);
	}

	@Override
	public int addComment(Comment comment) {	//添加评论
		// TODO Auto-generated method stub
		return com.addComment(comment);
	}

	@Override
	public int deleteComment(int cid) {		//删除评论
		// TODO Auto-generated method stub
		return com.deleteComment(cid);
	}

	@Override
	public List<String> getUicon(List<String> list) { 	 //获得评论用户的头像
		// TODO Auto-generated method stub
		return com.getUicon(list);
	}

	@Override
	public int getCommentCount(String uname,int hid,int exid) {
		// TODO Auto-generated method stub
		return com.getCommentCount(uname,hid,exid);
	}

	@Override
	public List<Comment> getCommentByPageExid(int index, int pageSize, int ex_id) {
		// TODO Auto-generated method stub
		return com.getCommentByPageExid( index, pageSize, ex_id);
	}

	public List<Comment> getCommentByPageHid(int index, int pageSize, int h_id) {
		// TODO Auto-generated method stub
		return com.getCommentByPageHid( index, pageSize, h_id);
	}
	@Override
	public int getCommentCountByexid(int ex_id) {
		// TODO Auto-generated method stub
		return com.getCommentCountByexid(ex_id);
	}
	
	public int getCommentCountByhid(int h_id) {
		// TODO Auto-generated method stub
		return com.getCommentCountByhid(h_id);
	}

	public Comment getComment(int cid){		//根据cid获取单个评论 
		// TODO Auto-generated method stub
		return com.getComment(cid);
	}

	@Override
	public List<String> getUname() {
		// TODO Auto-generated method stub
		return com.getUname();
	}

	@Override
	public int delAllComment(String[] allcid) {
		// TODO Auto-generated method stub
		return com.delAllComment(allcid);
	}

//	@Override
//	public int Update(Comment comment) {//根据cid编辑评论
//		// TODO Auto-generated method stub
//		return com.Update(comment);
//	}

}
