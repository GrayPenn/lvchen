package biz;

import java.util.List;

import entity.Comment;

public interface CommentBiz {
	public List<Comment> getComment(String uname,int hid,int exid,int page); //�������������������
	
	public List<String> getUicon(List<String> list); //��������û���ͷ��
	
	public int addComment(Comment comment);//�������
	
	public int deleteComment(int cid);//ɾ������
	
	public int delAllComment(String[] allcid);//ɾ����������

	public int getCommentCount(String uname,int hid,int exid); //������������������

	public List<Comment> getCommentByPageExid(int index, int pageSize, int ex_id);//�����������
	
	public List<Comment> getCommentByPageHid(int index, int pageSize, int h_id);//���ݽ��ܻ������

	public int getCommentCountByexid(int ex_id); //�������������
	
	public int getCommentCountByhid(int h_id);//���ݽ��ܻ��������

	public Comment getComment(int cid);//����cid��ȡ��������
	
//	public int Update(Comment comment);//����cid�༭����
	
	public List<String> getUname(); //��ȡ���������ߵ�����

	


}
