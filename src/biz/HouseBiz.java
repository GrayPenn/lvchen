package biz;

import java.util.List;

import entity.House;

public interface HouseBiz {

	public List<House> queryHouse(int hid,int uid);//���ݲ�ѯ

	public	List<House> checkHouse(int hid, int hstatu);//������飬�����ݿ�״̬������״̬��0�����1ͨ��2�ܾ���
	public House getLocation(int rid);

}
