<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result 2</title>
<style>

body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background:url("p1.jpg") ;
            font-family: Arial, sans-serif;
        }

 .child-card{
	width:400px;
	height:400px;
	box-shadow: 0px 0px 10px black;
	margin:20px auto;
	border-radius: 10px;
	padding:30px;
	text-align:center;
	background:skyblue;
}

 .h1{
 font-family: Ardhelia;
 font-size:40px;
 font-weight:bold;
 color:white;
 position:relative;
 display:inline-block;
 }   
 
 .h2{
 font-family: Ardhelia;
 font-size:30px;
 font-weight:bold;
 color:white;
 position:relative;
 display:inline-block;
 text-shadow:rgb(0 0 0) ;
 
 }    
 
 .h3{
 font-family:Ardhelia;
 font-size:20px;
 color:white;
 position:relative;
 display:inline-block;
 text-shadow:rgb(0 0 0);
 }
.btn{
    background:skyblue;
    border: none;
    padding: 10px ;
    font-size: 30px;
    color: black;
    font-weight: bold;
    border-radius: 30px;
    box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.3);
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
    transition: all 0.2s ease-in-out;
    cursor: pointer;
    margin:50px 50px 30px 40px;
    
}

.btn:active {
    transform: scale(0.95);
}


</style>
</head>
<body>
<main>
<div class="parent">
<div class="child-card">
<h1 class="h1">Congratulations..!</h1>
<h2 class="h2">Successfully completed Level 2</h2>
<h3 class="h3">THANK YOU..!</h3>
<br></br>
<div class="btn"><a style="text-decoration:none; color:white" href="Welcome.jsp">BACK</a></div>
</div>
</div>
</main>
</body>
</html>