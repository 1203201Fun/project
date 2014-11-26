package com.Today;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Action.DBConnection;
import com.depot.Devtp;
import com.opensymphony.xwork2.ActionSupport;

public class Devdetail extends ActionSupport {

	/**
	 * @return
	 */
	public List<Devtp> listdetail;
	public List<Devtp> Infolistdetail = new ArrayList<Devtp>();
	
	private String id_tp;
	
	public String execute() {
		// TODO �Զ����ɵķ������
		detaildev();
		return SUCCESS;
	}
	
	/****************************�豸���ѯ**********************************/
	public void detaildev(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		try{
			st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
			String sql = "select * from device where id='"+id_tp+"'";     // ��ѯ���ݵ�sql���  
			ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
			while(rs.next()){
				Devtp devtp = new Devtp();
				devtp.setDevice(rs.getString("device"));
				devtp.setBirthday(rs.getString("birthday"));
				devtp.setBuydate(rs.getString("buydate"));
				devtp.setFactory(rs.getString("factory"));
				devtp.setHandler(rs.getString("handler"));
				devtp.setDescrible(rs.getString("describle"));
				devtp.setDepartment(rs.getString("department"));
				devtp.setId(rs.getString("id"));
				devtp.setImgpath(rs.getString("imgpath"));
				devtp.setManagetype(rs.getString("managetype"));
				devtp.setModel(rs.getString("model"));
				devtp.setNumber(rs.getString("number"));
				devtp.setPin(rs.getString("pin"));
				devtp.setPrice(rs.getString("price"));
				devtp.setProjid(rs.getString("projid"));
				devtp.setRecipienter(rs.getString("recipienter"));
				devtp.setRepairnumber(rs.getString("repairnumber"));
				devtp.setState(rs.getString("state"));
				devtp.setUsefor(rs.getString("usefor"));
				Infolistdetail.add(devtp);
				}
			this.setListdetail(Infolistdetail);
			rs.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
	}
	
	
	public List<Devtp> getListdetail() {
		return listdetail;
	}

	public void setListdetail(List<Devtp> listdetail) {
		this.listdetail = listdetail;
	}

	public List<Devtp> getInfolistdetail() {
		return Infolistdetail;
	}

	public void setInfolistdetail(List<Devtp> infolistdetail) {
		Infolistdetail = infolistdetail;
	}

	public String getId_tp() {
		return id_tp;
	}

	public void setId_tp(String id_tp) {
		this.id_tp = id_tp;
	}
}