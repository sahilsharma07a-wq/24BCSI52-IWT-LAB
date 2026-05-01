<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Display Students</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px 15px;
            text-align: center;
        }
        th {
            background: #007BFF;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }
        tr:nth-child(even) {
            background: #f9f9f9;
        }
        tr:hover {
            background: #eaf3ff;
        }
        a {
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
            margin: 0 5px;
        }
        a:hover {
            color: #0056b3;
        }
        .actions {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
<h1>Student Records</h1>

<%
try {
    // PostgreSQL driver
    Class.forName("org.postgresql.Driver");

    // PostgreSQL connection
    Connection con = DriverManager.getConnection(
        "jdbc:postgresql://192.168.1.17/cse_db24", "24bcsi52", "24bcsi52");

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM students_info");
%>

<table>
<tr>
  <th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Age</th><th>CGPA</th><th>Actions</th>
</tr>

<%
    while(rs.next()) {
%>
<tr>
  <td><%=rs.getInt("id")%></td>
  <td><%=rs.getString("name")%></td>
  <td><%=rs.getString("email")%></td>
  <td><%=rs.getString("course")%></td>
  <td><%=rs.getInt("age")%></td>
  <td><%=rs.getFloat("cgpa")%></td>
  <td class="actions">
    <a href="studentDetails.jsp?id=<%=rs.getInt("id")%>">Details</a>
    <a href="updateStudent.jsp?id=<%=rs.getInt("id")%>">Update</a>
    <a href="deleteStudent.jsp?id=<%=rs.getInt("id")%>">Delete</a>
  </td>
</tr>
<%
    }
    con.close();
} catch(Exception e) {
    out.println("<p style='color:red; text-align:center;'>Error: " + e.getMessage() + "</p>");
}
%>
</table>
</body>
</html>
