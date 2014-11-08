package guest;

import com.util.mail.*;

import java.sql.Connection;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.sql.Statement;  
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class lendUpdate extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private String device;
	private String date;
	private List<String[]> devicelist= new ArrayList<String[]>();
	private List<String[]> smallist= new ArrayList<String[]>();
	
	
	
	public  String execute() throws Exception
	{
		device = getDevice();
		date = getDate();
		String load = null;
		String []temp = new String[2];
		String username = login.account;
		String realname = login.name;
		String department = (userInfo.query(realname).get(0))[3];
		String password = (userInfo.query(realname).get(0))[2];
		
		gogo.sendEmail(username,realname,password,device);
		insert(realname,device,date,"1",department);
		devicelist = query(device,department);	
			if(devicelist.size()!=0){
				for(int i = 0;i<devicelist.size();i++){
					temp = new String[2];
					temp[0]=(devicelist.get(i))[0];//device
					int boat = Integer.parseInt((devicelist.get(i))[1])-1;
					if(boat == 0)boat=0;
					update(device,String.valueOf(boat));
					if(boat==0)boat=0;
					(devicelist.get(i)[1]) = String.valueOf(boat);
					temp[1]=String.valueOf(boat);//number
					//smallist.add(temp);
			}
			devicelist = deviceSearch.query(department,deviceSearch.similar);
			if(devicelist.size()!=0){
				for(int i = 0;i<devicelist.size();i++){
					temp = new String[2];
					temp[0]=(devicelist.get(i))[0];//device
					temp[1]=(devicelist.get(i))[1];//number
					smallist.add(temp);
				}
					device = temp[0];
				}
				device = temp[0];
			load = "success";
			}
			else return load = "failed";
		return load;
	}
	
/*************************DBConnection and OPT************************************/
	public static List<String[]> query(String val,String department){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�  
		List<String[]> devicelist= new ArrayList<String[]>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from device where device = '"+ val +"' and department ='"+department+"';";     // ��ѯ���ݵ�sql���  
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
	
	public static void insert(String name,String device,String date,String number,String department) {//different
		String value = null;
		String []temp = new String[6];
		Connection conn = null;
		Statement st = null;
		
		List<String[]> mylist= new ArrayList<String[]>();
		conn = DBConnection.getConnection();
		try{
		value ="'"+name+"'"+","+ "'"+device+"'"+"," +"'"+date+"'"+","+"'"+number+"'"+","+"'"+department+"'";
		String sql = "INSERT INTO history (username,device,time,number,department)" + "VALUES("+value+")";
		st = (Statement)conn.createStatement(); // ��������ִ�о�̬sql����Statement����  
		
		int count = st.executeUpdate(sql);//number of insert data
		System.out.println("��history���в��� " + count + " ������"); //�����������Ĵ�����  
		conn.close();
		}catch (SQLException e) {  
			     System.out.println("��������ʧ��" + e.getMessage());  
			}  
		temp[0]=name;temp[1]=device;temp[2]=date;temp[3]=number;
		mylist.add(temp);
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
        System.out.println("device���и��� " + count + " ������");      //������²����Ĵ�����  
              
	    conn.close();   //�ر����ݿ�����  
         } catch (SQLException e) {  
	            System.out.println("��������ʧ��");  
        }  
}
/*************************Getters and Setters************************************/
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDevice() {
		return device;
	}
	public void setDevice(String device) {
		this.device = device;
	}
	public List<String[]> getDevicelist() {
		return devicelist;
	}
	public void setDevicelist(List<String[]> devicelist) {
		this.devicelist = devicelist;
	}
	public List<String[]> getSmallist() {
		return smallist;
	}
	public void setSmallist(List<String[]> smallist) {
		this.smallist = smallist;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
