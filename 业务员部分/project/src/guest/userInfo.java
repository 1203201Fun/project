package guest;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userInfo {
	private String username;
	private List<String[]> userInfolist= new ArrayList<String[]>();
	
	public String execute()throws Exception{
		//username = getUsername();
		username = login.name;
		userInfolist = query(username);
		return "success";
	}
	/****************************DBConnection**********************************/
	public static List<String[]> query(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		List<String[]> mylist= new ArrayList<String[]>();
		String []temp = new String[7];
		try {
	    	   String sql = "select * from user where realname = '"+ val +"';";     // 查询数据的sql语句  
	           st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
		              
	            ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
	            System.out.println("最后的查询结果为：");  
	            while (rs.next()) { // 判断是否还有下一个数据  
		                  
	               // 根据字段名获取相应的值  
	                temp = new String[7];
	            	temp[0] = rs.getString("name"); 
	            	//mylist.add(temp[0]);
	            	temp[1] = rs.getString("actor");
	            	//mylist.add(temp[1]);
	            	temp[2] = rs.getString("password");
	            	temp[3] = rs.getString("department");
	            	temp[4] = rs.getString("phone");
	            	temp[5] = rs.getString("realname");
	            	temp[6] = rs.getString("email");
	            	mylist.add(temp);
	            	} 
	          conn.close();   //关闭数据库连接 
		        } catch (SQLException e) {  
		            System.out.println("查询数据失败");  
	      }
		return mylist;
	}
	/***********************************************************************/
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public List<String[]> getUserInfolist() {
		return userInfolist;
	}
	public void setUserInfolist(List<String[]> userInfolist) {
		this.userInfolist = userInfolist;
	}


	
	
	
}
