package com.Today;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Action.DBConnection;
import com.entity.Stock;
import com.opensymphony.xwork2.ActionSupport;

public class Newsearch extends ActionSupport {

	/**
	 * @return
	 */
	public List<Stock> listnew;
	public List<Stock> Infolistnew = new ArrayList<Stock>();
	
	private String newkind;
	private String newtemp;
	
	public String execute() {
		// TODO �Զ����ɵķ������
		searchnew();
		return SUCCESS;
	}
	
	/****************************�豸���ѯ**********************************/
	public void searchnew(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		try{
			st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
			String sql = "select device,managetype,recipienter,model,buydate,price"
					+ " from device where '"+newkind+"'='"+newtemp+"'";     // ��ѯ���ݵ�sql���  
			ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
			while(rs.next()){
				Stock stock = new Stock();
				stock.setDevice(rs.getString("device"));
				stock.setManagetype(rs.getString("managetype"));
				stock.setRecipienter(rs.getString("recipienter"));
				stock.setPin(rs.getString("pin"));
				stock.setBuydate(rs.getString("buydate"));
				stock.setPrice(rs.getString("price"));
				Infolistnew.add(stock);
				}
			this.setListnew(Infolistnew);
			rs.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
	}
	

	public List<Stock> getListnew() {
		return listnew;
	}
	public void setListnew(List<Stock> listnew) {
		this.listnew = listnew;
	}

	public List<Stock> getInfolistnew() {
		return Infolistnew;
	}

	public void setInfolistnew(List<Stock> infolistnew) {
		Infolistnew = infolistnew;
	}

	public String getNewkind() {
		return newkind;
	}

	public void setNewkind(String newkind) {
		this.newkind = newkind;
	}

	public String getNewtemp() {
		return newtemp;
	}

	public void setNewtemp(String newtemp) {
		this.newtemp = newtemp;
	}
}