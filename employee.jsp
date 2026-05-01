<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Employee Display</title>
</head>
<body>
<h2>Employee Details</h2>
<p>ID: <%= request.getParameter("empId") %></p>
<p>Name: <%= request.getParameter("name") %></p>
<p>Mobile: <%= request.getParameter("mobile") %></p>
<p>Email: <%= request.getParameter("email") %></p>
<p>Gender: <%= request.getParameter("gender") %></p>
<p>DOB: <%= request.getParameter("dob") %></p>
<p>Address: <%= request.getParameter("address") %></p>
<p>Country: <%= request.getParameter("country") %></p>
</body>
</html>