package dao;

import java.util.List;

import entity.Comment;
import entity.User;

public interface UserDao {
	//�û�ע��
	public User checkReg(String uname,String upwd,String uphone);
	//�û���¼
	public User checkLogin(String uname,String upwd);
	//���еĸ�����Ϣ
	public User personalDate(String uname);
	//�޸ĸ���ͷ��
	public Boolean ModifyIcon(String uname,String file);
	//�޸Ļ�������
	public Boolean Modifybase(String uname,String usex,String uage,String uphone,String uemail,String ucity,String uaddr,String uaccount);
    public List<User>getuser();

    //�޸�����
    public Boolean MofifyPwd(String uname ,String upwd);

    public User getname(int uid);
    //ȷ���û�������
    public Boolean CheckName(String uname);
    //ȷ�������Ƿ���ȷ
    public Boolean CheckPwd(String uname,String pwd);
    
    //ͨ������id��ѯ����������Ϣ
    public User getMasterInfo(int hid);
    //�ϴ��û����֤��֤
    public Boolean ModifyCertificate(String uname,String uidnum,String file);
    
    //��Ϣ��ѯ
    public List<Comment> Message(String hid);
}
