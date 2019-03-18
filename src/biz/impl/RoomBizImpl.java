package biz.impl;

import java.util.List;

import dao.RoomDao;
import dao.impl.RoomDaoImpl;
import entity.Room;
import biz.RoomBiz;

public class RoomBizImpl implements RoomBiz{
	RoomDao roomDao=new RoomDaoImpl();
	@Override
	public Room getRoom(int rid) {
		// TODO Auto-generated method stub
		return roomDao.getRoom(rid);
	}
	@Override
	public List<Room> getRoom() {
		// TODO Auto-generated method stub
		return roomDao.getRoom();
	}
	@Override
	public List<Room> searchRoom(String rrent, float rprice, int rcounting) {
		// TODO Auto-generated method stub
		return roomDao.searchRoom(rrent, rprice, rcounting);
	}

	@Override
	public List<Room> getRoomByPageSearch(int page, int size,String rrent, float rprice, int rcounting) {
		int count=getRoomCount();
		int pageCount=count%size==0?(count/size):(count/size+1);
		page=page<1?1:page;
		page=page>pageCount?pageCount:page;
		return roomDao.getRoomByPageSearch(page, size,rrent, rprice, rcounting);
	}
	@Override
	public int getRoomCount() {
		// TODO Auto-generated method stub
		return roomDao.getRoomCount();
	}
	@Override
	public List<Room> getRoomByPage(int page, int size) {
		int count=getRoomCount();
		int pageCount=count%size==0?(count/size):(count/size+1);
		page=page<1?1:page;
		page=page>pageCount?pageCount:page;
		return roomDao.getRoomByPage(page, size);
	}

	@Override
	public List<Integer> getRid() {  //获取所有房子的rid
		// TODO Auto-generated method stub
		return roomDao.getRid();
	}


}
