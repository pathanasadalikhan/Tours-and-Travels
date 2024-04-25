<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.User"%>
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
 	#search
 	{
 		width: 50%; 
 	}
 </style>
 <body style="background-image: url('Images/BackGroundImg1.jpg');">
 	<%@include file="Header.jsp" %>
 	<center>
 	<br>
 	<font color="blue" size="4">
 	<h2> User's </h2>
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
 							<th>Slno</th>
 							<th>Name</th>
 							<th>Email</th>
 							<th>Phone</th>
 							<th>Delete</th>
 						</tr>
 					</thead>
 					<tbody id="table">
 					<%int t=(Integer)session.getAttribute("id");%>
 						<% if (session.getAttribute("id") != null && t==1) {
 							Registration reg = new Registration(session);
 							ArrayList<User> mydata = reg.getUserDetail();
 
 							Iterator<User> itr = mydata.iterator();
 							while (itr.hasNext()) {
 							User s = itr.next();
 						%>
 						<tr>
 							<td><%=s.getId()%></td>
 							<td><%=s.getfName()%></td>
 							<td><%=s.getemail()%></td>
 							<td><%=s.getphone()%></td>
 							<td>
 								<form action="deleteus" method="POST">
 									<input type="hidden" name="userid" value="<%=s.getId()%>">
 									<input type="submit" class="btn btn-danger" value="Delete" >
 								</form>
 </td>
 </tr> 
 <%}
 }%> 
 </tbody>
 </table>
 </div>
 </div>
 </center>
  <%@include file="Footer.jsp"%>
 
</body>
</html>