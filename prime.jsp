<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form>Enter the number: <input type="number" name="num"><input type="submit"></form>
<%
    String val=request.getParameter("num");
    if(val!=null)
    {
        int n= Integer.parseInt(val);
        boolean isPrime=(n>1);
        for(int i=2;i<=Math.sqrt(n);i++)
        {
            if(n%i==0) { 
            	isPrime=false; 
            	break;
            }
        }
        out.println("<h3>Result: "+ n + (isPrime ?" is Prime" : "is not Prime") + "</h3>");
    }
%>