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

	Connection con = null;// 连接对象
	PreparedStatement ps = null; // 预编译语句对象
	ResultSet rs = null;// 结果集对象

	/**
	 * 连接数据库
	 * 
	 * @return 返回数据库连接对象
	 */
	public Connection getCon() {
		try {
			// 1.加载驱动
			Class.forName(driver);
			// 2.创建连接
			con = DriverManager.getConnection(url, name, pwd);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;

	}

	/**
	 * 关闭所有对象
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
	
	public List<String> queryUicon(String sql,List<String> uid_list){  //有用户名获取用户头像
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
			closeAll();// 关闭所有对象
		}

		return uicon_list;
	}
	
	
	
	
	// INSERT into grand(gname,other,xueshi) VALUES (?,?,?)
	// select * from XX
	// 数组，长度受限
	// 集合，new 在堆中开辟空间
	// ...，可以传递0-N个，并且不用开辟空间
	public int update(String sql, Object... obj) {
		int result = 0;// 返回受影响行数
		
		try {
			con = getCon();// 连接数据库
			ps = con.prepareStatement(sql);//语句对象
			//循环赋值
			if (obj != null) {
				for (int i = 0; i < obj.length; i++) {
					ps.setObject(i + 1, obj[i]);// 下标从1开始
				}
			}
			//执行SQL语句
			result=ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();

		}finally{
			closeAll();// 关闭所有对象
		}

		

		return result;
	}

}

