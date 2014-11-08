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
		
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库  
		List<String[]> devicelist= new ArrayList<String[]>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from device where device = '"+ val +"';";     // 查询数据的sql语句  
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
	public List<String[]> query1(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		List<String[]> mylist= new ArrayList<String[]>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from history where device = '"+ val +"';";     // 查询数据的sql语句  
	           st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
		              
	            ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
	            System.out.println("最后的查询结果为：");  
	            while (rs.next()) { // 判断是否还有下一个数据  
		                  
	               // 根据字段名获取相应的值  
	                temp = new String[3];
	            	temp[0] = rs.getString("username"); 
	            	//mylist.add(temp[0]);
	            	temp[1] = rs.getString("device");
	            	//mylist.add(temp[1]);
	            	temp[2] = rs.getString("time");
	            	//temp[3] = rs.getString("number");
	            	mylist.add(temp);
	            	} 
	          conn.close();   //关闭数据库连接 
		        } catch (SQLException e) {  
		            System.out.println("查询数据失败");  
	      }
		return mylist;
	}
	public List<String[]> query2(String val){
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库     
		List<String[]> mylist= new ArrayList<String[]>();
		String []temp = new String[4];
		try {
	    	   String sql = "select * from history where username = '"+ val +"';";     // 查询数据的sql语句  
	           st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
		              
	            ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
	            System.out.println("最后的查询结果为：");  
	            while (rs.next()) { // 判断是否还有下一个数据  
		                  
	               // 根据字段名获取相应的值  
	                temp = new String[3];
	            	temp[0] = rs.getString("username"); 
	            	//mylist.add(temp[0]);
	            	temp[1] = rs.getString("device");
	            	//mylist.add(temp[1]);
	            	temp[2] = rs.getString("time");
	            	//temp[3] = rs.getString("number");
	            	mylist.add(temp);
	            	} 
	          conn.close();   //关闭数据库连接 
		        } catch (SQLException e) {  
		            System.out.println("查询数据失败");  
	      }
		return mylist;
	}
	public static String delete(String device){ 
		Connection conn = null;
		Statement st = null;
		
		conn = DBConnection.getConnection(); //同样先要获取连接，即连接到数据库  
		        
		 try {  
		           String sql = "delete from history where time = '"+device+"'";// 删除数据的sql语句  
		           st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
		            
		          int count = st.executeUpdate(sql);// 执行sql删除语句，返回删除数据的数量  
		             
		           System.out.println("history表中删除 " + count + " 条数据\n");    //输出删除操作的处理结果  
		            
		          conn.close();   //关闭数据库连接  
		          return "success";
	             
		        } catch (SQLException e) {  
		             System.out.println("删除数据失败");
		            return "failed";
		       }
		
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
        System.out.println("归还device表中更新 " + count + " 条数据");      //输出更新操作的处理结果  
              
	    conn.close();   //关闭数据库连接  
         } catch (SQLException e) {  
	            System.out.println("更新数据失败");  
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
