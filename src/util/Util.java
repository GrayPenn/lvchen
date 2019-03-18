package util;

import java.sql.Clob;

public class Util {
	/**
	 * 将大数据clob类型转化为字符串
	 * @param clob
	 * @return
	 */
	public static String ClobToString(Clob clob){
		String str="";
		try {
			if(clob!=null){
				str=clob.getSubString(1,(int) clob.length());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}

}
