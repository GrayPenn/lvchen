package entity;

public class Mes {
//��Ϣ��
private int	mid;//	���
private int	sendid;//	�����߱��
private int	recid;//	���ձ��
private int	mesid	;//��Ϣ���
private boolean	mstatu	;//״̬
public int getMid() {
	return mid;
}
public void setMid(int mid) {
	this.mid = mid;
}
public int getSendid() {
	return sendid;
}
public void setSendid(int sendid) {
	this.sendid = sendid;
}
public int getRecid() {
	return recid;
}
public void setRecid(int recid) {
	this.recid = recid;
}
public int getMesid() {
	return mesid;
}
public void setMesid(int mesid) {
	this.mesid = mesid;
}
public boolean isMstatu() {
	return mstatu;
}
public void setMstatu(boolean mstatu) {
	this.mstatu = mstatu;
}
public Mes(int mid, int sendid, int recid, int mesid, boolean mstatu) {
	super();
	this.mid = mid;
	this.sendid = sendid;
	this.recid = recid;
	this.mesid = mesid;
	this.mstatu = mstatu;
}
public Mes() {
	super();
}



}
