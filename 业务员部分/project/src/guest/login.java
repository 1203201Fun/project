package guest;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class login {
	private String userName;
	private String passWord;
	private String flag;
	private List<String> userInfo= new ArrayList<String>();
	public static String name;
	public static String account;
	
	public String execute(){
		String []temp = new String[2];//use for compare
		
		userName = getUserName();
		passWord = getPassWord();
		account = userName;
		
		userInfo = query(userName);
		if(userInfo.size()!=0){
			temp = new String[2];
			temp[0] = (userInfo.get(0));//type of user
			temp[1] = (userInfo.get(2));//password of user
			name = (userInfo.get(3));
			if(passWord.equals(temp[1])){
				if(temp[0]=="Admin")return "Admin";
				else return "Guest";
			}
			else{
				flag = "failed";
				return "failed";
				}//faile in password
		}
		else{
			flag = "failed";
			return "failed";//not exsit
		}
	}
	
	/****************************DBConnection**********************************/
	public List<String> query(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		List<String> mylist= new ArrayList<String>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from user where name = '"+ val +"';";     // 查询数据的sql语句  
	           st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
		              
	            ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
	            System.out.println("最后的查询结果为：");  
	            while (rs.next()) { // 判断是否还有下一个数据  
		                  
	               // 根据字段名获取相应的值  
	                temp = new String[4];
	            	temp[0] = rs.getString("name"); 
	            	mylist.add(temp[0]);
	            	temp[1] = rs.getString("actor");
	            	mylist.add(temp[1]);
	            	temp[2] = rs.getString("password");
	            	mylist.add(temp[2]);
	            	temp[3] = rs.getString("realname");
	            	mylist.add(temp[3]);
	            	} 
	          conn.close();   //关闭数据库连接 
		        } catch (SQLException e) {  
		            System.out.println("查询数据失败");  
	      }
		return mylist;
	}
/***************************Getters and Setters*************************************************/
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public List<String> getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(List<String> userInfo) {
		this.userInfo = userInfo;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}
	
}
