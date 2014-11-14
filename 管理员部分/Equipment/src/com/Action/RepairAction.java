package com.Action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

public class RepairAction extends ActionSupport {

	/**
	 * @return
	 */
	String devname_tp;
	static String repflag="faile";
	static String repback="faile";
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=repdelete();
		return tp;
	}
	
	/****************************DBConnection**********************************/
	public String repdelete(){
		Connection conn = null;
		PreparedStatement res,lxg;
		Statement st = null;
		repflag="faile";
		repback="faile";
		String tp_num=null,tp_rep=null;
		int temp_num,temp_rep;
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();
			String sql_tp="select number,repnum from device where device='"+devname_tp+"'";
			ResultSet rs = st.executeQuery(sql_tp); 
			while(rs.next()){
				tp_num=rs.getString("number");
				tp_rep=rs.getString("repnum");
			}
			temp_num=Integer.parseInt(tp_num);
			temp_rep=Integer.parseInt(tp_rep);
			temp_num=temp_num+1;
			temp_rep=temp_rep-1;
			tp_num=String.valueOf(temp_num);
			tp_rep=String.valueOf(temp_rep);
			
			String sql = "update device set number='"+tp_num+"',repnum='"+tp_rep+"' where device='"+devname_tp+"'";
			res = conn.prepareStatement(sql);
	       	res.executeUpdate(sql);
	       	
	       	String lxg_sql = "delete from repair where device='"+devname_tp+"'";
	       	lxg=conn.prepareStatement(lxg_sql);
			lxg.executeUpdate(lxg_sql);
			repflag="success";
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			repback="success";
			return ERROR;
		}
		return SUCCESS;
	}
	
	/***************************Getters and Setters*************************************************/
	
	public String getDevname_tp() {
		return devname_tp;
	}
	public void setDevname_tp(String devname_tp) {
		this.devname_tp = devname_tp;
	}
	public static String getRepflag() {
		return repflag;
	}
	public static void setRepflag(String repflag) {
		RepairAction.repflag = repflag;
	}

	public static String getRepback() {
		return repback;
	}

	public static void setRepback(String repback) {
		RepairAction.repback = repback;
	}
}