<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>BMR CALCULTOR</title>
</head>
<body>
<form method="post">
    Age: <input type="text" name="age"><br>
    Gender: 
    <input type="radio" name="gender" value="Male">Male
    <input type="radio" name="gender" value="Female">Female<br>
    Height (cm): <input type="text" name="height"><br>
    Weight (kg): <input type="text" name="weight"><br>
    <input type="submit" value="Calculate">
</form>

<%
    String ageStr = request.getParameter("age");
    String gender = request.getParameter("gender");
    String hStr = request.getParameter("height");
    String wStr = request.getParameter("weight");

    if(ageStr!=null && gender!=null){
        int age = Integer.parseInt(ageStr);
        double h = Double.parseDouble(hStr);
        double w = Double.parseDouble(wStr);
        double bmr = (10*w) + (6.25*h) - (5*age);
        if(gender.equals("Male")) bmr += 5;
        else bmr -= 161;
        out.println("Your BMR is: " + bmr + " Calories/day");
    }
%>
</body>
</html>
    