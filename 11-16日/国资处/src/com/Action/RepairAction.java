package com.Action;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class RepairAction extends ActionSupport {

	/**
	 * @return
	 */
	String repairdev;
	static String repback="faile";
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=repdelete();
		ManShow.setOrder("5");
		return tp;
	}
	
	/****************************DBConnection**********************************/
	public String repdelete(){
		Connection conn = null;
		PreparedStatement res;
		Statement st = null;
		repback="faile";
		String tp_rep=null;
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();
			String sql_tp="select flag from repair where device='"+repairdev+"'";
			ResultSet rs = st.executeQuery(sql_tp); 
			while(rs.next()){
				tp_rep=rs.getString("flag");
			}
			tp_rep="2";
			SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd");
			String str = sdf.format(new Date());
			String user = (String)ServletActionContext.getRequest().getSession().getAttribute("nameuser");
			String sql = "update repair set flag='"+tp_rep+"',signature='"+user+"',time='"+str+"' where device='"+repairdev+"'";
			res = conn.prepareStatement(sql);
	       	res.executeUpdate(sql);
	       	
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			repback="success";
			return ERROR;
		}
		return SUCCESS;
	}
	
	/***************************Getters and Setters*************************************************/
	
	
	public static String getRepback() {
		return repback;
	}

	public String getRepairdev() {
		return repairdev;
	}

	public void setRepairdev(String repairdev) {
		this.repairdev = repairdev;
	}

	public static void setRepback(String repback) {
		RepairAction.repback = repback;
	}
}