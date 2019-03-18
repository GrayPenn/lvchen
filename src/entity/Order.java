package entity;

public class Order {
	private int oid; // 订单id int
	private int hid; // 房屋编号 int
	private int hostid;// 房东id int
	private int uid; // 租户id int
	private float oprice;// 单价 int
	private int onum; // 天数 int
	private float ototal; // 总价 float
	private String otime; // 生成订单时间 date

	private String ointime;// 入住时间 date
	private String oendtime;// 退房时间 date
	
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
