package dao;

import entity.House;

public interface AddHostDao {
	/**
	 * 
	 * @param uid �û�ID
	 * @param hlocation λ������
	 * @param hcei ֤��ͼƬ
	 * @param haddr ����λ��
	 * @param htime ʹ������
	 * @param htype ��������
	 * @param hstatu���״̬
	 * @return
	 */
	public boolean apply
	(int uid, String hlocation,String hcei,
			String haddr,int htype,int hstatu );
}
