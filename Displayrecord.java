package mypack;
import java.sql.*;
import java.util.*;
public class Displayrecord {

	public static void main(String[] args) {
		try {
			String driver="org.postgresql.Driver";
			String url="jdbc:postgresql://192.168.1.17/cse_db24";
			String username="24bcsi52";
			String password="24bcsi52";
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,username,password);
			if(con!=null) {
				System.out.println("Connection established successfully");
			}
			
			String qry="select * from student";
			PreparedStatement ps=con.prepareStatement(qry);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString("name"));
				System.out.println(rs.getString("sic_no"));
			}
			ps.close();
			con.close();
			
		}catch(Exception e) {
			System.out.println("connection Error!!!"+e);
		}

	}

}
