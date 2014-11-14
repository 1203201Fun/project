package guest;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class login {
	private String userName;
	private String passWord;
	private String flag;
	private List<String> userInfo= new ArrayList<String>();
	public static String name;
	public static String account;
	
	public String execute(){
		String []temp = new String[2];//use for compare
		
		userName = getUserName();
		passWord = getPassWord();
		account = userName;
		
		userInfo = query(userName);
		if(userInfo.size()!=0){
			temp = new String[2];
			temp[0] = (userInfo.get(0));//type of user
			temp[1] = (userInfo.get(2));//password of user
			name = (userInfo.get(3));
			if(passWord.equals(temp[1])){
				if(temp[0]=="Admin")return "Admin";
				else return "Guest";
			}
			else{
				flag = "failed";
				return "failed";
				}//faile in password
		}
		else{
			flag = "failed";
			return "failed";//not exsit
		}
	}
	
	/****************************DBConnection**********************************/
	public List<String> query(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		List<String> mylist= new ArrayList<String>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from user where name = '"+ val +"';";     // ��ѯ���ݵ�sql���  
	           st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
		              
	            ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
	            System.out.println("���Ĳ�ѯ���Ϊ��");  
	            while (rs.next()) { // �ж��Ƿ�����һ������  
		                  
	               // �����ֶ�����ȡ��Ӧ��ֵ  
	                temp = new String[4];
	            	temp[0] = rs.getString("name"); 
	            	mylist.add(temp[0]);
	            	temp[1] = rs.getString("actor");
	            	mylist.add(temp[1]);
	            	temp[2] = rs.getString("password");
	            	mylist.add(temp[2]);
	            	temp[3] = rs.getString("realname");
	            	mylist.add(temp[3]);
	            	} 
	          conn.close();   //�ر����ݿ����� 
		        } catch (SQLException e) {  
		            System.out.println("��ѯ����ʧ��");  
	      }
		return mylist;
	}
/***************************Getters and Setters*************************************************/
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public List<String> getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(List<String> userInfo) {
		this.userInfo = userInfo;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}
	
}
