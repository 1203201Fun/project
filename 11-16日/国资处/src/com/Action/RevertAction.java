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
	String devname;
	String dev_tp;
	static String retback="faile";
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=ERROR;
		if(dev_tp.equals("one"))
			tp=feedbackrep();
		else if(dev_tp.equals("two"))
			tp=feedbackadd();
		return tp;
	}
	
	/****************************报修反馈**********************************/
	public String feedbackrep(){
		Connection conn = null;
		PreparedStatement res;
		Statement st = null;
		retback="faile";
		String tp_rep=null;
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();
			String sql_tp="select flag from repair where device='"+devname+"'";
			ResultSet rs = st.executeQuery(sql_tp); 
			while(rs.next()){
				tp_rep=rs.getString("flag");
			}
			tp_rep="3";
			
			String sql = "update repair set flag='"+tp_rep+"' where device='"+devname+"'";
			res = conn.prepareStatement(sql);
	       	res.executeUpdate(sql);
	       	
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			retback="success";
			return ERROR;
		}
		return SUCCESS;
	}
	
	/****************************报修反馈**********************************/
	public String feedbackadd(){
		Connection conn = null;
		PreparedStatement res;
		Statement st = null;
		retback="faile";
		String tp_rep=null;
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();
			String sql_tp="select flag from addinfo where device='"+devname+"'";
			ResultSet rs = st.executeQuery(sql_tp); 
			while(rs.next()){
				tp_rep=rs.getString("flag");
			}
			tp_rep="3";
			
			String sql = "update addinfo set flag='"+tp_rep+"' where device='"+devname+"'";
			res = conn.prepareStatement(sql);
	       	res.executeUpdate(sql);
	       	
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			retback="success";
			return ERROR;
		}
		return SUCCESS;
	}
	/***************************Getters and Setters*************************************************/
	
	public static String getRetback() {
		return retback;
	}
	public String getDevname() {
		return devname;
	}

	public void setDevname(String devname) {
		this.devname = devname;
	}

	public String getDev_tp() {
		return dev_tp;
	}

	public void setDev_tp(String dev_tp) {
		this.dev_tp = dev_tp;
	}

	public static void setRetback(String retback) {
		RevertAction.retback = retback;
	}
}