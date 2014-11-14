package com.Action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

public class AddAction extends ActionSupport {

	/**
	 * @return
	 */
	static String addflag="faile";
	static String addback="faile";
	String fw_tp;
	String fw_name;
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=ERROR;
		if(fw_tp.equals("true"))
			tp=addupdate();
		else if(fw_tp.equals("wrong"))
			tp=adddelete();
		return tp;
	}
	
	/****************************DBConnection**********************************/
	public String addupdate(){
		Connection conn = null;
		PreparedStatement res;
		Statement st = null;
		String fw_location=null,fw_describle=null,fw_number=null;
		addflag="faile";
		addback="falie";
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();
			String sql="select * from addinfo where device='"+fw_name+"'";
			ResultSet rs = st.executeQuery(sql); 
			while(rs.next()){
				fw_location=rs.getString("location");
				fw_describle=rs.getString("describle");
				fw_number=rs.getString("number");
			}
			if(fw_location!=null){
				String sql_tp = "update device set location='"+fw_location+"' where device='"+fw_name+"'";
				res = conn.prepareStatement(sql_tp);
		       	res.executeUpdate(sql_tp);
			}
			if(fw_describle!=null){
				String sql_tp = "update device set describle='"+fw_describle+"' where device='"+fw_name+"'";
				res = conn.prepareStatement(sql_tp);
		       	res.executeUpdate(sql_tp);
			}
			if(fw_number!=null){
				String sql_tp = "update device set number='"+fw_number+"' where device='"+fw_name+"'";
				res = conn.prepareStatement(sql_tp);
		       	res.executeUpdate(sql_tp);
			}
			addflag="success";
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			addback="success";
			return ERROR;
		}
		return SUCCESS;
	}
	
	/****************************DBConnection**********************************/
	public String adddelete(){
		Connection conn = null;
		PreparedStatement res;
		addflag="faile";
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			String tp_sql = "delete from addinfo where device='"+fw_name+"'";
			res=conn.prepareStatement(tp_sql);
			res.executeUpdate(tp_sql);
			addflag="success";
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/***************************Getters and Setters*************************************************/
	
	public static String getAddflag() {
		return addflag;
	}
	public static void setAddflag(String addflag) {
		AddAction.addflag = addflag;
	}
	public String getFw_tp() {
		return fw_tp;
	}
	public void setFw_tp(String fw_tp) {
		this.fw_tp = fw_tp;
	}
	public String getFw_name() {
		return fw_name;
	}
	public void setFw_name(String fw_name) {
		this.fw_name = fw_name;
	}

	public static String getAddback() {
		return addback;
	}

	public static void setAddback(String addback) {
		AddAction.addback = addback;
	}
}