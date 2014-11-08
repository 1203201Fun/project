package guest;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userInfoUpdate {
	private String username;
	private String password;
	private String department;
	private String phone;
	private List<String[]> userInfolist= new ArrayList<String[]>();
	

	public String execute(){
		
		username = login.account;
		password = getPassword();
		department = getDepartment();
		phone = getPhone();
		
		//if(!realname.isEmpty())update("realname",realname,username);
		if(!password.isEmpty())update("password",password,username);
		if(!department.isEmpty())update("department",department,username);
		if(!phone.isEmpty())update("phone",phone,username);
		userInfolist = query(username);
		
		return "success";
	}
	
	/*****************************DBConnection**********************************************/
	public static void update(String colum,String val,String index){	
		String sql = null;
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection();
		try{
		sql = "update user set "+colum+"='"+val+"' where name='"+index+"'";// �������ݵ�sql���        
	    st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
        int count = st.executeUpdate(sql);// ִ�и��²�����sql��䣬���ظ������ݵĸ���  
        System.out.println("user���и��� " + count + " ������");      //������²����Ĵ�����  
              
	    conn.close();   //�ر����ݿ�����  
         } catch (SQLException e) {  
	            System.out.println("��������ʧ��");  
        }  
}
	
	public static List<String[]> query(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		List<String[]> mylist= new ArrayList<String[]>();
		String []temp = new String[6];
		try {
	    	   String sql = "select * from user where name = '"+ val +"';";     // ��ѯ���ݵ�sql���  
	           st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
		              
	            ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
	            System.out.println("���Ĳ�ѯ���Ϊ��");  
	            while (rs.next()) { // �ж��Ƿ�����һ������  
		                  
	               // �����ֶ�����ȡ��Ӧ��ֵ  
	                temp = new String[6];
	            	temp[0] = rs.getString("name"); 
	            	//mylist.add(temp[0]);
	            	temp[1] = rs.getString("actor");
	            	//mylist.add(temp[1]);
	            	temp[2] = rs.getString("password");
	            	temp[3] = rs.getString("department");
	            	temp[4] = rs.getString("phone");
	            	temp[5] = rs.getString("realname");
	            	mylist.add(temp);
	            	} 
	          conn.close();   //�ر����ݿ����� 
		        } catch (SQLException e) {  
		            System.out.println("��ѯ����ʧ��");  
	      }
		return mylist;
	}
	
	
	
	
	/*************************Gettera and Setters********************************/
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public List<String[]> getUserInfolist() {
		return userInfolist;
	}

	public void setUserInfolist(List<String[]> userInfolist) {
		this.userInfolist = userInfolist;
	}
	
}
