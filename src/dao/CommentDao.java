package dao;

import java.util.List;

import entity.Comment;

public interface CommentDao {
	public List<Comment> getComment(String uname,int hid,int exid,int page);  //�������������������

	public List<String> getUicon(List<String> list); //��������û���ͷ��

	public int addComment(Comment comment);//�������

	public int deleteComment(int cid);//ɾ������
	
	public int delAllComment(String[] allcid);//ɾ����������

	public int getCommentCount(String uname,int hid,int exid); //������������������

	public List<Comment> getCommentByPageExid(int index, int pageSize, int ex_id);//�����������

	public int getCommentCountByexid(int ex_id); //�������������

	public Comment getComment(int cid);//����cid��ȡ��������

	public List<String> getUname(); //��ȡ���������ߵ�����

	public int getCommentCountByhid(int h_id);//���ݽ��ܻ��������

	public List<Comment> getCommentByPageHid(int index, int pageSize, int h_id);//���ݽ��ܻ������

//	public int Update(Comment comment);//����cid�༭����

}
