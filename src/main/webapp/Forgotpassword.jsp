<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ForgotPassword</title>
<style>
 body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background:url("p1.jpg") ;
            font-family: Arial, sans-serif;
        }
        .container {
            background: skyblue;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 320px;
            text-align: center;
        }
        h2 {
            color: #004A99;
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
            background: #007AFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background: #005BBB;
        }
        .login-link {
            margin-top: 10px;
            display: block;
            color: #004A99;
            text-decoration: none;
        }
</style>

</head>
<body>
<div class="container">
        <h2>ResetPassword</h2>
        
        <%String pinsuccess = (String) session.getAttribute("pinsuccess");
	        if (pinsuccess != null) { %>
	            <h3 class="message1"><%= pinsuccess %></h3>
	        <% } %>
	        
	        <% String pinfailure = (String) session.getAttribute("pinfailure");
	        if (pinfailure != null) { %>
	            <h3 class="message2"><%= pinfailure %></h3>
	        <% } %>
        
        <p>Please enter details to resetPin</p>
        <form action="pavan" method="post">
           
           <label for="email">Email</label>
                    <input type="email" class="form-control" id="mail" name="mail" required placeholder="Enter your email address">
                
            <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required placeholder="Enter your pin">
            <label for="confirmpassword">Confirm New Pin</label>
                    <input type="password" class="form-control" id="confirmpassword" name="confirmpassword" required placeholder="Confirm your new pin">
                
            <button type="submit" class="btn">ResetPin</button>
        </form>
         <p>Already have an account? <a href="Login.jsp">Login here</a></p>
    </div>
</body>
</html>