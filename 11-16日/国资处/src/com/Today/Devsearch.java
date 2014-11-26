package com.Today;
import com.Action.DBConnection;
import com.entity.*;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.*;
import java.util.*;

public class Devsearch extends ActionSupport {

	/**
	 * @return
	 */
	public List<Stock> listdev;
	public List<Stock> Infolistdev = new ArrayList<Stock>();
	
	private String devkind;
	private String devtemp;
	
	public String execute() {
		// TODO 自动生成的方法存根
		searchdev();
		return SUCCESS;
	}
	
	/****************************设备表查询**********************************/
	public void searchdev(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
			String sql = "select device,managetype,recipienter,id,buydate,price"
					+ " from device where '"+devkind+"'='"+devtemp+"'";     // 查询数据的sql语句  
			ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
			while(rs.next()){
				Stock stock = new Stock();
				stock.setDevice(rs.getString("device"));
				stock.setManagetype(rs.getString("managetype"));
				stock.setRecipienter(rs.getString("recipienter"));
				stock.setId(rs.getString("id"));
				stock.setBuydate(rs.getString("buydate"));
				stock.setPrice(rs.getString("price"));
				Infolistdev.add(stock);
				}
			this.setListdev(Infolistdev);
			rs.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
	}
	/***************************Getters and Setters*************************************************/

	public List<Stock> getListdev() {
		return listdev;
	}

	public void setListdev(List<Stock> listdev) {
		this.listdev = listdev;
	}

	public List<Stock> getInfolistdev() {
		return Infolistdev;
	}

	public void setInfolistdev(List<Stock> infolistdev) {
		Infolistdev = infolistdev;
	}

	public String getDevkind() {
		return devkind;
	}

	public void setDevkind(String devkind) {
		this.devkind = devkind;
	}

	public String getDevtemp() {
		return devtemp;
	}

	public void setDevtemp(String devtemp) {
		this.devtemp = devtemp;
	}
}