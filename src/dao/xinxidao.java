package dao;


import java.util.List;

import entity.xinxi;

public interface xinxidao {
public xinxi getxinxi(int x_id);
public boolean save(xinxi x);//Ìí¼Ó
public List<xinxi> getxinxi();
}
