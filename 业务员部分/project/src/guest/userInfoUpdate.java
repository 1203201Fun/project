package guest;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userInfoUpdate {
	private String username;
	private String password;
	private String department;
	private String phone;
	private List<String[]> userInfolist= new ArrayList<String[]>();
	

	public String execute(){
		
		username = login.account;
		password = getPassword();
		department = getDepartment();
		phone = getPhone();
		
		//if(!realname.isEmpty())update("realname",realname,username);
		if(!password.isEmpty())update("password",password,username);
		if(!department.isEmpty())update("department",department,username);
		if(!phone.isEmpty())update("phone",phone,username);
		userInfolist = query(username);
		
		return "success";
	}
	
	/*****************************DBConnection**********************************************/
	public static void update(String colum,String val,String index){	
		String sql = null;
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection();
		try{
		sql = "update user set "+colum+"='"+val+"' where name='"+index+"'";// 更新数据的sql语句        
	    st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
        int count = st.executeUpdate(sql);// 执行更新操作的sql语句，返回更新数据的个数  
        System.out.println("user表中更新 " + count + " 条数据");      //输出更新操作的处理结果  
              
	    conn.close();   //关闭数据库连接  
         } catch (SQLException e) {  
	            System.out.println("更新数据失败");  
        }  
}
	
	public static List<String[]> query(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		List<String[]> mylist= new ArrayList<String[]>();
		String []temp = new String[6];
		try {
	    	   String sql = "select * from user where name = '"+ val +"';";     // 查询数据的sql语句  
	           st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
		              
	            ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
	            System.out.println("最后的查询结果为：");  
	            while (rs.next()) { // 判断是否还有下一个数据  
		                  
	               // 根据字段名获取相应的值  
	                temp = new String[6];
	            	temp[0] = rs.getString("name"); 
	            	//mylist.add(temp[0]);
	            	temp[1] = rs.getString("actor");
	            	//mylist.add(temp[1]);
	            	temp[2] = rs.getString("password");
	            	temp[3] = rs.getString("department");
	            	temp[4] = rs.getString("phone");
	            	temp[5] = rs.getString("realname");
	            	mylist.add(temp);
	            	} 
	          conn.close();   //关闭数据库连接 
		        } catch (SQLException e) {  
		            System.out.println("查询数据失败");  
	      }
		return mylist;
	}
	
	
	
	
	/*************************Gettera and Setters********************************/
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public List<String[]> getUserInfolist() {
		return userInfolist;
	}

	public void setUserInfolist(List<String[]> userInfolist) {
		this.userInfolist = userInfolist;
	}
	
}
