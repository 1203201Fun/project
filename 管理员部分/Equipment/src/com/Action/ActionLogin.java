
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
		// TODO �Զ����ɵķ������
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
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		try{
			st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
			String sql = "select password,actor from user where name = '"+user+"';";     // ��ѯ���ݵ�sql���  
			ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
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