package guest;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userInfo {
	private String username;
	private List<String[]> userInfolist= new ArrayList<String[]>();
	
	public String execute()throws Exception{
		//username = getUsername();
		username = login.name;
		userInfolist = query(username);
		return "success";
	}
	/****************************DBConnection**********************************/
	public static List<String[]> query(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		List<String[]> mylist= new ArrayList<String[]>();
		String []temp = new String[7];
		try {
	    	   String sql = "select * from user where realname = '"+ val +"';";     // ��ѯ���ݵ�sql���  
	           st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
		              
	            ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
	            System.out.println("���Ĳ�ѯ���Ϊ��");  
	            while (rs.next()) { // �ж��Ƿ�����һ������  
		                  
	               // �����ֶ�����ȡ��Ӧ��ֵ  
	                temp = new String[7];
	            	temp[0] = rs.getString("name"); 
	            	//mylist.add(temp[0]);
	            	temp[1] = rs.getString("actor");
	            	//mylist.add(temp[1]);
	            	temp[2] = rs.getString("password");
	            	temp[3] = rs.getString("department");
	            	temp[4] = rs.getString("phone");
	            	temp[5] = rs.getString("realname");
	            	temp[6] = rs.getString("email");
	            	mylist.add(temp);
	            	} 
	          conn.close();   //�ر����ݿ����� 
		        } catch (SQLException e) {  
		            System.out.println("��ѯ����ʧ��");  
	      }
		return mylist;
	}
	/***********************************************************************/
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public List<String[]> getUserInfolist() {
		return userInfolist;
	}
	public void setUserInfolist(List<String[]> userInfolist) {
		this.userInfolist = userInfolist;
	}


	
	
	
}
