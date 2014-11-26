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
		// TODO 自动生成的方法存根
		detaildev();
		return SUCCESS;
	}
	
	/****************************设备表查询**********************************/
	public void detaildev(){
		Connection conn = null;
		Statement st = null;
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			st = conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
			String sql = "select * from device where id='"+id_tp+"'";     // 查询数据的sql语句  
			ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
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