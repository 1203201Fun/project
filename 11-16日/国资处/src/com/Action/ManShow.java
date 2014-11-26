package com.Action;
import com.entity.*;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.*;
import java.util.*;
public class ManShow extends ActionSupport {

	/**
	 * @return
	 */
	static String order;
	/***************************�û���Ϣ�����ȡ*************************************************/
	public List<User> list;
	public List<User> Infolist = new ArrayList<User>();
	
	
	/***************************����ǼǱ�*************************************************/
	public List<Stock> list2;
	public List<Stock> Infolist2 = new ArrayList<Stock>();
	
	
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
	/*	if(RevertAction.retflag.equals("success")||RepairAction.repflag.equals("success"))
			order="4";
		else*/ if(AddAction.addflag.equals("success"))
			order="5";
		if(order.equals("2")){
			userquery();
		}
		else if(order.equals("3")){
			
		}
		/*else if(order.equals("4")){
			borrowquery();
			stockquery();
			repairquery();
			RevertAction.retflag="faile";
			RepairAction.repflag="faile";
		}*/
		else if(order.equals("5")){
			addinfoquery();
			repairquery();
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
	
		public void newdevquery(){
			Connection conn = null;
			Statement st = null;
			conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
			try{
				st = conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
				String sql = "select device,managetype,recipienter,model,buydate,price"
						+ " from newdevice";     // ��ѯ���ݵ�sql���  
				ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
				while(rs.next()){
					Stock stock = new Stock();
					stock.setDevice(rs.getString("device"));
					stock.setManagetype(rs.getString("managetype"));
					stock.setRecipienter(rs.getString("recipienter"));
					stock.setPin(rs.getString("pin"));
					stock.setBuydate(rs.getString("buydate"));
					stock.setPrice(rs.getString("price"));
					Infolist2.add(stock);
					}
				this.setList3(Infolist2);
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
				String sql = "select device,managetype,recipienter,id,buydate,price"
						+ " from device";     // ��ѯ���ݵ�sql���  
				ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
				while(rs.next()){
					Stock stock = new Stock();
					stock.setDevice(rs.getString("device"));
					stock.setManagetype(rs.getString("managetype"));
					stock.setRecipienter(rs.getString("recipienter"));
					stock.setId(rs.getString("id"));
					stock.setBuydate(rs.getString("buydate"));
					stock.setPrice(rs.getString("price"));
					Infolist3.add(stock);
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
						addinfo.setTime(rs.getString("time"));
						addinfo.setFlag(rs.getString("flag"));
						addinfo.setSignature(rs.getString("signature"));
						Infolist4.add(addinfo);
					}
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
						Infolist5.add(repair);
					}
					}
				this.setList5(Infolist5);
				rs.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e);
			}
		}
	/***************************Getters and Setters*************************************************/
	
	
	public List<User> getList() {
		return list;
	}

	public static String getOrder() {
		return order;
	}

	public static void setOrder(String order) {
		ManShow.order = order;
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
	public List<Stock> getList2() {
		return list2;
	}

	public void setList2(List<Stock> list2) {
		this.list2 = list2;
	}

	public List<Stock> getInfolist2() {
		return Infolist2;
	}

	public void setInfolist2(List<Stock> infolist2) {
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