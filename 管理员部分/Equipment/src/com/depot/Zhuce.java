package com.depot;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Action.DBConnection;
import com.opensymphony.xwork2.ActionSupport;

public class Zhuce extends ActionSupport {

	/**
	 * @return
	 */
	private String username;
	private String password;
	private String email;
	private String phone;
	private String adress;
	private String sex;
	private String realname;
	private String actor="Guest";
	static String zhuback="faile";
	public String execute() {
		// TODO 自动生成的方法存根
		String tp=plus();
		return tp;
	}
	/****************************用户申请**********************************/
	public String plus(){
		Connection conn = null;
		PreparedStatement res;
		zhuback="faile";
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			String sql = "insert into user (name,password,department,phone,email,sex,realname,actor)"
					+ "values(?,?,?,?,?,?,?,?)";     // 插入数据的sql语句  
			res = conn.prepareStatement(sql);
			res.setString(1,getUsername());
			res.setString(2,getPassword());
			res.setString(3,getAdress());
			res.setString(4,getPhone());
			res.setString(5,getEmail());
			res.setString(6,getSex());
			res.setString(7,getRealname());
			res.setString(8,getActor());
			res.executeUpdate();
			res.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
			zhuback="success";
			return ERROR;
		}
		return SUCCESS;
	}
	/***************************Getters and Setters*************************************************/
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public static String getZhuback() {
		return zhuback;
	}
	public static void setZhuback(String zhuback) {
		Zhuce.zhuback = zhuback;
	}
}