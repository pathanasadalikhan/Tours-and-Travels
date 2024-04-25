<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Review"%>
<%@page import="Model.Registration"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
     -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Hello, world!</title>
    <style>
    #over{
    	height:500px;
    	overflow-y: scroll;
    }
    #bus{
    	height: 400px;
    	width:100%;
    }
    #siz{
    	height: 300px;
    	width:100%;
    }
    

        #ftt {
            height: 700px;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#suggest">Suggestions</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#review">Reviews</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="EditDetails.jsp">Edit Details</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Booking.jsp">Your Bookings</a>
          </li>
          <!-- <% System.out.println("session get method value :"+session.getAttribute("id"));%>
        		 <%int t=(Integer)session.getAttribute("id");
        		 System.out.println("the value of t :"+t);
              if (t==1) {%> -->
                <li class="nav-item">
                  <a class="nav-link" href="Suggestion.jsp">Read Suggestion</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="DeleteUser.jsp">Users</a>
                </li>
                <!-- <%}%> -->
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        <form class="form-inline mx-1" method="post" action="login">
          <button class="btn btn-outline-success" type="submit"><a href="login?logout=yes"  class="text-decoration-none text-success">Logout</a></button>
        </form>
      </div>
    </div>
  </nav>

  <!-- alert bar for the project -->

  <!-- <div class="alert alert-warning alert-dismissible fade show" role="alert">
    <strong>Holy guacamole!</strong> You should check in on some of those fields below.
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div> -->
  <%if(request.getAttribute("status")!=null){%> 
    <div class="alert alert-secondary alert-dismissible fade show" role="alert">
    <strong>hai
      <!-- <h4> <%= request.getAttribute("status")%></h4> 
    </strong>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
   <%}%> 
  <div class="alert alert-secondary alert-dismissible fade show" role="alert">
    <strong>Make Your Trip More Beautiful With Make My trip </strong><span class="badge badge-success text-bg-success">New</span>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<!-- carousel to be added to the project -->
<div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="5" aria-label="Slide 6"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Images/Hollyday.jpg" class="d-block w-100" alt="..." id="ftt">
      <div class="carousel-caption d-none d-md-block">
        <h3 style="color: black">Book Your Summer Package Now</h3>
        <p style="color: black">Get 10% discount on Summer Package</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Images/Hollyday1.jpg" class="d-block w-100" alt="..." id="ftt">
      <div class="carousel-caption d-none d-md-block">
        <h3>Get Experience of Trekking</h3>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Images/Hollyday2.jpg" class="d-block w-100" alt="..." id="ftt">
      <div class="carousel-caption d-none d-md-block">
        <h3>Make Dubai's Star Attraction</h3>
        <p>The Milky Way is nothing else but a mass of innumerable stars planted together in clusters.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Images/Hollyday3.jpg" class="d-block w-100" alt="..." id="ftt">
      <div class="carousel-caption d-none d-md-block">
        <h2>Get HoneyMoon Package</h2>
        <p><del><abbr title="₹ 4,14,450">$5000</abbr></del> Now Get it by Just <abbr title="₹ 2,90,130">$3500</abbr></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Images/Hollyday4.jpg" class="d-block w-100" alt="..." id="ftt">
      <div class="carousel-caption d-none d-md-block">
        <h5>Enjoy Under The See View</h5>
        <p>Our Certified Trainers will help you to make your trip more beautiful.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Images/Hollyday5.jpg" class="d-block w-100" alt="..." id="ftt">
      <div class="carousel-caption d-none d-md-block">
        <h5>Indian Best Selling Destinations</h5>
        <p>Get Ready to See India...</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

  <h1 class="text-center fst-italic fs-1 fw-bold">Nature View</h1>
  <div class="container-fluid">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 d-flex align-items-center justify-content-center">
      <div class="card m-1 col-sm-12" style="width: 17rem;">
        <img src="Images/Hollyday.jpg" class="w-100" alt="...">
        <div class="card-body">
          <h5 class="card-title">Summer Holiday Package</h5>
          <p class="card-text">Good vibes happen on the tides...</p>
          <p class="card-text"><span style="color: green ">Get 10% discount on Summer Package</span></p>
          <form action="login" method="POST">
            <input type="hidden" name="event" value="Summer">
            <input type="submit" class="btn btn-success" value="Book Now">
          </form>
        </div>
      </div>
      <div class="card m-1 col-sm-12 col-md-5" style="width: 17rem;">
        <img src="Images/Hollyday2.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">International Package</h5>
          <p class="card-text">Life is like riding a bicycle. To keep your balance, you must keep moving.</p>
          <p class="card-text"></p>
          <form action="login" method="POST">
            <input type="hidden" name="event" value="International">
            <input type="submit" class="btn btn-success" value="Book Now">
          </form>
        </div>
      </div>
      <div class="card m-1 col-sm-12 col-md-5" style="width: 17rem;">
        <img src="Images/Hollyday3.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Get HoneyMoon Package</h5>
          <p class="card-text"><del><abbr title="₹ 4,14,450">$5000</abbr></del> Now Get it by Just <abbr
              title="₹ 2,90,130">$3500</abbr></p>
          <form action="login" method="POST">
            <input type="hidden" name="event" value="honeymoon">
            <input type="submit" class="btn btn-success" value="Book Now">
          </form>
        </div>
      </div>
      <div class="card m-1 col-sm-12 col-md-5" style="width: 17rem;">
        <img src="Images/Hollyday4.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Under Water World</h5>
          <p class="card-text">"Our Certified Trainers will help you to make your trip more beautiful."</p>
          <form action="login" method="POST">
            <input type="hidden" name="event" value="UnderWater">
            <input type="submit" class="btn btn-success" value="Book Now">
          </form>
        </div>
      </div>
      <div class="card m-1 col-sm-12 col-md-5" style="width: 17rem;">
        <img src="Images/Hollyday1.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Get Experience of wild life Trekking</h5>
          <p class="card-text">The clearest way into the Universe is through a forest wilderness.</p>
          <form action="login" method="POST">
            <input type="hidden" name="event" value="Trekking">
            <input type="submit" class="btn btn-success" value="Book Now">
          </form>
        </div>
      </div> 
    </div>
  </div>
  <h1 class="text-center fst-italic fs-1 fw-bold">Indian Foods</h1>
  <div class="container">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 d-flex align-items-center justify-content-center">
      <div class="col col-md-6 col-sm-12">
        <div class="card mb-3" style="max-width: 540px;">
          <div class="row g-0">
            <div class="col-md-4">
              <img src="Images/HyderabadiBiryani.jpg" class="img-fluid rounded-start" alt="..." id="siz">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Hyderabadi Dum Biryani</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col col-md-6 col-sm-12">
        <div class="card mb-3" style="max-width: 540px;">
          <div class="row g-0">
            <div class="col-md-4">
              <img src="Images/MuglaiChicken.jpg" class="img-fluid rounded-start" alt="..." id="siz">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Muglai Chicken</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 d-flex align-items-center justify-content-center">
      <div class="col col-md-6 col-sm-12">
        <div class="card mb-3" style="max-width: 540px;">
          <div class="row g-0">
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Grill Chicken</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
              </div>
            </div>
            <div class="col-md-4">
              <img src="Images/GrillChicken.jpg" class="img-fluid rounded-end" alt="..." id="siz">
            </div>
          </div>
        </div>
      </div>
      <div class="col col-md-6 col-sm-12">
        <div class="card mb-3" style="max-width: 540px;">
          <div class="row g-0">
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Explore the Taste of Pure Veg</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
              </div>
            </div>
            <div class="col-md-4">
              <img src="Images/Pugeveg.jpg" class="img-fluid rounded-end" alt="..." id="siz">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>




  
  <div class="container border">
    <h1 class="text-center fst-italic fs-1 fw-bold text-success">About Us</h1>
    <div class="row m d-flex">
      <div class="m-2 col-sm-12 col-md-5">
        <img src="Images/Team1.jpg" class="image-fluid w-100 rounded-end-5">
      </div>
      <div class="col-sm-12 col-md-6">
        <h3 class="text-center fst-italic fs-2 fw-bold">Our Company</h3>
        <p>Jamsetji Nusserwanji Tata, founder of the Tata Group, opened the Taj Mahal Palace, a
          hotel in
          Mumbai
          (formerly called Bombay) overlooking the Arabian Sea, on 16 December 1903. It was the first Taj
          property and
          the first
          Taj hotel. There are several anecdotal stories about why Tata opened the Taj hotel. According to
          a story, he
          decided to
          open the hotel after an incident involving racial discrimination at the Watson's Hotel in
          Mumbai, where he
          was
          refused
          entry as the hotel permitted only Europeans.[9] Hotels that accepted only European guests were
          very common
          across
          British India then. According to another story, he opened the hotel when one of his friends
          expressed
          disgust
          over
          the hotels that were present in Bombay then. But a more plausible reason was advanced by Lovat
          Fraser, a
          close
          friend
          of the Tata and one of the early directors of the IHCL group, that the idea had long been in his
          mind and
          that</p>
      </div>
    </div>
    <div class="row m d-flex">
      <div class="col-sm-12 col-md-6">
        <h3 class="text-center fst-italic fs-2 fw-bold">Our Team</h3>
        <p>Jamsetji Nusserwanji Tata, founder of the Tata Group, opened the Taj Mahal Palace, a
          hotel in
          Mumbai
          (formerly called Bombay) overlooking the Arabian Sea, on 16 December 1903. It was the first Taj
          property and
          the first
          Taj hotel. There are several anecdotal stories about why Tata opened the Taj hotel. According to
          a story, he
          decided to
          open the hotel after an incident involving racial discrimination at the Watson's Hotel in
          Mumbai, where he
          was
          refused
          entry as the hotel permitted only Europeans.[9] Hotels that accepted only European guests were
          very common
          across
          British India then. According to another story, he opened the hotel when one of his friends
          expressed
          disgust
          over
          the hotels that were present in Bombay then. But a more plausible reason was advanced by Lovat
          Fraser, a
          close
          friend
          of the Tata and one of the early directors of the IHCL group, that the idea had long been in his
          mind and
          that</p>
      </div>
      <div class="m-2 col-sm-12 col-md-5">
        <img src="Images/Team1.jpg" class="image-fluid w-100 rounded-start-5">
      </div>
    </div>
  </div>
  <h1 class="align-items-center justify-content-center text-danger fst-italic text-center">Our Business</h1>
  <div class="container">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 d-flex align-items-center justify-content-center">
      <div class="col col-md-6 col-sm-12 mb-2">
        <div class="card">
        <img src="Images/Resort.jpg" class="card-img-top" alt="..." id="bus">
        <div class="card-body">
          <h5 class="card-title">Re-sorts</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div></div>
      <div class="col col-md-6 col-sm-12 mb-2">
        <div class="card" >
          <img src="Images/g3.jpg" class="card-img-top" alt="..." id="bus">
          <div class="card-body">
            <h5 class="card-title">Hotel's</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 d-flex align-items-center justify-content-center">
      <div class="col col-md-6 col-sm-12 mb-2">
        <div class="card">
        <img src="Images/GrillChicken.jpg" class="card-img-top" alt="..." id="bus">
        <div class="card-body">
          <h5 class="card-title">Food Items</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
      </div></div>
      <div class="col col-md-6 col-sm-12 mb-2">
        <div class="card" >
          <img src="Images/Bus.jpg" class="card-img-top" alt="..." id="bus">
          <div class="card-body">
            <h5 class="card-title">Bus's</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="container border fw-bold">
    <h1 class="align-items-center justify-content-center text-success fst-italic text-center">Give Your Suggestion's</h1>
    <form class="mt-5 ml-5 mr-5" method="post" action="login">
    <div class="mb-3">
      <label for="exampleFormControlInput1" class="form-label">Email address</label>
      <input type="email" class="form-control"  name="suggemail" class="form-control"  id="exampleFormControlInput1" placeholder="name@example.com">
    </div>
    <div class="mb-3">
      <label for="exampleFormControlTextarea1" class="form-label">Write Your Suggestion here</label>
      <textarea class="form-control" name="sugg" id="exampleFormControlTextarea1" rows="3"></textarea>
    </div>
    <div class="mb-3">
      <button type="submit" name="suggest" value="Suggestion" class="btn btn-primary">Post</button>
    </div>
    </form>
  </div>
  <h1 class="align-items-center justify-content-center text-success fst-italic text-center">Reviews</h1>
  <div class="container border rounded mb-3">
    <div class="row" style="height: 500px;">
      <div class="col col-md-7 col-sm-12 border" id="over">
      <div class="row-cols-1">
      <div class="card" style="width: 100%;">
        <%Registration reg=new Registration(session); %>
          <%ArrayList<Review> mydata=reg.getUserReview();
            Iterator<Review> itr = mydata.iterator();%>
              <%while (itr.hasNext()) { Review r=itr.next(); %>
                      <div class="card-body">
                        <h5 class="card-title">
                          <%=r.getUname() %>
                        </h5>
                        <p class="card-text">
                          <%=r.getUreview() %>
                        </p>
                        <h5 class="justify-content fw-bold">
                          <%=r.getLikes() %><span class="fst-italic">Likes</span>
                        </h5>
                        <form action="review" method="post">
                          <input type="hidden" name="userid" value="<%=r.getslno()%>">
                          <div class="container mt-3 mb-0">
                            <div class="row">
                              <div class="col col-md-2">
                                <button type="submit" class="btn btn-outline-success" name="users" value="like"><img
                                    src="Images/like-regular-24.png"></button>
                              </div>
                              <div class="col col-md-2 ">
                                <button type="submit" class="btn btn-outline-danger" name="users" value="dislike"><img
                                    src="Images/dislike-regular-24.png"></button>
                              </div>
                            </div>
                          </div>
                        </form>
                      </div>
                      <hr>
                      <%} %>
                    </div>
                  </div>
           </div>
           <div class="col col-md-5 col-sm-12 border">
           <h2 class="align-items-center justify-content-center text-success fst-italic text-center mb-4">Post Your Review</h2>
           <form method="post" action="login">
           <div class="mb-3">
  				<label for="exampleFormControlInput1" class="form-label">Email address</label>
  				<input type="text" class="form-control" name="name" id="exampleFormControlInput1" value="<%=session.getAttribute("fname")%>" disabled="disabled" name="name">
			</div>
           	<div class="mb-3">
  				<label for="exampleFormControlInput1" class="form-label">Email address</label>
  				<input type="email" class="form-control" name="remail" id="exampleFormControlInput1" name="remail" value="<%=session.getAttribute("email")%>"disabled="disabled">
			</div>
			<div class="mb-3">
  				<label for="exampleFormControlTextarea1" class="form-label">Write Your Review Here</label>
  				<textarea class="form-control" name="review" id="exampleFormControlTextarea1" rows="3"></textarea>
			</div>
			<button type="submit" name="post" value="Post" class="btn btn-primary">Post</button>
			</form>
           </div>
         </div>

      </div>

 
    <%@include file="Footer.jsp"%>
   
</body>

</html>