package dao;

import java.util.List;

import entity.House;
import entity.Room;
import entity.User;

public interface HouseDao {
	public List<House> queryHouse(int uid,int hid);//���ݲ�ѯ
	
	public	List<House> checkHouse(int hid, int hstatu);//������飬�����ݿ�״̬������״̬��0�����1ͨ��2�ܾ���
	public House getLocation(int rid);

	
}
