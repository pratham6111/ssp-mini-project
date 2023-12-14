<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
</head>
<style>
        /* Basic styles for the navigation bar */
        ul.navbar {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #333;
            overflow: hidden;
        }

        li.nav-item {
            float: left;
        }

        li.nav-item a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li.nav-item a:hover {
            background-color: #555;
        }

        /* Style for the navigation bar items */
        li.nav-item:hover {
            background-color: #555;
        }

        /* Center the text in the navigation bar items */
        li.nav-item a {
            display: block;
            text-align: center;
        }
        p{
        	color:red;
        }
    </style>
<body>
<ul class="navbar">
        <li class="nav-item"><a href="welcome.jsp">Home</a></li>
        <li class="nav-item"><a href="#">My Profile</a></li>
        <li class="nav-item"><a href="meterReading.jsp">Calculate Bill</a></li>
        <li class="nav-item"><a href="#">Help</a></li>
        <li class="nav-item"><a href="login.jsp">Logout</a></li>
    </ul>
<p>Welcome, <%= request.getAttribute("username") %>!</p>
<center><h2>Electricity Bill Gernarator !!!</h2></center>

</body>
</html> --%>








<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
</head>
<style>
        /* Basic styles for the navigation bar */
        
        ul.navbar {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #333;
            overflow: hidden;
        }

        li.nav-item {
            float: left;
        }

        li.nav-item a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li.nav-item a:hover {
            background-color: #555;
        }

        /* Style for the navigation bar items */
        li.nav-item:hover {
            background-color: #555;
        }

        /* Center the text in the navigation bar items */
        li.nav-item a {
            display: block;
            text-align: center;
        }
        h4{
        	color:red;
        }
        p{
            padding: 150%;
            background-repeat: no-repeat;
            margin-left: 20%;
            margin-top: 3%;
        
        }
    </style>
<body>
<ul class="navbar">
        <li class="nav-item"><a href="welcome.jsp">Home</a></li>
        <li class="nav-item"><a href="#">My Profile</a></li>
        <li class="nav-item"><a href="meterReading.jsp">Calculate Bill</a></li>
        <li class="nav-item"><a href="#">Help</a></li>
        <li class="nav-item"><a href="login.jsp">Logout</a></li>
    </ul>
<h4>Welcome, <%= request.getAttribute("username") %>!</h4>
<center><h2>Electricity Bill Generator !!!</h2></center>
<p style="background-image: url('https://img.freepik.com/free-photo/glowing-electric-light-igniting-filament-inspiring-creativity-generated-by-ai_188544-15736.jpg')"></p>

</body>
</html>