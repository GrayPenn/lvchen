package biz;

import java.util.List;

import entity.Experience;

public interface experienceBiz {
	public Experience getExperience(int ex_id);// ����id��ѯ������Ϣ

	public boolean save(Experience ex);// �����Ϣ

	public List<Experience> getExperience();// ��ѯ������Ϣ

	public int getCountexperience();// ��ȡ������

	public List<Experience> getexBypage(int page, int size);

	public List<Integer> getExid(); // ��ȡ���л��ex_id
}
