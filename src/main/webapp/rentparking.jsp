<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link href="style.css" rel="stylesheet" />
<body>
<div class="topnav" id="myTopnav">
  <a href="dashboard.jsp" class="active">Driveways </a>
  <a href="carid.jsp">Add Vehicle info</a>
  <a href="checkout.jsp">Add payment detail</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
	<h2>Find Parking<h2>
	<hr>
	<h3 id = "location"> Preferred Location: </h3>
	<h3 id = "time">Duration of Parking: </h3>
	<h3 id = "noOfSpots">Car Number </h3>
	<hr>
	<a href="dashboard.jsp"><button>Back</button></a>
	<br>
	
	<button onClick = "doSomething()"> Do Something </button>
		<p id = "test"> Hello </p>
	
	<script>
		function doSomething(){
			document.getElementById("test").innerHTML = "Goodbye";
		}
		
	</script>
</body>
<footer>
	<p>
	Special Thanks to our professor Mike Wu <br>
	last updated: 7/4/2022 <br>
	</p>
</footer>
</html>