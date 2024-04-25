<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.EventPackage"%>
<%@page import="Model.Registration"%>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <title>Hello, world!</title>
  <style>
    #parent {
      height: fit-content;
    }

    #one {
      height: 700px;
      width: 100%;
    }

    #imgparent {
      margin: 20px 40px 20px 40px;
      background-color:white;
      height: fit-content;
      padding: 20px;
    }
    #imgone{
      height: 500px;
    }
    
  </style>
</head>

<body>
  <center>
    <!-- from session -->
    <div style="display: flex;">
    <% %>
      <!-- add home page reference at href -->
<a class="navbar-brand btn-outline-success pr-2 pl-2" href="HomePage.jsp">
    	<img src="Images/home-solid-24.png" width="40" height="30" alt=""></a>
      <div style="margin-left: 30%;"><h2><%= session.getAttribute("event") %> package</h2></div>
      <div  style="margin-left: 31%; margin-top: 5px;"><button type="button" class="btn btn-outline-success ml-sm-2" data-toggle="modal" data-target="#exampleModals">
        Book Now
      </button></div><!-- Modal -->
      <form action="booknow" method="post" >
    <div class="modal fade" id="exampleModals" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <center>
              <h4 class="modal-title" id="exampleModalLabel">BOOK YOUR DREAM DESTINATION</h4>
            </center><br>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <h5>Get in touch with us<span style="color: red;"><small> one step away to book</small></span></h5>
          <hr>
          <div class="modal-body">
            <div class="row">
              <div class="col">
                <label for="exampleInputEmail1">NAME<span style="color: red;">*</span></label>
                <input type="text" class="form-control" name="name" required placeholder="Enter your name">
              </div>
              <div class="col">
                <label for="exampleInputEmail1">PHONE<span style="color: red;">*</span></label>
                <input type="text" class="form-control" name="phone" required placeholder="Enter your Phone Number">
              </div>
            </div>
            <div class="row">
              <div class="col">
                <label for="exampleInputEmail1">Your Package<span style="color: red;">*</span></label>
                <input type="text" class="form-control" value="<%= session.getAttribute("event")%>" disabled="disabled">
              </div>
            </div>
            <div class="row">
              <div class="col">
                <label for="exampleInputEmail1">Cost of <%=session.getAttribute("event")%> Package<span style="color: red;">*</span></label>
                <input type="number" class="form-control" value="<%=session.getAttribute("cost")%>" disabled="disabled">
              </div>
            </div>
            <div class="row">
              <div class="col">
                <label for="exampleInputEmail1">Email<span style="color: red;">*</span></label>
                <input type="text" class="form-control" required name="email" value="<%=session.getAttribute("email")%>" disabled="disabled">
              </div>
            </div>
            <div class="row">
                <div class="col-6">
                  <label>Book Your Date<span style="color: red;">*</span></label>
                  <input type="date" name="date" class="form-control" required >
                </div>
              </div>
          </div>
          <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1" required="required">
            <label class="form-check-label" for="exampleCheck1" >Check me out</label>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" name="booknow" value="BookNow" class="btn btn-primary">Book Now</button>
          </div>
        </div>
      </div>
    </div>
    </form>

    </div>
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
 			<%Registration reg = new Registration(session);
            	//	System.out.println("inside the event.jsp");
            	String event=(String)session.getAttribute("event");
            	//System.out.println("event value is :"+event);
 				ArrayList<EventPackage> mydata = reg.booking(event);
 				Iterator<EventPackage> itr = mydata.iterator();
				while (itr.hasNext()) {
 					EventPackage e = itr.next();
 					int slno=e.getSlno();
 					if(slno==1){%>
          				<div class="carousel-item active">
          					<img src="<%=e.gethimage() %>" class="d-block w-100" alt="..." id="one">
        				</div>
        			<%}else if(slno<=3){ %>
        				<div class="carousel-item">
          					<img src="<%=e.gethimage() %>" class="d-block w-100" alt="..." id="one">
        				</div>
        			<%}else{ %>
        			
      </div>
<div>
<center><h1><%= e.gettrname() %></h1></center>
    <div class="card mb-3" style="max-width: 90%;">
      <div class="row no-gutters">
        <div class="col-md-6">
          <img src="Images/<%=e.gethimage()%>" alt="images" style="width: 100%; height: 410px;">
        </div>
        <div class="col-md-6">
          <div class="card-body">
            <h5 class="card-title">Total Amount :<b><%=session.getAttribute("cost")%></b></h5>
            <p class="card-text"><%=e.getcontent()%></p>
          </div>
        </div>
      </div>
    </div>
  </div>
<%} 
    }%>
    <!-- include footer here -->
    <%@include file="Footer.jsp" %>
  </center>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>
    
</body>

</html>