<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Sorry Your Meter is not registered !!!</h2><a href="meterReading.jsp">Go back</a>
	<h3>Please register here:-</h3>
	<a href="register.jsp">Click Here To Register</a>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Meter Not Registered</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }

        h2 {
            color: #d9534f;
        }

        a {
            text-decoration: none;
            background-color: #5bc0de;
            color: #fff;
            padding: 5px 10px;
            border-radius: 5px;
        }

        a:hover {
            background-color: #31b0d5;
        }

        h3 {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>Sorry, Your Meter is not registered!</h2>
    <p><a href="meterReading.jsp">Go back</a></p>
    <h3>Please register here:</h3>
    <p><a href="register.jsp">Click Here To Register</a></p>
</body>
</html>
