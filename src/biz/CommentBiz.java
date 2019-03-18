package biz;

import java.util.List;

import entity.Comment;

public interface CommentBiz {
	public List<Comment> getComment(String uname,int hid,int exid,int page); //根据条件获得所有评论
	
	public List<String> getUicon(List<String> list); //获得评论用户的头像
	
	public int addComment(Comment comment);//添加评论
	
	public int deleteComment(int cid);//删除评论
	
	public int delAllComment(String[] allcid);//删除多条评论

	public int getCommentCount(String uname,int hid,int exid); //根据条件查找评论数

	public List<Comment> getCommentByPageExid(int index, int pageSize, int ex_id);//体验活动获得评论
	
	public List<Comment> getCommentByPageHid(int index, int pageSize, int h_id);//房屋介绍获得评论

	public int getCommentCountByexid(int ex_id); //体验活动获得评论数
	
	public int getCommentCountByhid(int h_id);//房屋介绍获得评论数

	public Comment getComment(int cid);//根据cid获取单个评论
	
//	public int Update(Comment comment);//根据cid编辑评论
	
	public List<String> getUname(); //获取所有评论者的名字

	


}
