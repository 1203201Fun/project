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
