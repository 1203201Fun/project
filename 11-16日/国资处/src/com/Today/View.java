package com.Today;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Action.DBConnection;
import com.Action.ManShow;
import com.depot.Devtp;
import com.opensymphony.xwork2.ActionSupport;

public class View extends ActionSupport {

	/**
	 * @return
	 */
	private String pin;
	public List<Devtp> listview;
	public List<Devtp> Infolistview = new ArrayList<Devtp>();
	
	public String execute() {
		// TODO �Զ����ɵķ������
		String tp=detailview();
		if(tp.equals("error"))
			ManShow.setOrder("3");
		return tp;
	}
	
	/****************************�豸���ѯ**********************************/
	public String detailview(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		try{
			st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
			String sql = "select * from device where pin='"+pin+"'";     // ��ѯ���ݵ�sql���  
			ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
			int i=0;
			while(rs.next()){
				i=i+1;
				Devtp devtp = new Devtp();
				devtp.setDevice(rs.getString("device"));
				devtp.setBirthday(rs.getString("birthday"));
				devtp.setFactory(rs.getString("factory"));
				devtp.setHandler(rs.getString("handler"));
				devtp.setDescrible(rs.getString("describle"));
				devtp.setDepartment(rs.getString("department"));
				devtp.setModel(rs.getString("model"));
				devtp.setNumber(rs.getString("number"));
				devtp.setPin(rs.getString("pin"));
				devtp.setPrice(rs.getString("price"));
				devtp.setProjid(rs.getString("projid"));
				devtp.setRecipienter(rs.getString("recipienter"));
				devtp.setState(rs.getString("state"));
				devtp.setUsefor(rs.getString("usefor"));
				Infolistview.add(devtp);
				}
			this.setListview(Infolistview);
			rs.close();
			conn.close();
			if(i==0)
				return ERROR;
		}catch(Exception e){
			System.out.println(e);
			return ERROR;
		}
		return SUCCESS;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public List<Devtp> getListview() {
		return listview;
	}

	public void setListview(List<Devtp> listview) {
		this.listview = listview;
	}

	public List<Devtp> getInfolistview() {
		return Infolistview;
	}

	public void setInfolistview(List<Devtp> infolistview) {
		Infolistview = infolistview;
	}
}