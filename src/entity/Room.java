package entity;

public class Room {
private int	rid;//������
private int hid;//����id
private String rimg;//����ͼƬ
private	String rrent;//���ӳ��ⷽʽ
private	String rstyle;//������Ʒ��
private	int rmun;//��������
private	int rcounting;//��ס����
private int eid;//�豸
private float rprice;//���ݵ���
private String rinfo;//����������Ϣ
private String rtitle;//���ݱ���
private	int rstatu;//״̬
public String getRrent() {
	return rrent;
}
public void setRrent(String rrent) {
	this.rrent = rrent;
}
public String getRstyle() {
	return rstyle;
}
public void setRstyle(String rstyle) {
	this.rstyle = rstyle;
}
public int getRmun() {
	return rmun;
}
public void setRmun(int rmun) {
	this.rmun = rmun;
}
public int getRcounting() {
	return rcounting;
}
public void setRcounting(int rcounting) {
	this.rcounting = rcounting;
}

public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}
public int getHid() {
	return hid;
}
public void setHid(int hid) {
	this.hid = hid;
}
public String getRimg() {
	return rimg;
}
public void setRimg(String rimg) {
	this.rimg = rimg;
}
public int getEid() {
	return eid;
}
public void setEid(int eid) {
	this.eid = eid;
}
public float getRprice() {
	return rprice;
}
public void setRprice(float rprice) {
	this.rprice = rprice;
}
public String getRinfo() {
	return rinfo;
}
public void setRinfo(String rinfo) {
	this.rinfo = rinfo;
}
public String getRtitle() {
	return rtitle;
}
public void setRtitle(String rtitle) {
	this.rtitle = rtitle;
}
public int getRstatu() {
	return rstatu;
}
public void setRstatu(int rstatu) {
	this.rstatu = rstatu;
}
public Room(int rid, int hid, String rimg, String rrent, String rstyle,
		int rnum, int rcounting, int eid, float rprice, String rinfo,
		String rtitle, int rstatu) {
	super();
	this.rid = rid;
	this.hid = hid;
	this.rimg = rimg;
	this.rrent = rrent;
	this.rstyle = rstyle;
	this.rmun = rnum;
	this.rcounting = rcounting;
	this.eid = eid;
	this.rprice = rprice;
	this.rinfo = rinfo;
	this.rtitle = rtitle;
	this.rstatu = rstatu;
}


public Room() {
	super();
}
@Override
public String toString() {
	return "Room [eid=" + eid + ", hid=" + hid + ", rcounting=" + rcounting
			+ ", rid=" + rid + ", rimg=" + rimg + ", rinfo=" + rinfo
			+ ", rmun=" + rmun + ", rprice=" + rprice + ", rrent=" + rrent
			+ ", rstatu=" + rstatu + ", rstyle=" + rstyle + ", rtitle="
			+ rtitle + "]";
}



}
