package util;

import java.sql.Clob;

public class Util {
	/**
	 * ��������clob����ת��Ϊ�ַ���
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
