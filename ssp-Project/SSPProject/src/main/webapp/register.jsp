<!-- <!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
    <h1>User Registration</h1>
    <form action="RegisterServlet" method="post">
   
        Username: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        meter No: <input type="text" name="meter_no"><br>
        <input type="submit" value="Register">
    </form>
</body>
</html> -->



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image:url('https://t3.ftcdn.net/jpg/02/99/23/72/360_F_299237262_Cj3wYz3HK7Aak1qNW4biP268qL1wphOr.jpg') ;
    		background-repeat: no-repeat;
   			background-size: cover;
        }

        .login-container {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .login-container h2 {
            margin: 0 0 20px;
            color: #333;
        }

        .line-input {
            position: relative;
            margin-bottom: 20px;
        }

        .line-input input {
            width: 100%;
            padding: 10px;
            border: none;
            border-bottom: 1px solid #333;
            outline: none;
        }

        .line-input input:focus {
            border-bottom: 2px solid #007BFF;
        }

        .line-input label {
            position: absolute;
            left: 0;
            bottom: 8px;
            color: #333;
            transition: 0.2s;
        }

        .line-input input:focus + label,
        .line-input input:valid + label {
            bottom: 28px;
            font-size: 12px;
            color: #007BFF;
        }

        .submit-btn {
            background: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Register</h2>
         <form action="RegisterServlet" method="post">
            <div class="line-input">
                <input type="text" required name="username">
                <label>Username</label>
            </div>
            <div class="line-input">
                <input type="password" required name="password">
                <label>Password</label>
            </div>
            <div class="line-input">
                <input type="text" required name="meter_no">
                <label>Meter No</label>
            </div>
            <button type="submit" class="submit-btn">Register</button><br><br>
            
            <a href="login.jsp">Already have an account ?</a>
        </form>
       
    </div>
</body>
</html>
 
 