<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<x:url value="./CssForNavBar.css"/>">
<link rel="stylesheet" type="text/css"
	href="<x:url value="./SideNavBar.css"/>">
	<link href='https://fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Want to Opt Food</title>
</head>
<body style="text-align: center; background-image: url('https://images.cdn4.stockunlimited.net/preview1300/seamless-fast-food-pattern-background_1265398.jpg'); 
 background-repeat: no-repeat;
    background-size: cover;
    font-family: 'Berkshire Swash';font-size: 30px;">
<x:if test="${sessionScope.ein == null}">
   <script>alert("Please login to continue!!");
    location.href='Home.jsp';
    </script>
</x:if>

	<div id="navbar">
		<a href="./Logout">Logout</a> <a style="float: left">
		<span style="font-size: 25px; cursor: pointer" onclick="openNav()">&#9776;</span></a>

	</div>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="./EmployeeJsp.jsp">Home</a> <a href="./DisplayMenuController">Daily
			Menu</a> <a href="./MonthlyExpenseController">Monthy Expense</a> <a
			href="./AddOns">Choose Add Ons</a> <a href="./OptFood">Opt for
			food</a>
	</div>
	<div style="background-color:#f4bc42; width: 40%;position: absolute;top: 10%;left: 30%">
		<x:choose>
			
			<x:when
				test="${sessionScope.optStatus=='Already Subscribed for the food services' }">
				<x:out value="${sessionScope.optStatus}" />
				<a href="<x:url value="./AddOn.jsp"/>">Click here to choose your
					Add Ons</a>
			</x:when>
			
			<x:otherwise>
				<p>Today's Menu is :</p>
				<br>
			
				<x:out value="${sessionScope.menu}" />
				<br><br>
				<p>Do you want to opt for food??</p>
				

				<form method="post" action="./OptingFood">
					<input type="radio" value="Y" name="optingStatus">Yes
					 <input type="radio" value="N" name="optingStatus">No
					<br> <input type="submit" value="Submit" class="btn btn-success">
				</form>
			</x:otherwise>
		</x:choose>
		</div>
	</div>
	
	<script>
		window.onscroll = function() {
			myFunction()
		};

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
	
</body>
</html>