<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! int day=3; %>
<html>
<head>
<title>abc</title>
</head>
<body>
<%
switch(day)
{
case 1:
out.println("the day is sunday");
break;
case 2:
out.println("the day is monday");
break;
case 3:
out.println("the day is tuesday");
break;
case 4: 
out.println("the day is wednesday");
break;
case 5:
out.println("the day is thursday");
break;
case 6:
out.println("the day is friday");
break;
case 7:
out.println("the day is saturday");
break;
default:
out.println("wrong choice");
}
%>
</body>
</html> 