package biz;

import java.util.List;

import entity.xinxi;

public interface xinxidaobiz {
public xinxi getxinxi(int x_id);
public boolean save(xinxi x);//���
public List<xinxi> getxinxi();
}
