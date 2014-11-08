package com.depot;
import java.sql.Connection;
import java.sql.PreparedStatement;
import com.Action.*;
import com.opensymphony.xwork2.ActionSupport;

public class PlusDevice extends ActionSupport {

	/**
	 * @return
	 */
	private String devname;
	private String devadress;
	private String devnum;
	private String devdetail;
	private String devperson;
	private String kind;
	private String repnum="0";
	static String plusback="faile";
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=plusinsert();
		return tp;
	}
	

	 /****************************设备表插入**********************************/
		public String plusinsert(){
			Connection conn = null;
			PreparedStatement res;
			plusback="faile";
			conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
			try{
				String sql = "insert into device (device,number,location,describle,manager,class,repnum)"
						+ "values(?,?,?,?,?,?,?)";     // 插入数据的sql语句  
				res = conn.prepareStatement(sql);
				res.setString(1,getDevname());
				res.setString(2,getDevnum());
				res.setString(3,getDevadress());
				res.setString(4,getDevdetail());
				res.setString(5,getDevperson());
				res.setString(6,getKind());
				res.setString(7,getRepnum());
				res.executeUpdate();
				res.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e);
				plusback="success";
				return ERROR;
			}
			return SUCCESS;
		}
	
	/***************************Getters and Setters*************************************************/
	
	public String getDevname() {
		return devname;
	}
	public void setDevname(String devname) {
		this.devname = devname;
	}
	public String getDevadress() {
		return devadress;
	}
	public void setDevadress(String devadress) {
		this.devadress = devadress;
	}
	public String getDevnum() {
		return devnum;
	}
	public void setDevnum(String devnum) {
		this.devnum = devnum;
	}
	public String getDevdetail() {
		return devdetail;
	}
	public void setDevdetail(String devdetail) {
		this.devdetail = devdetail;
	}
	public String getDevperson() {
		return devperson;
	}
	public void setDevperson(String devperson) {
		this.devperson = devperson;
	}


	public String getKind() {
		return kind;
	}


	public void setKind(String kind) {
		this.kind = kind;
	}


	public String getRepnum() {
		return repnum;
	}


	public void setRepnum(String repnum) {
		this.repnum = repnum;
	}


	public static String getPlusback() {
		return plusback;
	}


	public static void setPlusback(String plusback) {
		PlusDevice.plusback = plusback;
	}
}