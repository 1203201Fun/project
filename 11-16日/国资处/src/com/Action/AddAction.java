package com.Action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class AddAction extends ActionSupport {

	/**
	 * @return
	 */
	static String addback="faile";
	String fw_tp;
	String adddev;
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=ERROR;
		tp=addupdate();
		ManShow.setOrder("5");
		return tp;
	}
	
	/****************************DBConnection**********************************/
	public String addupdate(){
		Connection conn = null;
		PreparedStatement res;
		Statement st = null;
		String[] temp=new String[11];
		String[] name={"device","model","id","department","projid","recipienter","state","describle","flag","time","signature"};
		addback="falie";
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();
			String sql="select * from addinfo where device='"+adddev+"'";
			ResultSet rs = st.executeQuery(sql); 
			while(rs.next()){
				temp[0]=rs.getString("device");
				temp[1]=rs.getString("model");
				temp[2]=rs.getString("id");
				temp[3]=rs.getString("department");
				temp[4]=rs.getString("projid");
				temp[5]=rs.getString("recipienter");
				temp[6]=rs.getString("state");
				temp[7]=rs.getString("describle");
			}
			temp[8]="2";
			SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd");
			temp[9] = sdf.format(new Date());
			temp[10] = (String)ServletActionContext.getRequest().getSession().getAttribute("nameuser");
			for(int i=0;i<11;i++)
			{
				if(temp[i]!=null){
					String sql_tp = "update device set '"+name[i]+"'='"+temp[i]+"' where device='"+adddev+"'";
					res = conn.prepareStatement(sql_tp);
			       	res.executeUpdate(sql_tp);
				}
			}
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			addback="success";
			return ERROR;
		}
		return SUCCESS;
	}
	
	/***************************Getters and Setters*************************************************/
	
	
	public String getFw_tp() {
		return fw_tp;
	}
	public void setFw_tp(String fw_tp) {
		this.fw_tp = fw_tp;
	}
	public String getAdddev() {
		return adddev;
	}

	public void setAdddev(String adddev) {
		this.adddev = adddev;
	}

	public static String getAddback() {
		return addback;
	}

	public static void setAddback(String addback) {
		AddAction.addback = addback;
	}
}