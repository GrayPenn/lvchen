package entity;

public class Admin {
	//����Ա��
private int	aid;//	id
private String	aname;//	�û���
private String	apwd;//	����
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
