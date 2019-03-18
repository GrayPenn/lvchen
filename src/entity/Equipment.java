package entity;

public class Equipment {

	private String eid;	//设备id	 String
	private String beds;	//单人床（大）	String
	private String bedb;	//单人床（小）	String
	private String bedd;	//双人床	String
	private String washer;	//洗衣机	String
	private String	air_condit;	//空调	String
	private String	hairdrier;	//吹风机	String
	private String	wifi;	//无线上网	String
	private String	kitchen	;//厨房	String
	private String	breakfast;	//早餐	String
	private String	needs;	//生活必需品	String
	private String	pet	;//允许携带宠物	String
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getBeds() {
		return beds;
	}
	public void setBeds(String beds) {
		this.beds = beds;
	}
	public String getBedb() {
		return bedb;
	}
	public void setBedb(String bedb) {
		this.bedb = bedb;
	}
	public String getBedd() {
		return bedd;
	}
	public void setBedd(String bedd) {
		this.bedd = bedd;
	}
	public String getWasher() {
		return washer;
	}
	public void setWasher(String washer) {
		this.washer = washer;
	}
	public String getAir_condit() {
		return air_condit;
	}
	public void setAir_condit(String airCondit) {
		air_condit = airCondit;
	}
	public String getHairdrier() {
		return hairdrier;
	}
	public void setHairdrier(String hairdrier) {
		this.hairdrier = hairdrier;
	}
	public String getWifi() {
		return wifi;
	}
	public void setWifi(String wifi) {
		this.wifi = wifi;
	}
	public String getKitchen() {
		return kitchen;
	}
	public void setKitchen(String kitchen) {
		this.kitchen = kitchen;
	}
	public String getBreakfast() {
		return breakfast;
	}
	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}
	public String getNeeds() {
		return needs;
	}
	public void setNeeds(String needs) {
		this.needs = needs;
	}
	public String getPet() {
		return pet;
	}
	public void setPet(String pet) {
		this.pet = pet;
	}
	public Equipment(String eid, String beds, String bedb, String bedd,
			String washer, String airCondit, String hairdrier, String wifi,
			String kitchen, String breakfast, String needs, String pet) {
		super();
		this.eid = eid;
		this.beds = beds;
		this.bedb = bedb;
		this.bedd = bedd;
		this.washer = washer;
		air_condit = airCondit;
		this.hairdrier = hairdrier;
		this.wifi = wifi;
		this.kitchen = kitchen;
		this.breakfast = breakfast;
		this.needs = needs;
		this.pet = pet;
	}
	public Equipment() {
		super();
	}
	@Override
	public String toString() {
		return "Equipment [eid=" + eid + ", beds=" + beds + ", bedb=" + bedb
				+ ", bedd=" + bedd + ", washer=" + washer + ", air_condit="
				+ air_condit + ", hairdrier=" + hairdrier + ", wifi=" + wifi
				+ ", kitchen=" + kitchen + ", breakfast=" + breakfast
				+ ", needs=" + needs + ", pet=" + pet + "]";
	}
	
	
	

	
}
