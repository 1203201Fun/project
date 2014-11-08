package guest;
import java.sql.Connection;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.sql.Statement;  
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class deviceSearch extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private String device;
	private List<String[]> devicelist= new ArrayList<String[]>();
	private List<String[]> smallist= new ArrayList<String[]>();
	public static String similar;
	
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
	
	
	
	public  String execute() throws Exception
	{
		device = getDevice();
		similar = device;
		String load = null;
		String []temp = new String[2];
		
		
		String username = login.name;
		String department = (userInfo.query(username).get(0))[3];
		devicelist = query(department,device);
		if(devicelist.size()!=0){
			for(int i = 0;i<devicelist.size();i++){
				temp = new String[2];
				temp[0]=(devicelist.get(i))[0];//device
				temp[1]=(devicelist.get(i))[1];//number
				smallist.add(temp);
			}
				device = temp[0];
			load = "success";
			}
			else return load = "failed";
		return load;
	}
/*************************DBConnection and OPT************************************/
	public static List<String[]> query(String department,String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�  
		List<String[]> devicelist= new ArrayList<String[]>();
		String []temp = new String[6];
		try {
	    	   String sql = "select * from device where device like '"+ val +"%'and department='"+department+"';";     // ��ѯ���ݵ�sql���  
	           st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
		              
	            ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
	            while (rs.next()) { // �ж��Ƿ�����һ������  
		                  
	               // �����ֶ�����ȡ��Ӧ��ֵ  
	                temp = new String[6];
	            	temp[0] = rs.getString("device");  
	            	temp[1] = rs.getString("number");
	            	temp[2] = rs.getString("location");
	            	temp[3] = rs.getString("describle");
	            	temp[4] = rs.getString("repairnumber");
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
/*************************Getters and Setters************************************/
	

}
