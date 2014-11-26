package com.Today;
import com.Action.DBConnection;
import com.Action.ManShow;
import com.entity.*;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.*;
import java.util.*;
public class Tasearch extends ActionSupport {

	/**
	 * @return
	 */
	public List<Addinfo> listmodify;
	public List<Addinfo> Infolistmodify = new ArrayList<Addinfo>();
	
	public List<Repair> listtrim;
	public List<Repair> Infolisttrim = new ArrayList<Repair>();
	
	private String tablekind=null; 
	private String seckind; 
	private String tabletp; 
	public String execute() {
		// TODO �Զ����ɵķ������
		if(getTablekind().equals("modify"))
		{
			searchmodify();
		}
		else if(getTablekind().equals("trim"))
		{
			searchtrim();
		}
		return SUCCESS;
	}
	
	/****************************��Ϣ�޸ı��ѯ**********************************/
	public void searchmodify(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		try{
			st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
			String sql = "select * from addinfo where '"+seckind+"'='"+tabletp+"'";     // ��ѯ���ݵ�sql���  
			ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
			while(rs.next()){
				if(rs.getString("flag").equals("1"))
				{
					Addinfo addinfo = new Addinfo();
					addinfo.setDevice(rs.getString("device"));
					addinfo.setDepartment(rs.getString("department"));
					addinfo.setDescrible(rs.getString("describle"));
					addinfo.setId(rs.getString("id"));
					addinfo.setModel(rs.getString("model"));
					addinfo.setProjid(rs.getString("projid"));
					addinfo.setRecipienter(rs.getString("recipienter"));
					addinfo.setState(rs.getString("state"));
					addinfo.setUsefor(rs.getString("usefor"));
					addinfo.setDate(rs.getString("date"));
					addinfo.setFlag(rs.getString("flag"));
					addinfo.setSignature(rs.getString("signature"));
					Infolistmodify.add(addinfo);
				}
				}
			this.setListmodify(Infolistmodify);
			rs.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
	}
	
	/****************************��Ϣ�޸ı��ѯ**********************************/
	public void searchtrim(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		try{
			st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
			String sql = "select * from addinfo where '"+seckind+"'='"+tabletp+"'";     // ��ѯ���ݵ�sql���  
			ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
			while(rs.next()){
				if(rs.getString("flag").equals("1"))
				{
					Repair repair= new Repair();
					repair.setDevice(rs.getString("device"));
					repair.setModel(rs.getString("model"));
					repair.setId(rs.getString("id"));
					repair.setDepartment(rs.getString("department"));
					repair.setRecipienter(rs.getString("recipienter"));
					repair.setDate(rs.getString("date"));
					repair.setPrice(rs.getString("price"));
					repair.setReason(rs.getString("reason"));
					repair.setFlag(rs.getString("flag"));
					repair.setSignature(rs.getString("signature"));
					Infolisttrim.add(repair);
				}
				}
			this.setListtrim(Infolisttrim);
			rs.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
	}
	/***************************Getters and Setters*************************************************/
	public List<Addinfo> getListmodify() {
		return listmodify;
	}
	public void setListmodify(List<Addinfo> listmodify) {
		this.listmodify = listmodify;
	}
	public List<Addinfo> getInfolistmodify() {
		return Infolistmodify;
	}
	public void setInfolistmodify(List<Addinfo> infolistmodify) {
		Infolistmodify = infolistmodify;
	}
	public List<Repair> getListtrim() {
		return listtrim;
	}
	public void setListtrim(List<Repair> listtrim) {
		this.listtrim = listtrim;
	}
	public List<Repair> getInfolisttrim() {
		return Infolisttrim;
	}
	public void setInfolisttrim(List<Repair> infolisttrim) {
		Infolisttrim = infolisttrim;
	}
	public String getTablekind() {
		return tablekind;
	}
	public void setTablekind(String tablekind) {
		this.tablekind = tablekind;
	}
	public String getSeckind() {
		return seckind;
	}
	public void setSeckind(String seckind) {
		this.seckind = seckind;
	}
	public String getTabletp() {
		return tabletp;
	}
	public void setTabletp(String tabletp) {
		this.tabletp = tabletp;
	}
}