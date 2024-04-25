<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.User"%>
<%@page import="Model.Registration"%>
<!DOCTYPE html>
<html>
    <head>
        <meta  charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
    </head>
    <style>
        td input{
            display:block;
        }
        .jumbotron{
            background-color: white;
        }
    </style>
    <body style="background-image: url('Images/BackGroundImg1.jpg');">
        <%-- <%@include file="Header.jsp"%> --%>
        <%@include file="Header.jsp" %>
    <center>
        <% if (session.getAttribute("fname") != null) {
        	Registration reg=new Registration(session);
                User s=reg.getInfo();%>
        <font color="blue" size="5"><br>
        <h2> Edit Profile</h2>
        </font>
        <form action='login' method='POST'>
            <div class="container ">
                <div class="jumbotron">
                    <div class="form-group col-md-4">
                        <label >Fist Name</label>
                        <input type="text" class="form-control"  name="fname" value="<%=s.getfName()%>">
                    </div>
                    <div class="form-group col-md-4">
                        <label >Last Name</label>
                        <input type="text" class="form-control"  name="lname" value="<%=s.getlName()%>">
                    </div>
                    <div class="form-group col-md-4">
                        <label >Phone Number</label>
                        <input type="number" class="form-control"  name="phone" value="<%=s.getphone()%>">
                    </div>
                    <div class="form-group col-md-4">
                        <label >Email</label>
                        <input type="email" class="form-control"  name="email" value="<%=s.getemail()%>">
                    </div>
                    <button type="submit" class="btn btn-primary" name="update" value="Update">Update</button>
                </div>
            </div>
        </form>
        <%}%> 
    </center>
    <%@include file="Footer.jsp"%>
</body>
</html>
