
package com.Action;
import java.sql.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 
 * @author fuxiao
 *
 */
public class ActionLogin extends ActionSupport {

	/**
	 * @return
	 */
	private String username=null;
	private String password=null;
	static String logback="faile";
	public String execute() {
		// TODO 自动生成的方法存根
		username = getUsername();
		password = getPassword();
		String tp=null;
		tp=query(username,password);
		return tp;
	}
	 /****************************DBConnection**********************************/
	public String query(String user,String pass){
		String temp=ERROR;
		Connection conn = null;
		Statement st = null;
		logback="faile";
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
			String sql = "select password,actor from user where name = '"+user+"';";     // 查询数据的sql语句  
			ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
			while(rs.next()){
				if(rs.getString("password").equals(pass)){
					ActionContext.getContext().getSession().put("nameuser", getUsername());
					if(rs.getString("actor").equals("Admin"))
						temp="Admin";
					else
						temp="Admin";
				}
			}
		}catch(Exception e){
			System.out.println(e);
			logback="success";
			temp=ERROR;
		}
		if(temp.equals("Admin")||temp.equals("Guest"))
		return temp;
		else{
			logback="success";
			return ERROR;
		}
	}
	/***************************Getters and Setters*************************************************/
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static String getLogback() {
		return logback;
	}
	public static void setLogback(String logback) {
		ActionLogin.logback = logback;
	}
	
}