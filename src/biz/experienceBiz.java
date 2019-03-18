package biz;

import java.util.List;

import entity.Experience;

public interface experienceBiz {
	public Experience getExperience(int ex_id);// 根据id查询所有信息

	public boolean save(Experience ex);// 添加信息

	public List<Experience> getExperience();// 查询所有信息

	public int getCountexperience();// 获取总条数

	public List<Experience> getexBypage(int page, int size);

	public List<Integer> getExid(); // 获取所有活动的ex_id
}
