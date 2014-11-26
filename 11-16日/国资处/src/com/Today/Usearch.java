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
	/***************************�û���Ϣ�����ȡ*************************************************/
	public List<User> listuser;
	public List<User> Infolistuser = new ArrayList<User>();
	
	static String userkind;
	static String usertemp;
	
	public String execute() {
		// TODO �Զ����ɵķ������
		searchuser();
		ManShow.setOrder("2");
		return SUCCESS;
	}
	
	/****************************�û���Ϣ���ѯ**********************************/
	public void searchuser(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		try{
			st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
			String sql = "select * from user where '"+userkind+"'='"+usertemp+"'";     // ��ѯ���ݵ�sql���  
			ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
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