package entity;

public class Comment {

private int	cid;//	����id
private String	uname;//	�����û�����
private int	hid;//	����id
private int	exid;//	�id
private String	ccontext;	//��������
private String ctime;//	����ʱ��

public Comment(String uname, int hid, int exid, String ccontext, String ctime) {
	super();
	this.uname = uname;
	this.hid = hid;
	this.exid = exid;
	this.ccontext = ccontext;
	this.ctime = ctime;
}
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getUname() {
	return uname;
}
public void setUid(String uname) {
	this.uname = uname;
}
public int getHid() {
	return hid;
}

public void setUname(String uname) {
	this.uname = uname;
}
public int getExid() {
	return exid;
}
public void setExid(int exid) {
	this.exid = exid;
}
public void sethid(int hid) {
	this.hid = hid;
}
public String getCcontext() {
	return ccontext;
}
public void setCcontext(String ccontext) {
	this.ccontext = ccontext;
}
public String getCtime() {
	return ctime;
}
public void setCtime(String ctime) {
	this.ctime = ctime;
}
public Comment(int cid, String uname, int hid, int exid, String ccontext, String ctime) {
	super();
	this.cid = cid;
	this.uname = uname;
	this.hid = hid;
	this.exid = exid;
	this.ccontext = ccontext;
	this.ctime = ctime;
}
public Comment() {
	super();
}



}
