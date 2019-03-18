package dao;

import java.util.List;

import entity.House;
import entity.Room;
import entity.User;

public interface HouseDao {
	public List<House> queryHouse(int uid,int hid);//房屋查询
	
	public	List<House> checkHouse(int hid, int hstatu);//房屋审查，向数据库状态栏设置状态（0待审核1通过2拒绝）
	public House getLocation(int rid);

	
}
