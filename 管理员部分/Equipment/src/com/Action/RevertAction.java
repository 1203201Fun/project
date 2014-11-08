package com.Action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

public class RevertAction extends ActionSupport {

	/**
	 * @return
	 */
	String name_tp;
	static String retflag="faile";
	static String retback="faile";
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=revdelete();
		return tp;
	}
	
	/****************************DBConnection**********************************/
	public String revdelete(){
		Connection conn = null;
		PreparedStatement res;
		Statement st = null;
		String tp_num=null;
		int temp_num;
		retflag="faile";
		retback="faile";
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			String tp_sql = "delete from history where device='"+name_tp+"'";
			res=conn.prepareStatement(tp_sql);
			res.executeUpdate(tp_sql);
			
			st = conn.createStatement();
			String sql="select number from device where device='"+name_tp+"'";
			ResultSet rs = st.executeQuery(sql); 
			while(rs.next()){
				tp_num=rs.getString("number");
			}
			temp_num=Integer.parseInt(tp_num);
			temp_num=temp_num+1;
			tp_num=String.valueOf(temp_num);
			String sql_tp = "update device set number='"+tp_num+"' where device='"+name_tp+"'";
			res = conn.prepareStatement(sql_tp);
	       	res.executeUpdate(sql_tp);
			retflag="success";
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			retback="success";
			return ERROR;
		}
		return SUCCESS;
	}
	
	/***************************Getters and Setters*************************************************/
	
	public String getName_tp() {
		return name_tp;
	}
	public void setName_tp(String name_tp) {
		this.name_tp = name_tp;
	}
	public static String getRetflag() {
		return retflag;
	}
	public static void setRetflag(String retflag) {
		RevertAction.retflag = retflag;
	}

	public static String getRetback() {
		return retback;
	}

	public static void setRetback(String retback) {
		RevertAction.retback = retback;
	}
}