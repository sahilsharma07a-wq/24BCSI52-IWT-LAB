package jdbc;
import java.sql.*;
public class server_connection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			String driver="org.postgresql.Driver";
			String url="jdbc:postgresql://192.168.1.17/cse_db24";
			String username="24bcsi52";
			String password="24bcsi52";
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,username,password);
			if(con!=null)
				System.out.println("Connection established successfully");
			
		}catch(Exception e) {
			System.out.println("connection Error!!!"+e);
		}
	}

}
