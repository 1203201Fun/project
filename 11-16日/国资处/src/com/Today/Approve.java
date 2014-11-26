package com.Today;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Action.DBConnection;
import com.opensymphony.xwork2.ActionSupport;

public class Approve extends ActionSupport {

	/**
	 * @return
	 */
	public String lxg;
	private String mark;
	private String device;
	private String birthday;
	private String buydate;
	private String factory;
	private String handler;
	private String describle;
	private String department;
	private String id;
	private String imgpath;
	private String managetype;
	private String model;
	private String number;
	private String pin;
	private String price;
	private String projid;
	private String recipienter;
	private String repairnumber;
	private String state;
	private String usefor;
	
	
	public String execute() {
		// TODO 自动生成的方法存根
		if(getMark().equals("one")){
			String temp=newdev();
			if(temp.equals("success")){
				delete();
				lxg="设备入库成功";
			}
			else
				lxg="发生系统错误";
		}
		else{
			delete();
			lxg="申请表已经成功删除";
		}
		return SUCCESS;
	}
	
	/****************************DBConnection**********************************/
	public String newdev(){
		Connection conn = null;
		PreparedStatement res;
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			String sql = "insert into device (device,birthday,buydate,factory,handler,describle,department,"
					+ "id,imgpath,managetype,model,number,repairnumber,pin,price,projid,recipienter,state,usefor)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			 res = conn.prepareStatement(sql);
			 res.setString(1,getDevice());
			 res.setString(2,getBirthday());
			 res.setString(3,getBuydate());
			 res.setString(4,getFactory());
			 res.setString(5,getHandler());
			 res.setString(6,getDescrible());
			 res.setString(7,getDepartment());
			 res.setString(8,getId());
			 res.setString(9,getImgpath());
			 res.setString(10,getManagetype());
			 res.setString(11,getModel());
			 res.setString(11,getNumber());
			 res.setString(12,getRepairnumber());
			 res.setString(13,getPin());
			 res.setString(14,getPrice());
			 res.setString(15,getProjid());
			 res.setString(16,getRecipienter());
			 res.setString(17,getState());
			 res.setString(18,getUsefor());
			 res.executeUpdate();
			 res.close();
		}catch(Exception e){
			System.out.println(e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/****************************DBConnection**********************************/
	public void delete(){
		Connection conn = null;
		PreparedStatement res;
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		try{
			String tp_sql = "delete from newdevice where pin='"+pin+"'";
			res=conn.prepareStatement(tp_sql);
			res.executeUpdate(tp_sql);
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
	}
	
	/***************************Getters and Setters*************************************************/
	
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
	public String getDevice() {
		return device;
	}
	public void setDevice(String device) {
		this.device = device;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getBuydate() {
		return buydate;
	}
	public void setBuydate(String buydate) {
		this.buydate = buydate;
	}
	public String getFactory() {
		return factory;
	}
	public void setFactory(String factory) {
		this.factory = factory;
	}
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	public String getDescrible() {
		return describle;
	}
	public void setDescrible(String describle) {
		this.describle = describle;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public String getManagetype() {
		return managetype;
	}
	public void setManagetype(String managetype) {
		this.managetype = managetype;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getProjid() {
		return projid;
	}
	public void setProjid(String projid) {
		this.projid = projid;
	}
	public String getRecipienter() {
		return recipienter;
	}
	public void setRecipienter(String recipienter) {
		this.recipienter = recipienter;
	}
	public String getRepairnumber() {
		return repairnumber;
	}
	public void setRepairnumber(String repairnumber) {
		this.repairnumber = repairnumber;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getUsefor() {
		return usefor;
	}
	public void setUsefor(String usefor) {
		this.usefor = usefor;
	}

	public String getLxg() {
		return lxg;
	}

	public void setLxg(String lxg) {
		this.lxg = lxg;
	}
}