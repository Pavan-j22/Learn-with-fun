<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Level2</title>
<style>


body{
 background:url("p1.jpg") ;
 background-repeat:no-repeat;
 background-size:cover;
}
.child-card1{
	width:300px;
	height:300px;
	box-shadow: 0px 0px 5px black;
	margin:30px auto;
	padding:5px;
	transform-style:preserve-3d;
	transition:all 0.5s ease;		
}
.child-card1:hover{
transform:rotateY(180deg);
}
.front1 img{
position:absolute;
width:300px;
height:300px;
background-radius:40%;
backface-visibility:hidden;
background:#ffc728;
color:#333;
}
.back1{
position:absolute;
width:300px;
height:300px;
background-radius:40%;
backface-visibility:hidden;
background:skyblue;
color:black;
font-size:50px;
text-align:center;
border-radius:10px;
transform:rotateY(180deg);
}
.child-card2{
	width:300px;
	height:300px;
	box-shadow: 0px 0px 5px black;
	margin:30px auto;
	padding:5px;
	transform-style:preserve-3d;
	transition:all 0.5s ease;		
}
.child-card2:hover{
transform:rotateY(180deg);
}
.front2 img{
position:absolute;
width:300px;
height:300px;
background-radius:40%;
backface-visibility:hidden;
background:#ffc728;
color:#333;
}
.back2{
position:absolute;
width:300px;
height:300px;
background-radius:40%;
backface-visibility:hidden;
background:skyblue;
color:black;
font-size:50px;
text-align:center;
border-radius:10px;
transform:rotateY(180deg);
}
.child-card3{
	width:300px;
	height:300px;
	box-shadow: 0px 0px 5px black;
	margin:30px auto;
	padding:5px;
	transform-style:preserve-3d;
	transition:all 0.5s ease;		
}
.child-card3:hover{
transform:rotateY(180deg);
}
.front3 img{
position:absolute;
width:300px;
height:300px;
background-radius:40%;
backface-visibility:hidden;
background:#ffc728;
color:#333;
}
.back3{
position:absolute;
width:300px;
height:300px;
background-radius:40%;
backface-visibility:hidden;
background:skyblue;
color:black;
font-size:50px;
text-align:center;
border-radius:10px;
transform:rotateY(180deg);
}
.child-card4{
	width:300px;
	height:300px;
	box-shadow: 0px 0px 5px black;
	margin:30px auto;
	padding:5px;
	transform-style:preserve-3d;
	transition:all 0.5s ease;		
}
.child-card4:hover{
transform:rotateY(180deg);
}
.front4 img{
position:absolute;
width:300px;
height:300px;
background-radius:40%;
backface-visibility:hidden;
background:#ffc728;
color:#333;
}
.back4{
position:absolute;
width:300px;
height:300px;
background-radius:40%;
backface-visibility:hidden;
background:skyblue;
color:black;
font-size:50px;
text-align:center;
border-radius:10px;
transform:rotateY(180deg);
}


.parent,.parent1, .parent2, .parent3, .parent4{
display:flex;
margin:20px;
}

.btn{
    background:green;
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
<div class="parent1">
<div class="child-card1">
<div class="front1"><img src="f1.jpg"></div>
<div class="back1">MANGO</div>
</div>
</div>
<div class="parent2">
<div class="child-card2">
<div class="front2"><img src="f4.jpg">t</div>
<div class="back2">ORANGE</div>
</div>
</div>
<div class="parent3">
<div class="child-card3">
<div class="front3"><img src="f2.png"></div>
<div class="back3">GRAPES</div>
</div>
</div>
<div class="parent4">
<div class="child-card4">
<div class="front4"><img src="f3.jpg"></div>
<div class="back4">APPLE</div>
</div>
</div>
</div>


</main>
<br></br>
<div>
<button class="btn"><a style="text-decoration:none; color:white" href="Result2.jsp">DONE</a></button>
</div>
</body>
</html>