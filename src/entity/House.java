package entity;

public class House { //����=����
private int	hid;           //����id   ps�������� �ֶ���ȥ���»���
private String hlocation;//����λ��
private  String	haddr;//���ݵ�ַ
private String	htype;//��������
private String hcei;//����֤��
private int hstatu;//���״̬
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
