package dao;

import entity.House;

public interface AddHostDao {
	/**
	 * 
	 * @param uid 用户ID
	 * @param hlocation 位置坐标
	 * @param hcei 证明图片
	 * @param haddr 房屋位置
	 * @param htime 使用期限
	 * @param htype 房间数量
	 * @param hstatu审核状态
	 * @return
	 */
	public boolean apply
	(int uid, String hlocation,String hcei,
			String haddr,int htype,int hstatu );
}
