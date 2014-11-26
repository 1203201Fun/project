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
		// TODO �Զ����ɵķ������
		searchdev();
		return SUCCESS;
	}
	
	/****************************�豸���ѯ**********************************/
	public void searchdev(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		try{
			st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
			String sql = "select device,managetype,recipienter,id,buydate,price"
					+ " from device where '"+devkind+"'='"+devtemp+"'";     // ��ѯ���ݵ�sql���  
			ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
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