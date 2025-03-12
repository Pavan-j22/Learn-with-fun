<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
<style>

body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background:url("p1.jpg") ;
            font-family: Arial, sans-serif;
        }
.btn{
    background: #0063ff;
    border: none;
    padding: 15px 40px;
    font-size: 30px;
    color: black;
    font-weight: bold;
    border-radius: 50px;
    box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.3);
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
    transition: all 0.2s ease-in-out;
    cursor: pointer;
    margin:20px;
}


.btn:active {
    transform: scale(0.95);
}

.btn1{
    background:#0063ff;
    border: none;
    padding: 15px 40px;
    font-size: 30px;
    color: black;
    font-weight: bold;
    border-radius: 50px;
    box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.3);
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
    transition: all 0.2s ease-in-out;
    cursor: pointer;
    margin:20px;
}


.btn1:active {
    transform: scale(0.95);
}
 
 .h1, .h2{
 font-family: Ardhelia;
 font-size:50px;
 font-weight:bold;
 color:#0063ff;
 position:relative;
 display:inline-block;
 }   
        
</style>
</head>
<body>
<div class="welcom-container">
<h1 class="h1">Welcome!</h1>
<h2 class="h2">Choose level and start learning..!</h2>
<div>
<button type="submit" class="btn"><a style="text-decoration:none; color:white" href="Level1.jsp">level 1</a></button>
</div>
<br></br>
<div>
<button type="submit" class="btn1"><a style="text-decoration:none;color:white" href="Level2.jsp">level 2</a></button>
</div>
<form action="logout" method="post"><button class="btn btn-danger logout ms-auto" style="background-color:red; color:white">Logout</button></form>
</div>
</body>
</html>