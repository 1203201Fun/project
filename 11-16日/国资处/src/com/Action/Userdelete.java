package com.Action;
import java.sql.*;

import com.opensymphony.xwork2.ActionSupport;

public class Userdelete extends ActionSupport {

	/**
	 * @return
	 */
	String phone_tp;
	String sel;
	static String userback="faile";
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=delete();
		if(tp.equals("success"))
		{
			if(getSel().equals("one"))
			{
				ManShow.setOrder("2");
				return "one";
			}
			else
				return "two";
		}
		else
			return ERROR;
	}
	
	/****************************DBConnection**********************************/
	public String delete(){
		Connection conn = null;
		PreparedStatement res;
		userback="faile";
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			String tp_sql = "delete from user where phone='"+phone_tp+"'";
			res=conn.prepareStatement(tp_sql);
			res.executeUpdate(tp_sql);
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			userback="success";
			return ERROR;
		}
		return SUCCESS;
	}
	
	/***************************Getters and Setters*************************************************/
	
	public String getPhone_tp() {
		return phone_tp;
	}
	public void setPhone_tp(String phone_tp) {
		this.phone_tp = phone_tp;
	}
	
	public static String getUserback() {
		return userback;
	}

	public static void setUserback(String userback) {
		Userdelete.userback = userback;
	}

	public String getSel() {
		return sel;
	}

	public void setSel(String sel) {
		this.sel = sel;
	}
}