package guest;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class guestUpdate {
	private String device;
	private String number;
	private String location;
	private String describle;
	private List<String[]> addInfolist= new ArrayList<String[]>();
	
	
	public String execute() throws Exception
	{
		device = getDevice();
		number = getNumber();
		location = getLocation();
		describle = getDescrible();
		
		addInfolist = insert(device,number,location,describle);//change it a func can carry args
		return "success";
	}
	/*********************DBConnection OPT    *************************************/
	public static List<String[]> insert(String device,String number,String location,String describle) {//different
		String value = null;
		String []temp = new String[6];
		Connection conn = null;
		Statement st = null;
		
		List<String[]> mylist= new ArrayList<String[]>();
		conn = DBConnection.getConnection();
		try{
		value ="'"+device +"'"+","+ "'"+number+"'"+"," +"'"+location+"'"+","+"'"+describle+"'";
		String sql = "INSERT INTO addInfo (device,number,location,describle)" + "VALUES("+value+")";
		st = (Statement)conn.createStatement(); // 创建用于执行静态sql语句的Statement对象  
		
		int count = st.executeUpdate(sql);//number of insert data
		System.out.println("向dictionary表中插入 " + count + " 条数据"); //输出插入操作的处理结果  
		conn.close();
		}catch (SQLException e) {  
			     System.out.println("插入数据失败" + e.getMessage());  
			}  
		temp[0]=device;temp[1]=number;temp[2]=location;temp[3]=describle;
		mylist.add(temp);
		return mylist;
}
	/*********************Getters and Setters*************************************/
	public String getDevice() {
		return device;
	}


	public void setDevice(String device) {
		this.device = device;
	}


	public String getNumber() {
		return number;
	}


	public void setNumber(String number) {
		this.number = number;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getDescrible() {
		return describle;
	}


	public void setDescrible(String describle) {
		this.describle = describle;
	}
	
	public List<String[]> getAddInfolist() {
		return addInfolist;
	}
	public void setAddInfolist(List<String[]> addInfolist) {
		this.addInfolist = addInfolist;
	}

}
