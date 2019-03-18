package biz.impl;

import java.util.ArrayList;
import java.util.List;

import dao.xinxidao;
import dao.impl.xinxidaoimpl;
import entity.xinxi;

public class xinxidaobizimpl implements biz.xinxidaobiz{
xinxidao dao =new xinxidaoimpl();
	public xinxi getxinxi(int x_id) {
	return dao.getxinxi(x_id);
}
	public boolean save(xinxi x) {
		// TODO Auto-generated method stub
		return dao.save(x);
	}
	public List<xinxi> getxinxi() {
		// TODO Auto-generated method stub
		return dao.getxinxi();
	}
}
