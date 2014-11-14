package com.Action;
import com.entity.*;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.*;
import java.util.*;
public class ManShow extends ActionSupport {

	/**
	 * @return
	 */
	String order;
	/***************************�û���Ϣ�����ȡ*************************************************/
	public List<User> list;
	public List<User> Infolist = new ArrayList<User>();
	
	
	/***************************����ǼǱ�*************************************************/
	public List<Borrow> list2;
	public List<Borrow> Infolist2 = new ArrayList<Borrow>();
	
	
	/***************************�豸�ڿ��*************************************************/
	public List<Stock> list3;
	public List<Stock> Infolist3 = new ArrayList<Stock>();
	
	/***************************��Ϣ�����*************************************************/
	public List<Addinfo> list4;
	public List<Addinfo> Infolist4 = new ArrayList<Addinfo>();
	
	/***************************�豸����*************************************************/
	public List<Repair> list5;
	public List<Repair> Infolist5 = new ArrayList<Repair>();
	
	public String execute() {
		// TODO �Զ����ɵķ������
		if(Userdelete.userflag.equals("success"))
			order="2";
		else if(RevertAction.retflag.equals("success")||RepairAction.repflag.equals("success"))
			order="4";
		else if(AddAction.addflag.equals("success"))
			order="5";
		if(order.equals("2")){
			userquery();
			Userdelete.userflag="faile";
		}
		else if(order.equals("4")){
			borrowquery();
			stockquery();
			repairquery();
			RevertAction.retflag="faile";
			RepairAction.repflag="faile";
		}
		else if(order.equals("5")){
			addinfoquery();
			AddAction.addflag="faile";
		}
		return order;
	}
	
	 /****************************�û���Ϣ�������ȡ**********************************/
		public void userquery(){
			Connection conn = null;
			Statement st = null;
			conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
			try{
				st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
				String sql = "select * from user";     // ��ѯ���ݵ�sql���  
				ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
				while(rs.next()){
					User user = new User();
					user.setUsername(rs.getString("name"));
					user.setPhone(rs.getString("phone"));
					user.setEmail(rs.getString("email"));
					user.setAdress(rs.getString("department"));
					user.setSex(rs.getString("sex"));
					user.setRealname(rs.getString("realname"));
					user.setActor(rs.getString("actor"));
					Infolist.add(user);
					}
				this.setList(Infolist);
				rs.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e);
			}
		}
		
	/***************************����ǼǱ�*************************************************/
	
		public void borrowquery(){
			Connection conn = null;
			Statement st = null;
			conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
			try{
				st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
				String sql = "select * from history";     // ��ѯ���ݵ�sql���  
				ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
				while(rs.next()){
					Borrow borr = new Borrow();
					borr.setDevname(rs.getString("device"));
					borr.setUser(rs.getString("username"));
					borr.setUserphone(rs.getString("phone"));
					borr.setBorrowdate(rs.getString("time"));
					borr.setKind(rs.getString("class"));
					Infolist2.add(borr);
					}
				this.setList2(Infolist2);
				rs.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e);
			}
		}
		
	/***************************�豸�ڿ��*************************************************/
	
		public void stockquery(){
			Connection conn = null;
			Statement st = null;
			conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
			try{
				st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
				String sql = "select * from device";     // ��ѯ���ݵ�sql���  
				ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
				while(rs.next()){
					String tp=rs.getString("number");
					int fw=Integer.parseInt(tp);
					if(fw!=0){
						Stock stoc = new Stock();
						stoc.setDevname(rs.getString("device"));
						stoc.setDevadress(rs.getString("location"));
						stoc.setDevperson(rs.getString("manager"));
						stoc.setDevnum(rs.getString("number"));
						stoc.setDevdetail(rs.getString("describle"));
						stoc.setDevflag(rs.getString("repnum"));
						stoc.setKind(rs.getString("class"));
						Infolist3.add(stoc);
					}
					}
				this.setList3(Infolist3);
				rs.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e);
			}
		}
		
	/***************************��Ϣ�����*************************************************/
		
		public void addinfoquery(){
			Connection conn = null;
			Statement st = null;
			conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
			try{
				st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
				String sql = "select * from addinfo";     // ��ѯ���ݵ�sql���  
				ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
				while(rs.next()){
					Addinfo info = new Addinfo();
					info.setTpname(rs.getString("device"));
					info.setTpadress(rs.getString("location"));
					info.setTpdetail(rs.getString("describle"));
					info.setTpnum(rs.getString("number"));
					info.setKind(rs.getString("class"));
					Infolist4.add(info);
					}
				this.setList4(Infolist4);
				rs.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e);
			}
		}
		
/***************************��Ϣ�����*************************************************/
		
		public void repairquery(){
			Connection conn = null;
			Statement st = null;
			conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
			try{
				st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
				String sql = "select * from repair";     // ��ѯ���ݵ�sql���  
				ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
				while(rs.next()){
					Repair repair = new Repair();
					repair.setDevice(rs.getString("device"));
					repair.setReporter(rs.getString("reporter"));
					repair.setDate(rs.getString("date"));
					repair.setId(rs.getString("id"));
					repair.setDescrible(rs.getString("describle"));
					Infolist5.add(repair);
					}
				this.setList5(Infolist5);
				rs.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e);
			}
		}
	/***************************Getters and Setters*************************************************/
	
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}

	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	public List<User> getInfolist() {
		return Infolist;
	}

	public void setInfolist(List<User> infolist) {
		Infolist = infolist;
	}

	public List<Borrow> getList2() {
		return list2;
	}

	public void setList2(List<Borrow> list2) {
		this.list2 = list2;
	}

	public List<Borrow> getInfolist2() {
		return Infolist2;
	}

	public void setInfolist2(List<Borrow> infolist2) {
		Infolist2 = infolist2;
	}

	public List<Stock> getList3() {
		return list3;
	}

	public void setList3(List<Stock> list3) {
		this.list3 = list3;
	}

	public List<Stock> getInfolist3() {
		return Infolist3;
	}

	public void setInfolist3(List<Stock> infolist3) {
		Infolist3 = infolist3;
	}

	public List<Addinfo> getList4() {
		return list4;
	}

	public void setList4(List<Addinfo> list4) {
		this.list4 = list4;
	}

	public List<Addinfo> getInfolist4() {
		return Infolist4;
	}

	public void setInfolist4(List<Addinfo> infolist4) {
		Infolist4 = infolist4;
	}

	public List<Repair> getList5() {
		return list5;
	}

	public void setList5(List<Repair> list5) {
		this.list5 = list5;
	}

	public List<Repair> getInfolist5() {
		return Infolist5;
	}

	public void setInfolist5(List<Repair> infolist5) {
		Infolist5 = infolist5;
	}
}