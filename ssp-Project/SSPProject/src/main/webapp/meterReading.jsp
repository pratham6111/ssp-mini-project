<!DOCTYPE html>
<html>
<head>
    <title>Meter Reading</title>
    <style>
        /* Reset some default browser styles */
        body, ul {
            margin: 0;
            padding: 0;
        }
            
        body{
            background-image: url('https://images.unsplash.com/photo-1575781398633-0f766d94facd?auto=format&fit=crop&q=80&w=2073&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-repeat: no-repeat;
            background-size: 210vh 100vh;
        }

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

        /* Style for the page heading */
        h4, h1 {
            text-align: center;
        }

        /* Style for the form */
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f4f4f4;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        p.error {
            text-align: center;
            color: red;
            
        }
    </style>
</head>
<body>
<ul class="navbar">
    <li class="nav-item"><a href="welcome.jsp">Home</a></li>
    <li class="nav-item"><a href="#">My Profile</a></li>
    <li class="nav-item"><a href="meterReading.jsp">Calculate Bill</a></li>
    <li class="nav-item"><a href="#">Help</a></li>
    <li class="nav-item"><a href="login.jsp">Logout</a></li>
</ul>
<h4>Calculate your Bill !!</h4>
<h1>Enter Meter Reading</h1>
<form action="BillServlet" method="post">
    Previous Meter Reading: <input type="text" name="previousReading"><br><br>
    Current Meter Reading: <input type="text" name="currentReading"><br><br>
    Meter No: <input type="text" name="meter_no"><br><br>
    <input type="submit" value="Calculate Bill">
</form>
<b><p class="error">All fields are mandatory.</p></b>
</body>
</html>
