<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="<x:url value="./CssForNavBar.css"/>">
<link rel="stylesheet" type="text/css" href="<x:url value="./SideNavBar.css"/>">
 <link href='https://fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
<title>Cafeteria</title>
</head>
<body  style="text-align: center; background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/1200px-Good_Food_Display_-_NCI_Visuals_Online.jpg'); 
 background-repeat: no-repeat;
    background-size: cover;
    font-family: 'Berkshire Swash';font-size: 30px;">

<div id="navbar">
  
  <a href="./Logout">Logout</a>
  <a style="float:left"><span style="font-size:25px;cursor:pointer" onclick="openNav()">&#9776;</span></a> 
  
</div>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="./DisplayMenuController">Daily Menu</a>
  <a href="./MonthlyExpenseController">Monthly Expense</a>
  <a href="./AddOns">Choose Add Ons</a>
  <a href="./OptFood">Opt for food</a>
</div>
<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
    document.body.style.backgroundColor = "white";
}

</script>
<div  style="background-image: url('https://media.istockphoto.com/photos/triangular-abstract-background-picture-id624878906?k=6&m=624878906&s=612x612&w=0&h=uDcbe038RdtiiHchahAbwOYfx0bkPVLfsn0NOjA0gTM='); 
 background-repeat: no-repeat;
    background-size: cover;position: absolute;top: 35%;left:3%">
<h1><i>Welcome To Our Cafeteria Management System!!!</i></h1>
<h2><b><i> To Eat is Human and to Eat Well is DIVINE.</i></b></h2>
</div>
</body>
</html>