<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Add Student</title>
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
        form {
            width: 400px;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        input[type="submit"]:hover {
            background: #0056b3;
        }
        .message {
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
<h1>Add Student</h1>

<form action="addstudent.jsp" method="post">
  <label>Name:</label>
  <input type="text" name="name"/>

  <label>Email:</label>
  <input type="text" name="email"/>

  <label>Course:</label>
  <input type="text" name="course"/>

  <label>Age:</label>
  <input type="number" name="age"/>

  <label>CGPA:</label>
  <input type="text" name="cgpa"/>

  <input type="submit" value="Add Student"/>
</form>

<%
if(request.getParameter("name") != null) {
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String course = request.getParameter("course");
    int age = Integer.parseInt(request.getParameter("age"));
    float cgpa = Float.parseFloat(request.getParameter("cgpa"));

    try {
        // PostgreSQL driver
        Class.forName("org.postgresql.Driver");

        // PostgreSQL connection
        Connection con = DriverManager.getConnection(
            "jdbc:postgresql://192.168.1.17/cse_db24", "24bcsi52", "24bcsi52");

        PreparedStatement ps = con.prepareStatement(
            "INSERT INTO students_info(name,email,course,age,cgpa) VALUES(?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, course);
        ps.setInt(4, age);
        ps.setFloat(5, cgpa);
        ps.executeUpdate();

        out.println("<div class='message' style='color:green;'>Student added successfully!</div>");
        con.close();
    } catch(Exception e) {
        out.println("<div class='message' style='color:red;'>Error: " + e.getMessage() + "</div>");
    }
}
%>
</body>
</html>