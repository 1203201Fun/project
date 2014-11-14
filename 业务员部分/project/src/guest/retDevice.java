package guest;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class retDevice {
	private String device;
	private String date;
	private List<String[]> historylist= new ArrayList<String[]>();
	private List<String[]> devicelist= new ArrayList<String[]>();
	
	public String execute(){//change list table:device,history
		device = getDevice();
	
		devicelist = query(device);
		historylist = query1(device);
		date = historylist.get(0)[2];
		int temp = Integer.parseInt((devicelist.get(0))[1])+1;
		update(device,String.valueOf(temp));
		delete(date);
		String realname = login.name;
		historylist = query2(realname);
		if(historylist.size()!=0){
			return "success";
		}
		else
			return "empty";
	}
	/****************************DBConnection**********************************/
	public static List<String[]> query(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�  
		List<String[]> devicelist= new ArrayList<String[]>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from device where device = '"+ val +"';";     // ��ѯ���ݵ�sql���  
	           st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
		              
	            ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
	            while (rs.next()) { // �ж��Ƿ�����һ������  
		                  
	               // �����ֶ�����ȡ��Ӧ��ֵ  
	                temp = new String[6];
	            	temp[0] = rs.getString("device");  
	            	temp[1] = rs.getString("number");
	            	temp[2] = rs.getString("location");
	            	temp[3] = rs.getString("describle");
	            	devicelist.add(temp); 
		            //System.out.println(result);  
		                //����鵽�ļ�¼�ĸ����ֶε�ֵ  
		       }  
	          conn.close();   //�ر����ݿ����� 
		        } catch (SQLException e) {  
		            System.out.println("��ѯ����ʧ��");  
	      }
		return devicelist;
	}	
	public List<String[]> query1(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
		List<String[]> mylist= new ArrayList<String[]>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from history where device = '"+ val +"';";     // ��ѯ���ݵ�sql���  
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
	public List<String[]> query2(String val){
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
	public static String delete(String device){ 
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�  
		        
		 try {  
		           String sql = "delete from history where time = '"+device+"'";// ɾ�����ݵ�sql���  
		           st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
		            
		          int count = st.executeUpdate(sql);// ִ��sqlɾ����䣬����ɾ�����ݵ�����  
		             
		           System.out.println("history����ɾ�� " + count + " ������\n");    //���ɾ�������Ĵ�����  
		            
		          conn.close();   //�ر����ݿ�����  
		          return "success";
	             
		        } catch (SQLException e) {  
		             System.out.println("ɾ������ʧ��");
		            return "failed";
		       }
		
	}
	public static void update(String device,String number){	
		String sql = null;
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection();
		try{
		sql = "update device set number ='"+number+"'"+" where device='"+ device +"'";// �������ݵ�sql���        
	    st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
        int count = st.executeUpdate(sql);// ִ�и��²�����sql��䣬���ظ������ݵĸ���  
        System.out.println("�黹device���и��� " + count + " ������");      //������²����Ĵ�����  
              
	    conn.close();   //�ر����ݿ�����  
         } catch (SQLException e) {  
	            System.out.println("��������ʧ��");  
        }  
}
	/***********************************************************************/
	
	
	
	public String getDevice() {
		return device;
	}
	public void setDevice(String device) {
		this.device = device;
	}
	public List<String[]> getHistorylist() {
		return historylist;
	}
	public void setHistorylist(List<String[]> historylist) {
		this.historylist = historylist;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
