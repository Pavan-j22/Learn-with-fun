<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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
        <h2>Register</h2>
        
        <%String success=(String)session.getAttribute("success");
        	if(success!=null){%>
        	<h3 class="message1"><%=success %></h3>
        <% } %>
        <%String failure=(String)session.getAttribute("failure");
        	if(failure!=null){%>
        	<h3 class="message2"><%=failure %></h3>
        <% } %>
        
        <p>Please enter details to register</p>
        <form action="register" method="post">
            <label for="name">Full Name</label>
                    <input type="text" class="form-control" id="name" name="name" required placeholder="Enter your full name">
                
           <label for="email">Email</label>
                    <input type="email" class="form-control" id="mail" name="mail" required placeholder="Enter your email address">
                
            <label for="phone">Phone Number</label>
                    <input type="tel" class="form-control" id="phone" name="phone" required placeholder="Enter your phone number">
                
            <label for="password">Pin</label>
                    <input type="password" class="form-control" id="pin" name="password" required placeholder="Enter your pin">
                
            <button type="submit" class="btn">REGISTER</button>
        </form>
         <p>Already have an account? <a href="Login.jsp" style=" text-decoration: none;color: #2f80ed;">Login here</a></p>
    </div>
</body>
</html>