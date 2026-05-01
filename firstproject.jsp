<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <h1><%out.println("hi buddy"); %></h1>
   <p><%out.println(" Welcome to our gang!!"); %></p>
   
   
   <h2>Addition</h2>
   <form method="post">
   <input type="text" placeholder="Enter first number" name="first">
   <input type="text" placeholder="Enter second number" name="second">
   <input type="submit" value="Add numbers">
   </form>
   
       <%
        String val1 = request.getParameter("first");
        String val2 = request.getParameter("second");
        if (val1 != null && val2 != null && !val1.isEmpty() && !val2.isEmpty()) {
            int a = Integer.parseInt(val1);
            int b = Integer.parseInt(val2);
            int sum = a + b;
            out.println("<h3>Sum of two numbers = " + sum + "</h3>");
        }
    %>
    
     
</body>
</html>