package entity;

import java.sql.Date;

public class Experience {
	private int ex_id;//����id
	private int u_id;//�û�id
	private int c_id;//����id
	private int ex_price;//�۸�
	private String ex_title;//����Ļ����
	private Date ex_time;//����ʱ��
	private String ex_tips;//ע������
	private String ex_content;//��������
	private String ex_things;//��������Ķ���
	private String ex_location;//�ص�
	private String ex_img;//ͼƬ
	public int getEx_id() {
		return ex_id;
	}
	public void setEx_id(int exId) {
		ex_id = exId;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int uId) {
		u_id = uId;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int cId) {
		c_id = cId;
	}
	public int getEx_price() {
		return ex_price;
	}
	public void setEx_price(int exPrice) {
		ex_price = exPrice;
	}
	public String getEx_title() {
		return ex_title;
	}
	public void setEx_title(String exTitle) {
		ex_title = exTitle;
	}
	public Date getEx_time() {
		return ex_time;
	}
	public void setEx_time(Date exTime) {
		ex_time = exTime;
	}
	public String getEx_tips() {
		return ex_tips;
	}
	public void setEx_tips(String exTips) {
		ex_tips = exTips;
	}
	public String getEx_content() {
		return ex_content;
	}
	public void setEx_content(String exContent) {
		ex_content = exContent;
	}
	public String getEx_things() {
		return ex_things;
	}
	public void setEx_things(String exThings) {
		ex_things = exThings;
	}
	public String getEx_location() {
		return ex_location;
	}
	public void setEx_location(String exLocation) {
		ex_location = exLocation;
	}
	public String getEx_img() {
		return ex_img;
	}
	public void setEx_img(String exImg) {
		ex_img = exImg;
	}
	public Experience(int exId, int uId, int cId, int exPrice, String exTitle,
			Date exTime, String exTips, String exContent, String exThings,
			String exLocation, String exImg) {
		super();
		ex_id = exId;
		u_id = uId;
		c_id = cId;
		ex_price = exPrice;
		ex_title = exTitle;
		ex_time = exTime;
		ex_tips = exTips;
		ex_content = exContent;
		ex_things = exThings;
		ex_location = exLocation;
		ex_img = exImg;
	}
	public Experience() {
		super();
	}
	@Override
	public String toString() {
		return "Experience [c_id=" + c_id + ", ex_content=" + ex_content
				+ ", ex_id=" + ex_id + ", ex_img=" + ex_img + ", ex_location="
				+ ex_location + ", ex_price=" + ex_price + ", ex_things="
				+ ex_things + ", ex_time=" + ex_time + ", ex_tips=" + ex_tips
				+ ", ex_title=" + ex_title + ", u_id=" + u_id + "]";
	}
	
	

}
