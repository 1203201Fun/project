package com.Action;
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.Statement;  
/**
 * 
 * 数据库链接
 *
 */
public class DBConnection {
	static Connection conn;
	public DBConnection() {
		conn = null;
	}
	public static Connection getConnection() {  
		Connection con = null;  //创建用于连接数据库的Connection对象  
			try {  
				Class.forName("com.mysql.jdbc.Driver");// 加载Mysql数据驱动      
				
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manger?useUnicode=true&characterEncoding=UTF-8", "root", "10248092");// 创建数据连接  
				if(con==null)
					System.out.println("数据库接收为空！");
	       } catch (Exception e) {  
	            System.out.println("数据库连接失败" + e.getMessage());  
	        }  
		        return con; //返回所建立的数据库连接  
	   } 
}
