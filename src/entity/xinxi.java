package entity;

public class xinxi {
private int x_id;
private int x_price;
private String x_name;
private int x_sfz;
private int x_phone;
public int getX_id() {
	return x_id;
}
public void setX_id(int xId) {
	x_id = xId;
}
public int getX_price() {
	return x_price;
}
public void setX_price(int xPrice) {
	x_price = xPrice;
}
public String getX_name() {
	return x_name;
}
public void setX_name(String xName) {
	x_name = xName;
}
public int getX_sfz() {
	return x_sfz;
}
public void setX_sfz(int xSfz) {
	x_sfz = xSfz;
}
public int getX_phone() {
	return x_phone;
}
public void setX_phone(int xPhone) {
	x_phone = xPhone;
}
public xinxi(int xId, int xPrice, String xName, int xSfz, int xPhone) {
	super();
	x_id = xId;
	x_price = xPrice;
	x_name = xName;
	x_sfz = xSfz;
	x_phone = xPhone;
}
public xinxi() {
	super();
}
@Override
public String toString() {
	return "xinxi [x_id=" + x_id + ", x_name=" + x_name + ", x_phone="
			+ x_phone + ", x_price=" + x_price + ", x_sfz=" + x_sfz + "]";
}


}
