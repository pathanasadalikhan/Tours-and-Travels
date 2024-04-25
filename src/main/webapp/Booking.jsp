<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.BookingDetails"%>
<%@page import="Model.Registration"%>

<!DOCTYPE html>
<html>
 <head>
 	<title>TODO supply a title</title>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width">
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 </head>
 <style>
 	.errmsg{
 		background: green;
 		padding: 6px;
 		width: 50%;
 		color: white;
 		font-weight: bold;
 	}
 	.jumbotron{
 		background-color: white;
 	}
 	
 </style>
 <body style="background-image: url('Images/BackGroundImg1.jpg');">
 <%@include file="Header.jsp" %>
 	<center>
 	<br>
 	<font color="blue" >
 	<h1>Your Booking's </h2>
	 </font>
 		<% if (request.getAttribute("status") != null) {%>
 			<h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
 		<%}%>
 		<div class="container ">
 			<div class="jumbotron">
 				<table class="table">
 					<thead>
 						<tr style="background-color: lightblue;">
 						<br>
 							<th>Image</th>
 							<th>Person</th>
 							<th>phone</th>
 							<th>Package</th>
 							<th>Cost of Package</th>
 							<th>Date of Booking</th>
 							<th>Booked Date</th>
 							<th>Cancel</th>
 						</tr>
 					</thead>
 					<tbody id="table">
 							<%Registration reg = new Registration(session);
 							ArrayList<BookingDetails> mydata = reg.getUserBookings();
 							Iterator<BookingDetails> itr = mydata.iterator();
 							while (itr.hasNext()) {
 								BookingDetails s = itr.next();%>
 						<tr>
 							<td><img alt="image" src="<%=s.getImage()%>" style="height:100px;width: 100px;"></td>
 							<td><center><%=s.getName()%></center></td>
 							<td><%=s.getphone()%></td>
 							<td><%=s.getCost()%></td>
 							<td><%=s.getPackage()%></td>
 							<td><%=s.getDateOfBooking()%></td>
 							<td><%=s.getBookedDate()%></td>
 							<td>
 								<form action="delete" method="POST">
 									<input type="hidden" name="booking" value="<%=s.getslno()%>">
 									<%if(s.getbookdetails().equals("Cancled")) {%>
 									<input type="submit" class="btn btn-danger" disabled="disabled" value="<%=s.getbookdetails() %>">
 									<%}else{ %>
 									<input type="submit" class="btn btn-success" value="<%=s.getbookdetails() %>">
 									<%} %>
 								</form>
 							</td>
 						</tr> 
 						<%}%> 
 			</tbody>
 		</table>
 	</div>
 </div>
 </center>
 <%@include file="Footer.jsp"%>
</body>
</html>