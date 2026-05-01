<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>server connection</title>
</head>
<body>
<%
try {
			String driver="org.postgresql.Driver";
		    String url="jdbc:postgresql://192.168.1.17/cse_db24";
			String username="24bcsi52";
			String password="24bcsi52";
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,username,password);
			if(con!=null)
			 out.println("connection established successfully");
			
		}
		catch(Exception e){
			 out.println(e);
			
		}
%>
</body>
</html>