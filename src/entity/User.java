package entity;

public class User {
	private int uid;// 用户id
	private String uname; // 用户名 varchar
	private String upwd; // 用户密码 varchar
	private String usex; // 性别 varchar
	private String uage; // 年龄 varchar
	private String uicon; // 头像 varchar
	private String uphone; // 手机号码 int
	private String uemail; // 邮箱 varchar
	private String ucity; // 所在城市
	private String uaddr; // 地址 varchar
	private int ustatu; // 状态 boolean
	private String uidnum; // 身份证号码 varchar
	private String uidimg; // 身份证照 varchar
	private int hid;// 房屋id
	private float uaccount; // 账户余额 float

	public User(int uid, String uname) {
		super();
		this.uid = uid;
		this.uname = uname;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUsex() {
		return usex;
	}

	public void setUsex(String usex) {
		this.usex = usex;
	}

	public String getUage() {
		return uage;
	}

	public void setUage(String uage) {
		this.uage = uage;
	}

	public String getUicon() {
		return uicon;
	}

	public void setUicon(String uicon) {
		this.uicon = uicon;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUcity() {
		return ucity;
	}

	public void setUcity(String ucity) {
		this.ucity = ucity;
	}

	public String getUaddr() {
		return uaddr;
	}

	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}

	public int getUstatu() {
		return ustatu;
	}

	public void setUstatu(int ustatu) {
		this.ustatu = ustatu;
	}

	public String getUidnum() {
		return uidnum;
	}

	public void setUidnum(String uidnum) {
		this.uidnum = uidnum;
	}

	public String getUidimg() {
		return uidimg;
	}

	public void setUidimg(String uidimg) {
		this.uidimg = uidimg;
	}

	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public float getUaccount() {
		return uaccount;
	}

	public void setUaccount(float uaccount) {
		this.uaccount = uaccount;
	}

	public User(int uid, String uname, String upwd, String usex, String uage,
			String uicon, String uphone, String uemail, String ucity,
			String uaddr, int ustatu, String uidnum, String uidimg, int hid,
			float uaccount) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upwd = upwd;
		this.usex = usex;
		this.uage = uage;
		this.uicon = uicon;
		this.uphone = uphone;
		this.uemail = uemail;
		this.ucity = ucity;
		this.uaddr = uaddr;
		this.ustatu = ustatu;
		this.uidnum = uidnum;
		this.uidimg = uidimg;
		this.hid = hid;
		this.uaccount = uaccount;
	}

	// 用于注册
	public User(String uname, String upwd, String uphone, String uemail) {
		super();

		this.uname = uname;
		this.upwd = upwd;
		this.uphone = uphone;
		this.uemail = uemail;
	}

	// 用于登录
	public User(String uname, String upwd, String uicon) {
		super();
		this.uname = uname;
		this.upwd = upwd;
		this.uicon = uicon;
	}





	//用于房东审核

	public User() {
		super();
	}

	// 用于房东审核

	public User(int uid, String uname, String uicon, int ustatu,String uidimg, int hid) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.uicon = uicon;
		this.uidimg =uidimg;
		this.ustatu = ustatu;
		this.hid = hid;
	}
}
