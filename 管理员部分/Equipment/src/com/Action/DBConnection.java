package com.Action;
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.Statement;  
/**
 * 
 * ���ݿ�����
 *
 */
public class DBConnection {
	static Connection conn;
	public DBConnection() {
		conn = null;
	}
	public static Connection getConnection() {  
		Connection con = null;  //���������������ݿ��Connection����  
			try {  
				Class.forName("com.mysql.jdbc.Driver");// ����Mysql��������      
				
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manger?useUnicode=true&characterEncoding=UTF-8", "root", "10248092");// ������������  
				if(con==null)
					System.out.println("���ݿ����Ϊ�գ�");
	       } catch (Exception e) {  
	            System.out.println("���ݿ�����ʧ��" + e.getMessage());  
	        }  
		        return con; //���������������ݿ�����  
	   } 
}
