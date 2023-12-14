<%-- 
 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Database</title>
</head>
<style>
	td{
		text-align:center;
	}
</style>
<body>
    <h1>Your Bill is generated successfully!!!</h1>
    <sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver" 
    url="jdbc:mysql://localhost:3306/project" user="root" password="PYM@123$" />

    <sql:query var="result" dataSource="${dataSource}">
    select * from meter_readings order by id desc limit 1;
    </sql:query>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Previous Reading</th>
            <th>Current Reading</th>
            <th>Units Consumed</th>
            <th>Rate per Unit</th>
            <th>Bill Amount</th>
            <th>Meter No</th>
        </tr>

        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}" /></td>
                <td><c:out value="${row.previous_reading}" /></td>
                <td><c:out value="${row.current_reading}" /></td>
                <td><c:out value="${row.units_consumed}" /></td>
                <td><c:out value="${row.rate_per_unit}" /></td>
                <td><c:out value="${row.bill_amount}" /></td>
                <td><c:out value="${row.meter_no}" /></td>
                
            </tr>
        </c:forEach>
    </table>
</body>
</html>
 --%>
 
 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Database</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #e2e2e2;
        }
    </style>
</head>
<body>
    <h1>Your Bill is generated successfully!!!</h1>
    <sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver" 
        url="jdbc:mysql://localhost:3306/project" user="root" password="PYM@123$" />

    <sql:query var="result" dataSource="${dataSource}">
        select * from meter_readings order by id desc limit 1;
    </sql:query>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Previous Reading</th>
            <th>Current Reading</th>
            <th>Units Consumed</th>
            <th>Rate per Unit</th>
            <th>Bill Amount</th>
            <th>Meter No</th>
        </tr>

        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}" /></td>
                <td><c:out value="${row.previous_reading}" /></td>
                <td><c:out value="${row.current_reading}" /></td>
                <td><c:out value="${row.units_consumed}" /></td>
                <td><c:out value="${row.rate_per_unit}" /></td>
                <td><c:out value="${row.bill_amount}" /></td>
                <td><c:out value="${row.meter_no}" /></td>
            </tr>
        </c:forEach>
    </table>
    <center>
    <h4>Thank You !!</h4>
    <a href="meterReading.jsp">Regenerate again ? </a>
    </center>
</body>
</html>
 
  
  
 