package mypack;
import java.sql.*;
import java.util.*;
public class Insertrecord {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter your name:");
		String name=sc.next();
		System.out.println("Enter your sic no.");
		String sic_no = sc.next();
		
		
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
			
			String qry="INSERT INTO student(name,sic_no)values(?,?)";
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setString(1, name);
			ps.setString(2,sic_no);
			int i=ps.executeUpdate();
			if(i==1) {
				System.out.println("Record submitted successfully!!");
			}
			ps.close();
			con.close();
			
		}catch(Exception e) {
			System.out.println("connection Error!!!"+e);
		}
		
	}
}
