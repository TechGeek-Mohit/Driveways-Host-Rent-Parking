<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>DashBoard</title>
	<link href="./style.css" rel="stylesheet" type="text/css" />
	<style><%@include file="./style.css"%></style>
</head>
<body>
<p>
<%
	//int addressId = res1.getInt("addressId");
	int addressId;
	addressId = Integer.parseInt(request.getParameter("id"));
	
	String num = request.getParameter("num");
	String streetName = request.getParameter("street");
	
	String city = request.getParameter("city");
	String zip = request.getParameter("zip");
	
	


 	try { 
		java.sql.Connection con; 
		Class.forName("com.mysql.jdbc.Driver"); 
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/driveway?autoReconnect=true&useSSL=false", "root", "Root123!");
		Statement stmt = con.createStatement();
		//ResultSet res1 = stmt.executeQuery("SELECT * FROM driveway.account WHERE email = '" + email + "';");
		request.setAttribute("NAME", session.getAttribute("sessname"));
		request.setAttribute("EMAIL", session.getAttribute("sessemail"));
		
String defaultSearch = "SELECT * FROM address;";
 		ResultSet res2 = null;
 		
 		request.setAttribute("NUMBER", num);
		request.setAttribute("STREET", streetName);
		request.setAttribute("CITY", city);
		request.setAttribute("ZIPCODE", zip);
		con.close(); 
		}catch(SQLException e) { 
			out.println("SQLException caught: " +e.getMessage()); 
		} 
%>
</p>

<div class="topnav" id="myTopnav">
  <a href="dashboard.jsp" class="active">Driveways </a>
  <a href="carid.jsp">Add Vehicle</a>
  <a href="hostparking.jsp">Add listing</a>
  <a href="checkout.jsp">Add payment method</a>
  <a href="myaccount.jsp">My Account</a>
  <a href="driveways.jsp" class ="signout">Sign out</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
	<h1>Confirm Booking</h1>
	<img src="images/Driveways.jpg" width="426" height="240" />
	
	<div class = "userDetail" id="myUserDetail">
	<h3 id = "username">Name: <%= request.getAttribute("NAME") %> </h3> 
	<h3 id = "email">Email: <%= request.getAttribute("EMAIL") %></h3>
	<h3 id = "number">Number: <%= request.getAttribute("NUMBER") %></h3>
	<h3 id = "street">Street: <%= request.getAttribute("STREET") %></h3>
	<h3 id = "city">City: <%= request.getAttribute("CITY") %></h3>
	<h3 id = "zipcode">ZipCode: <%= request.getAttribute("ZIPCODE") %></h3>
	</div>
	<a href="handleconfirmation.jsp?id=<%=addressId %>" ><button>Confirm Parking</button></a>
	
	
	
</body>
 <script>
      
</script>
<footer>
	<p>
	Developed By: Dat Lee, Micheal Moore, Mohit Sonwane
	Special Thanks to our professor Mike Wu <br>
	last updated: 9/8/2022 <br>
	</p>
</footer>
</html>
