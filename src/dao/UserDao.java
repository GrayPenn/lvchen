package dao;

import java.util.List;

import entity.Comment;
import entity.User;

public interface UserDao {
	//用户注册
	public User checkReg(String uname,String upwd,String uphone);
	//用户登录
	public User checkLogin(String uname,String upwd);
	//所有的个人信息
	public User personalDate(String uname);
	//修改个人头像
	public Boolean ModifyIcon(String uname,String file);
	//修改基础资料
	public Boolean Modifybase(String uname,String usex,String uage,String uphone,String uemail,String ucity,String uaddr,String uaccount);
    public List<User>getuser();

    //修改密码
    public Boolean MofifyPwd(String uname ,String upwd);

    public User getname(int uid);
    //确认用户名可用
    public Boolean CheckName(String uname);
    //确认密码是否正确
    public Boolean CheckPwd(String uname,String pwd);
    
    //通过房屋id查询房东所有信息
    public User getMasterInfo(int hid);
    //上传用户身份证认证
    public Boolean ModifyCertificate(String uname,String uidnum,String file);
    
    //消息查询
    public List<Comment> Message(String hid);
}
