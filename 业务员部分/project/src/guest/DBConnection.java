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
		Connection con = null;  //���������������ݿ��Connection����  
			try {  
				Class.forName("com.mysql.jdbc.Driver");// ����Mysql��������      
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manage", "root", "123456");// ������������  
				if(con==null)System.out.println("���ݿ����Ϊ�գ�");
	       } catch (Exception e) {  
	            System.out.println("���ݿ�����ʧ��" + e.getMessage());  
	        }  
		        return con; //���������������ݿ�����  
	   } 
//	public static List<String> query(String index,String val,String table){
//		conn = getConnection(); //ͬ����Ҫ��ȡ���ӣ������ӵ����ݿ�     
//		List<String> mylist= new ArrayList<String>();
//		String []temp = new String[3];
//		try {
//	    	   String sql = "select * from "+table+" where "+ index +" = '"+ val +"';";     // ��ѯ���ݵ�sql���  
//	           st = (Statement) conn.createStatement();    //��������ִ�о�̬sql����Statement����st���ֲ�����  
//		              
//	            ResultSet rs = st.executeQuery(sql);    //ִ��sql��ѯ��䣬���ز�ѯ���ݵĽ����  
//	            System.out.println("���Ĳ�ѯ���Ϊ��");  
//	            while (rs.next()) { // �ж��Ƿ�����һ������  
//		                  
//	               // �����ֶ�����ȡ��Ӧ��ֵ  
//	                temp = new String[3];
//	            	temp[0] = rs.getString("name"); 
//	            	mylist.add(temp[0]);
//	            	temp[1] = rs.getString("actor");
//	            	mylist.add(temp[1]);
//	            	temp[2] = rs.getString("password");
//	            	mylist.add(temp[2]);
//	            	} 
//	          conn.close();   //�ر����ݿ����� 
//		        } catch (SQLException e) {  
//		            System.out.println("��ѯ����ʧ��");  
//	      }
//		return mylist;
//	}

}
