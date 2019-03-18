package entity;

public class House { //类名=表名
private int	hid;           //房屋id   ps：变量名 字段名去掉下划线
private String hlocation;//房屋位置
private  String	haddr;//房屋地址
private String	htype;//房屋类型
private String hcei;//房屋证明
private int hstatu;//审核状态
public int getHid() {
	return hid;
}
public void setHid(int hid) {
	this.hid = hid;
}
public String getHlocation() {
	return hlocation;
}
public void setHlocation(String hlocation) {
	this.hlocation = hlocation;
}
public String getHaddr() {
	return haddr;
}
public void setHaddr(String haddr) {
	this.haddr = haddr;
}

public String getHtype() {
	return htype;
}
public void setHtype(String htype) {
	this.htype = htype;
}
public String getHcei() {
	return hcei;
}
public void setHcei(String hcei) {
	this.hcei = hcei;
}


public int getHstatu() {
	return hstatu;
}
public void setHstatu(int hstatu) {
	this.hstatu = hstatu;
}


public House(int hid, String hlocation, String haddr, String htype,
		String hcei, int hstatu) {
	super();
	this.hid = hid;
	this.hlocation = hlocation;
	this.haddr = haddr;
	this.htype = htype;
	this.hcei = hcei;
	this.hstatu = hstatu;
}
public House() {
	super();
}
@Override
public String toString() {
	return "House [haddr=" + haddr + ", hcei=" + hcei + ", hid=" + hid
			+ ", hlocation=" + hlocation + ", hstatu=" + hstatu + ", htime="
			 + ", htype=" + htype + "]";
}





}
