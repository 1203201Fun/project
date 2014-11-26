package com.Today;
import com.Action.DBConnection;
import com.Action.ManShow;
import com.entity.*;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import java.util.*;
public class Usearch extends ActionSupport {

	/**
	 * @return
	 */
	/***************************用户信息整体获取*************************************************/
	public List<User> listuser;
	public List<User> Infolistuser = new ArrayList<User>();
	
	static String userkind;
	static String usertemp;
	
	public String execute() {
		// TODO 自动生成的方法存根
		searchuser();
		ManShow.setOrder("2");
		return SUCCESS;
	}
	
	/****************************用户信息表查询**********************************/
	public void searchuser(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
			String sql = "select * from user where '"+userkind+"'='"+usertemp+"'";     // 查询数据的sql语句  
			ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
			while(rs.next()){
				User user = new User();
				user.setUsername(rs.getString("name"));
				user.setPhone(rs.getString("phone"));
				user.setEmail(rs.getString("email"));
				user.setAdress(rs.getString("department"));
				user.setSex(rs.getString("sex"));
				user.setRealname(rs.getString("realname"));
				user.setActor(rs.getString("actor"));
				Infolistuser.add(user);
				}
			this.setListuser(Infolistuser);
			rs.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
	}
	
	/***************************Getters and Setters*************************************************/
	
	public List<User> getListuser() {
		return listuser;
	}

	public void setListuser(List<User> listuser) {
		this.listuser = listuser;
	}

	public List<User> getInfolistuser() {
		return Infolistuser;
	}

	public void setInfolistuser(List<User> infolistuser) {
		Infolistuser = infolistuser;
	}

	public static String getUserkind() {
		return userkind;
	}

	public static void setUserkind(String userkind) {
		Usearch.userkind = userkind;
	}

	public static String getUsertemp() {
		return usertemp;
	}

	public static void setUsertemp(String usertemp) {
		Usearch.usertemp = usertemp;
	}
}