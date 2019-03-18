package biz.impl;





import java.util.List;

import dao.experienceDao;
import dao.impl.experienceDaoImpl;
import biz.experienceBiz;
import entity.Experience;

public class experienceBizImpl implements experienceBiz{
	experienceDao dao= new experienceDaoImpl();

	@Override
	public Experience getExperience(int ex_Id) {
		// TODO Auto-generated method stub
		return dao.getExperience(ex_Id);
	}

	@Override
	public boolean save(Experience ex) {
		// TODO Auto-generated method stub
		return dao.save(ex);
	}

	@Override
	public List<Experience> getExperience() {
		// TODO Auto-generated method stub
		return dao.getExperience();
	}

	@Override
	public int getCountexperience() {
		// TODO Auto-generated method stub
		return dao.getCountexperience();
	}

	@Override
	public List<Experience> getexBypage(int page, int size) {
		int count=getCountexperience();//获取总条数
		int pagecount=count%size==0?(count/size):(count/size+1);//获取总页数
		//容错处理
		page=page<1?1:page;//最小只能是第一页
		page=page>pagecount?pagecount:page;//最大只能是总页数
		return dao.getexBypage(page, size);
	}

	@Override
	public List<Integer> getExid() {  // 获取所有活动的ex_id
		// TODO Auto-generated method stub
		return dao.getExid();
	}


}
