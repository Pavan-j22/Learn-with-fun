<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result 1</title>
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
 font-border:black 2px;
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
 font-family:Leoscar;
 font-size:20px;
 color:white;
 position:relative;
 display:inline-block;
 text-shadow:rgb(0 0 0);
 }
.btn{
    background:skyblue;
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
<h2 class="h2">Successfully completed Level 1</h2>
<h3 class="h3">Click here for next level</h3>
<div>
<br></br>
<button class="btn"><a style="text-decoration:none; color:white" href="Level2.jsp">level 2</a></button>
</div>
</div>
</div>
</main>
</body>
</html>