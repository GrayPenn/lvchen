package entity;

public class Order {
	private int oid; // ����id int
	private int hid; // ���ݱ�� int
	private int hostid;// ����id int
	private int uid; // �⻧id int
	private float oprice;// ���� int
	private int onum; // ���� int
	private float ototal; // �ܼ� float
	private String otime; // ���ɶ���ʱ�� date

	private String ointime;// ��סʱ�� date
	private String oendtime;// �˷�ʱ�� date
	
	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public int getHostid() {
		return hostid;
	}

	public void setHostid(int hostid) {
		this.hostid = hostid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public float getOprice() {
		return oprice;
	}

	public void setOprice(float oprice) {
		this.oprice = oprice;
	}

	public int getOnum() {
		return onum;
	}

	public void setOnum(int onum) {
		this.onum = onum;
	}

	public float getOtotal() {
		return ototal;
	}

	public void setOtotal(float ototal) {
		this.ototal = ototal;
	}

	public String getOtime() {
		return otime;
	}

	public void setOtime(String otime) {
		this.otime = otime;
	}

	public String getOintime() {
		return ointime;
	}

	public void setOintime(String ointime) {
		this.ointime = ointime;
	}

	public String getOendtime() {
		return oendtime;
	}

	public void setOendtime(String oendtime) {
		this.oendtime = oendtime;
	}

	public Order(int oid, int hid, int hostid, int uid, float oprice, int onum,
			float ototal, String otime, String ointime, String oendtime) {
		super();
		this.oid = oid;
		this.hid = hid;
		this.hostid = hostid;
		this.uid = uid;
		this.oprice = oprice;
		this.onum = onum;
		this.ototal = ototal;
		this.otime = otime;
		this.ointime = ointime;
		this.oendtime = oendtime;
	}

	public Order() {
		super();
	}

	public Order(float ototal) {
		super();
		this.ototal = ototal;
	}

	
}
