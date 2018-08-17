<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CssForNavBar.css">
<link rel="stylesheet" href="SideNavBar.css">
<link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
table {
    font-family: Sofia;
    border-collapse: collapse;
    width: 100%;
    left: 20%;
    top: 20%
}

td, th {
    border: 5px solid black;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color:#41f4c4 ;
}
tr:nth-child(odd) {
    background-color: #3c9b82;
}
</style>

<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<x:url value="./CssForNavBar.css"/>">
<link rel="stylesheet" type="text/css"
	href="<x:url value="./SideNavBar.css"/>">

<title>Select Add Ons</title>
</head>
<body style="text-align: center; background-image: url('https://media.istockphoto.com/photos/triangular-abstract-background-picture-id624878906?k=6&m=624878906&s=612x612&w=0&h=uDcbe038RdtiiHchahAbwOYfx0bkPVLfsn0NOjA0gTM='); 
 background-repeat: no-repeat;
    background-size: cover;">
<x:if test="${sessionScope.ein == null}">
   <script>alert("Please login to continue!!");
    location.href='Home.jsp';
    </script>
</x:if>
	<div id="navbar">
		<a href="./Logout">Logout</a> <a style="float: left"><span
			style="font-size: 25px; cursor: pointer" onclick="openNav()">&#9776;</span></a>

	</div>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="./EmployeeJsp.jsp">Home</a> <a href="./DisplayMenuController">Daily
			Menu</a> <a href="./MonthlyExpenseController">Monthy Expense</a> <a
			href="./AddOn.jsp">Choose Add Ons</a> <a href="./OptFood">Opt for
			food</a>
	</div>

	<div style="position:absolute;top: 5%;left:10%;width: 50%">
		<br><br><h1>Available Add Ons Stock :</h1>
		<h1>Select Your Add Ons</h1>
		
		<table>
			<tr>
				<th>Add On ID</th>
				<th>Add On Name</th>
				<th>Remaining Quantity</th>
				<th>Price per Unit</th>
				<x:forEach var="addOn" items="${addOn}">
					<tr>
						<td><x:out value="${addOn.addOnId }" /></td>
						<td><x:out value="${addOn.addOnName }" /></td>
						<td><x:out value="${addOn.addOnQuantity }" /></td>
						<td><x:out value="${addOn.addOnPrice }" /></td>
					</tr>
				</x:forEach>
		</table>
		</div>
		<div style="background-color:#f4bc42; width: 20%;top:40%;position: absolute;left: 70%">
		<p><b>After clicking add,money will get deducted from your account which is non-refundable!!</b></p>
		<form method="post" action="./AddOnAddController">
			Select Add on :<br> <select name="AddOnChoice">
				<x:forEach var="addOn" items="${addOn}">
					<option value="${addOn.addOnId}">${addOn.addOnName}</option>
				</x:forEach>
			</select> <br>Enter Quantity : <input type="text"
				name="quantity"><br><input type="submit"
				value="Add"  class="btn btn-success">
		</form>
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