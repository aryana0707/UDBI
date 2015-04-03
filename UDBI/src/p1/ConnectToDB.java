package p1;
import java.sql.*;

public class ConnectToDB {

	public static void main(String[] args) {		
		ConnectToDB.getCon();
	}
	
	public static java.sql.Connection getCon(){
		
		Connection conn=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","java");
			System.out.println("Connected to Database Server Successfully. ");
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e);
		}
		
		
		return conn;
		
	}

}
