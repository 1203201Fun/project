package guest;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class deviceRepair {
	private String device;
	private String id;
	private String reporter;
	private String date;
	private String describle;
	private List<String[]> devicelist= new ArrayList<String[]>();
	
	public String execute() throws Exception
	{
		device = getDevice();
		id = getId();
		date = getDate();
		describle = getDescrible();
		if(!device.isEmpty()){
			
			String username = login.name;
			reporter = login.name;
			String department = (userInfo.query(username).get(0))[3];//get their department
			devicelist = deviceSearch.query(department,device);
			insert(device,id,reporter,date,describle,department);
			int repairnumber = Integer.parseInt((devicelist.get(0))[4])+1;
			int number = Integer.parseInt((devicelist.get(0))[1])-1;
			update(String.valueOf(repairnumber),String.valueOf(number),device,department);//change it a func can carry args
		return "success";
		}
		else return "falied";
	}
	/*********************DBConnection OPT    *************************************/
	public static void update(String repairnumber,String number,String device,String department){	
		String sql = null;
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection();
		try{
		sql = "update device set repairnumber = '"+repairnumber+"'"+"," +"number='"+number+"'"+" where device='"+ device +"'"+"and department ='"+department+"'" ;//
	    st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
        int count = st.executeUpdate(sql);// 执行更新操作的sql语句，返回更新数据的个数  
        System.out.println("device表中更新 " + count + " 条数据");      //输出更新操作的处理结果  
              
	    conn.close();   //关闭数据库连接  
         } catch (SQLException e) {  
	            System.out.println("更新数据失败");  
        }  
}
	public void insert(String device,String id,String reporter,String date,String describle,String department) {//different
		String value = null;
		//String []temp = new String[6];
		Connection conn = null;
		Statement st = null;
		
//		/List<String[]> mylist= new ArrayList<String[]>();
		conn = DBConnection.getConnection();
		try{
		value ="'"+device +"'"+","+ "'"+id+"'"+"," +"'"+reporter+"'"+","+"'"+date+"'"+","+"'"+describle+"'"+","+"'"+department+"'";
		String sql = "INSERT INTO repair (device,id,reporter,date,describle,department)" + "VALUES("+value+")";
		st = (Statement)conn.createStatement(); // 创建用于执行静态sql语句的Statement对象  
		
		int count = st.executeUpdate(sql);//number of insert data
		System.out.println("向repaire表中插入 " + count + " 条数据"); //输出插入操作的处理结果  
		conn.close();
		}catch (SQLException e) {  
			     System.out.println("插入数据失败" + e.getMessage());  
			}  
		//temp[0]=device;temp[1]=number;temp[2]=location;temp[3]=describle;
		//mylist.add(temp);
		//return mylist;
}
	/*************************************************************************/
	public String getDevice() {
		return device;
	}
	public void setDevice(String device) {
		this.device = device;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDescrible() {
		return describle;
	}
	public void setDescrible(String describle) {
		this.describle = describle;
	}
}
