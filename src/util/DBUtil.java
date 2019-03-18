package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DBUtil {
	public static final String driver = "oracle.jdbc.driver.OracleDriver";
	public static final String url = "jdbc:oracle:thin:@192.168.16.215:1521:orcl";
	public static final String name = "lvchen";
	public static final String pwd = "lvchen";

	Connection con = null;// ���Ӷ���
	PreparedStatement ps = null; // Ԥ����������
	ResultSet rs = null;// ���������

	/**
	 * �������ݿ�
	 * 
	 * @return �������ݿ����Ӷ���
	 */
	public Connection getCon() {
		try {
			// 1.��������
			Class.forName(driver);
			// 2.��������
			con = DriverManager.getConnection(url, name, pwd);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;

	}

	/**
	 * �ر����ж���
	 */
	public void closeAll() {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (con != null)
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ResultSet query(String sql,Object...obj){
		try {
			con=getCon();
			ps=con.prepareStatement(sql);
			if(obj!=null){
				for(int i=0;i<obj.length;i++){
					ps.setObject(i+1, obj[i]);
				}
				
			}
			rs=ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public List<String> queryUicon(String sql,List<String> uid_list){  //���û�����ȡ�û�ͷ��
		List<String> uicon_list=new ArrayList<String>();
		try {
			con=getCon();
			
			if(uid_list!=null){
				for(int i=0;i<uid_list.size();i++){
					ps=con.prepareStatement(sql+"'"+uid_list.get(i)+"'");
					rs=ps.executeQuery();
					if(rs.next()){
						String str=rs.getString("U_ICON");
						uicon_list.add(str);
					}
				}
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeAll();// �ر����ж���
		}

		return uicon_list;
	}
	
	
	
	
	// INSERT into grand(gname,other,xueshi) VALUES (?,?,?)
	// select * from XX
	// ���飬��������
	// ���ϣ�new �ڶ��п��ٿռ�
	// ...�����Դ���0-N�������Ҳ��ÿ��ٿռ�
	public int update(String sql, Object... obj) {
		int result = 0;// ������Ӱ������
		
		try {
			con = getCon();// �������ݿ�
			ps = con.prepareStatement(sql);//������
			//ѭ����ֵ
			if (obj != null) {
				for (int i = 0; i < obj.length; i++) {
					ps.setObject(i + 1, obj[i]);// �±��1��ʼ
				}
			}
			//ִ��SQL���
			result=ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();

		}finally{
			closeAll();// �ر����ж���
		}

		

		return result;
	}

}

