package guest;
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.Statement;

public class DBConnection {
	static Connection conn;
	static Statement st;
	
	public DBConnection(){
		 conn = null;
		 st = null;
	}
	public static Connection getConnection() {  
		Connection con = null;  //创建用于连接数据库的Connection对象  
			try {  
				Class.forName("com.mysql.jdbc.Driver");// 加载Mysql数据驱动      
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manage", "root", "123456");// 创建数据连接  
				if(con==null)System.out.println("数据库接收为空！");
	       } catch (Exception e) {  
	            System.out.println("数据库连接失败" + e.getMessage());  
	        }  
		        return con; //返回所建立的数据库连接  
	   } 
//	public static List<String> query(String index,String val,String table){
//		conn = getConnection(); //同样先要获取连接，即连接到数据库     
//		List<String> mylist= new ArrayList<String>();
//		String []temp = new String[3];
//		try {
//	    	   String sql = "select * from "+table+" where "+ index +" = '"+ val +"';";     // 查询数据的sql语句  
//	           st = (Statement) conn.createStatement();    //创建用于执行静态sql语句的Statement对象，st属局部变量  
//		              
//	            ResultSet rs = st.executeQuery(sql);    //执行sql查询语句，返回查询数据的结果集  
//	            System.out.println("最后的查询结果为：");  
//	            while (rs.next()) { // 判断是否还有下一个数据  
//		                  
//	               // 根据字段名获取相应的值  
//	                temp = new String[3];
//	            	temp[0] = rs.getString("name"); 
//	            	mylist.add(temp[0]);
//	            	temp[1] = rs.getString("actor");
//	            	mylist.add(temp[1]);
//	            	temp[2] = rs.getString("password");
//	            	mylist.add(temp[2]);
//	            	} 
//	          conn.close();   //关闭数据库连接 
//		        } catch (SQLException e) {  
//		            System.out.println("查询数据失败");  
//	      }
//		return mylist;
//	}

}
