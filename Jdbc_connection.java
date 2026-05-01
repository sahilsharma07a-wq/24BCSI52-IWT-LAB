import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.util.*;
public class Jdbc_connection {

	public static void main(String[] args) {
		try {
			Scanner sc=new Scanner(System.in);
			/*System.out.println("Enter your name:");
			String name=sc.nextLine();
			System.out.println("Enter your dept:");
			String dept=sc.nextLine();
			System.out.println("Enter your roll:-");
			int rollno=sc.nextInt();
			System.out.println("Enter your age");
			int age=sc.nextInt();
			System.out.println("Enter your cgpa");
			Float cgpa=sc.nextFloat();*/
			String driver="org.postgresql.Driver";
			String url="jdbc:postgresql://192.168.1.17/cse_db24";
			String username="24bcsi52";
			String password="24bcsi52";
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,username,password);
			if(con!=null)
				System.out.println("Connection established successfully");
			 /*String qry = "CREATE TABLE students (" +
                     "rollno NUMERIC, " +
                     "name VARCHAR(50), " +
                     "age INT, " +
                     "dept VARCHAR(50), " +
                     "cgpa NUMERIC(4,2))";*/

        Statement stmt = con.createStatement();
//        stmt.executeUpdate(qry);
        
//        System.out.println("Table created successfully");
//        stmt.executeUpdate("insert into students values(1,'Ayush raj',21,'cse','9.4')");
//        stmt.executeUpdate("insert into students values(21,'sahil',21,'ece','9.2')");
       /* String insertQuery = "INSERT INTO students VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(insertQuery);

        ps.setInt(1, rollno);
        ps.setString(2, name);
        ps.setInt(3, age);
        ps.setString(4, dept);
        ps.setFloat(5, cgpa);

        ps.executeUpdate();
        System.out.println("User record inserted!");*/
        
        
  
//        stmt.close();
//        con.close();
      
        ResultSet rs = stmt.executeQuery("SELECT * FROM students");

        System.out.println("\n--- Student Records ---");
        while (rs.next()) {
            System.out.println(
                    rs.getInt("rollno") + " - " +
                    rs.getString("name") + " - " +
                    rs.getInt("age") + " - " +
                    rs.getString("dept") + " - " +
                    rs.getFloat("cgpa")
            );
        }
        
       /* System.out.print("\nEnter Roll No to update: ");
        int uRoll = sc.nextInt();
       System.out.print("Enter new CGPA: ");
        float newCgpa = sc.nextFloat();
        String updateQuery = "UPDATE students SET cgpa=? WHERE rollno=?";
        
        PreparedStatement ps2 = con.prepareStatement(updateQuery);
        
        ps2.setFloat(1, newCgpa);
        ps2.setInt(2, uRoll);
        ps2.executeUpdate();
        System.out.println("CGPA updated!");*/
        
       /* String UpdateQuery="DELETE students where rollno=?";
        PreparedStatement ps=con.prepareStatement(UpdateQuery);
        ps.executeUpdate();*/
        
        
        
		}catch(Exception e) {
			System.out.println("connection Error!!!"+e);
		}

	}

}
