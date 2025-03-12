<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background:url("p1.jpg") ;
            background-repeat:no-repeat;
            background-size:cover;
            
        }
        .login-container {
            background: skyblue;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        h2 {
            color: #2f80ed;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn {
            width: 100%;
            padding: 10px;
            background: #2f80ed;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background: #1e5bbf;
        }
        .links {
            margin-top: 10px;
        }
        .links a {
            color: #2f80ed;
            text-decoration: none;
            display:flex;
            flex-direction:column;
        }
    </style>
</head>
<body>
<div class="login-container">
        <h2>Login</h2>
        
        <%String loginsuccess = (String) session.getAttribute("Users");
        if (loginsuccess != null) { %>
            <h3 class="message1"><%= loginsuccess %></h3>
        <% } %>
        <% String loginfailure = (String) session.getAttribute("loginfailure");
        if (loginfailure != null) { %>
            <h3 class="message2"><%= loginfailure %></h3>
        <% } %>
        
        <form action="login" method="post">
        <p>Please login to your account.</p>
         <label for="email">Email</label>
                    <input type="email" class="form-control" id="mail" name="mail" required placeholder="Enter your email address">
                
            
            <label for="password">Pin</label>
                    <input type="password" class="form-control" id="password" name="pin" required placeholder="Enter your pin">
                
        <button type="submit" class="btn">LOGIN</button>
        <br></br>
        <div class="links">
            <a href="Forgotpassword.jsp">Forgot Password?</a>
          <p>Don't have an account?<a href="Register.jsp">Register here</a></p>
        </div>
        </form>
    </div>
</body>
</html>