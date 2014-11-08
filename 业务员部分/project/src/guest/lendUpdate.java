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
		
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库  
		List<String[]> devicelist= new ArrayList<String[]>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from device where device = '"+ val +"' and department ='"+department+"';";     // 查询数据的sql语句  
	           st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
		              
	            ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
	            while (rs.next()) { // 判断是否还有下一个数据  
		                  
	               // 根据字段名获取相应的值  
	                temp = new String[6];
	            	temp[0] = rs.getString("device");  
	            	temp[1] = rs.getString("number");
	            	temp[2] = rs.getString("location");
	            	temp[3] = rs.getString("describle");
	            	devicelist.add(temp); 
		            //System.out.println(result);  
		                //输出查到的记录的各个字段的值  
		       }  
	          conn.close();   //关闭数据库连接 
		        } catch (SQLException e) {  
		            System.out.println("查询数据失败");  
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
		st = (Statement)conn.createStatement(); // 创建用于执行静态sql语句的Statement对象  
		
		int count = st.executeUpdate(sql);//number of insert data
		System.out.println("向history表中插入 " + count + " 条数据"); //输出插入操作的处理结果  
		conn.close();
		}catch (SQLException e) {  
			     System.out.println("插入数据失败" + e.getMessage());  
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
		sql = "update device set number ='"+number+"'"+" where device='"+ device +"'";// 更新数据的sql语句        
	    st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
        int count = st.executeUpdate(sql);// 执行更新操作的sql语句，返回更新数据的个数  
        System.out.println("device表中更新 " + count + " 条数据");      //输出更新操作的处理结果  
              
	    conn.close();   //关闭数据库连接  
         } catch (SQLException e) {  
	            System.out.println("更新数据失败");  
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
