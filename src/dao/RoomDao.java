package dao;

import java.util.List;

import entity.Room;

public interface RoomDao {
	public Room getRoom(int rid);
	public List<Room> getRoom();
	public List<Room> searchRoom(String rrent,float rprice,int rcounting);
	
	public int getRoomCount();
	public List<Room> getRoomByPageSearch(int page,int size,String rrent, float rprice, int rcounting);
	public List<Room> getRoomByPage(int page,int size);

	public List<Integer> getRid();  //获取所有房子的hid

}
