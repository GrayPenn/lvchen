package biz.impl;

import dao.AddHostDao;
import dao.impl.AddHostDaoImpl;
import biz.AddHostBiz;

public class AddHostBizImpl implements AddHostBiz{
	AddHostDao ahd= new AddHostDaoImpl();
	@Override
	public boolean apply(int uid, String hlocation, String hcei, String haddr,
			 int htype, int hstatu) {
		
		
		return ahd.apply(uid,hlocation,hcei,haddr,htype,hstatu);
	}

}
