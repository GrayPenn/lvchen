package entity;

public class Admin {
	//管理员表
private int	aid;//	id
private String	aname;//	用户名
private String	apwd;//	密码
public int getAid() {
	return aid;
}
public void setAid(int aid) {
	this.aid = aid;
}
public String getAname() {
	return aname;
}
public void setAname(String aname) {
	this.aname = aname;
}
public String getApwd() {
	return apwd;
}
public void setApwd(String apwd) {
	this.apwd = apwd;
}
public Admin(int aid, String aname, String apwd) {
	super();
	this.aid = aid;
	this.aname = aname;
	this.apwd = apwd;
}
public Admin() {
	super();
}



}
