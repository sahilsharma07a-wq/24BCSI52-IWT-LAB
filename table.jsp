<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table creation</title>
</head>
<body>
<%
        String url = "jdbc:postgresql://192.168.1.17/cse_db24";
        String username = "24bcsi52";
        String password = "24bcsi52";
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            out.println("Connected to database!");
            Statement stmt = con.createStatement();
            String sql = "CREATE TABLE IF NOT EXISTS students_info (" +
                         "id SERIAL PRIMARY KEY," +
                         "name VARCHAR(50)," +
                         "email VARCHAR(50)," +
                         "course VARCHAR(30)," +
                         "age INT," +
                         "cgpa FLOAT)";

            stmt.executeUpdate(sql);
            out.println("Table 'student' created successfully!");


            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    
 %>
</body>
</html>