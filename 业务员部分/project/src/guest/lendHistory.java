package guest;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class lendHistory {
	private String name;
	private List<String[]> historylist= new ArrayList<String[]>();
	
	public String execute(){
		
		name = getName();
		String realname = login.name;
		historylist = query(realname);
		if(historylist.size()!=0){
			return "success";
		}
		else
			return "empty";
	}
	/****************************DBConnection**********************************/
	public List<String[]> query(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		List<String[]> mylist= new ArrayList<String[]>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from history where username = '"+ val +"';";     // ��ѯ���ݵ�sql���  
	           st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
		              
	            ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
	            System.out.println("���Ĳ�ѯ���Ϊ��");  
	            while (rs.next()) { // �ж��Ƿ�����һ������  
		                  
	               // �����ֶ�����ȡ��Ӧ��ֵ  
	                temp = new String[3];
	            	temp[0] = rs.getString("username"); 
	            	//mylist.add(temp[0]);
	            	temp[1] = rs.getString("device");
	            	//mylist.add(temp[1]);
	            	temp[2] = rs.getString("time");
	            	//temp[3] = rs.getString("number");
	            	mylist.add(temp);
	            	} 
	          conn.close();   //�ر����ݿ����� 
		        } catch (SQLException e) {  
		            System.out.println("��ѯ����ʧ��");  
	      }
		return mylist;
	}
	/***********************************************************************/
	public List<String[]> getHistorylist() {
		return historylist;
	}

	public void setHistorylist(List<String[]> historylist) {
		this.historylist = historylist;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
