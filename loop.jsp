<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%! int i=1; %>
 <html>
 <head>
 <title>abc</title>
 </head>
 <% while (i<=3) { %>
 <font color="red" size= "<%= i %>">
 Welcome to loop
 </font><br>
 <% i++; %>
 <%}%>
 </body>
 </html> 
 
 