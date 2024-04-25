<!doctype html>
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
    #parents {
      display: flex;
      padding-left: 100px;
      padding-right: 100px;

    }

    #abouts {
      display: flex;
      padding: 0px 40px 0px 40px;
    }

    #about {
      margin: 0px 80px 0px 80px;
      border: 2px solid rgb(213, 213, 244);
    }

    .para {
      padding: 30px;
    }

    #ants {
      margin: 5px;
      width: 25%;
    }

    #one {
      margin-right: 50px;
      margin-left: 80px;
    }

    #tt {
      height: 318px;
    }

    #iim {
      height: 200px;
    }

    #iims {
      height: 250px;
    }

    #ftt {
      height: 700px;
    }
  </style>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light"><!--navbar navbar-dark bg-dark -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#home">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#footer">Contact us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#review">Reviews</a>
        </li>
      </ul>
      <form class="form-inline my-0 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search here..." aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0 " type="submit">Search</button>
      </form>
      <!-- Button trigger modal -->
      <button type="button" class="btn btn-outline-success ml-sm-2" data-toggle="modal" data-target="#exampleModal">
        Login
      </button>

      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Login</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form method="post" action="login">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                    else.</small>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" name="pass" id="exampleInputPassword1">
                </div>
                <div class="form-group form-check">
                  <input type="checkbox" class="form-check-input"  id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
              
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" name="login" value="Login" class="btn btn-primary">Login</button>
            </div>
            </form>
          </div>
        </div>
      </div>
      <!-- Button trigger modal -->
      <button type="button" class="btn btn-outline-success ml-sm-2" data-toggle="modal" data-target="#exampleModals">
        Sign Up
      </button>

      <!-- Modal -->
      <form action="login" method="post">
      <div class="modal fade" id="exampleModals" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Signup</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            
            <div class="modal-body">
              <div class="row">
                <div class="col">
                  <label for="exampleInputEmail1">First Name* </label>
                  <input type="text" name="fname" class="form-control" required>
                </div>
                <div class="col">
                  <label for="exampleInputEmail1">Last Name</label>
                  <input type="text" name="lname" class="form-control">
                </div>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Phone Number*</label>
                <input type="number" class="form-control" name="num" id="exampleInputEmail1" aria-describedby="emailHelp" required>
              </div>
              <label for="exampleInputEmail1">Gender* :</label><br>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="Male">
                <label class="form-check-label" for="inlineRadio1">Male</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="Female">
                <label class="form-check-label" for="inlineRadio2">Female</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="other">
                <label class="form-check-label" for="inlineRadio2">Other</label>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Email address*</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required>
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                  else.</small>
              </div>
              <div class="form-group col-md-6">
                <label for="inputState">State</label>
                <select id="inputState" name="select" class="form-control">
                  <option selected>--select your state--</option>
                  <option value="andhra pradesh">Andhra Pradesh</option>
                  <option value="karnataka">Karnataka</option>
                  <option value="tamil nadu">Tamil Nadu</option>
                  <option value="kerla">Kerla</option>
                  <option value="telangana">Telangana</option>
                  <option value="madhya pradesh">Madhya Pradesh</option>
                  <option value="Arunachal Pradesh ">Arunachal Pradesh </option>
                  <option value=" Assam">Assam</option>
                  <option value="Bihar">Bihar</option>
                  <option value="Chhattisgarh">Chhattisgarh</option>
                  <option value="Gujarat">Gujarat</option>
                  <option value="Goa">Goa</option>
                  <option value="Haryana ">Haryana </option>
                  <option value="Himachal Pradesh">Himachal Pradesh</option>
                  <option value="Jharkhand">Jharkhand</option>
                  <option value="Madhya Pradesh">Madhya Pradesh</option>
                  <option value="Maharashtra">Maharashtra</option>
                  <option value="Manipur">Manipur</option>
                  <option value="Meghalaya">Meghalaya</option>
                  <option value="Mizoram">Mizoram</option>
                  <option value="Nagaland">Nagaland</option>
                  <option value="Odisha">Odisha</option>
                  <option value=" Punjab">Punjab</option>
                  <option value="Rajasthan">Rajasthan</option>
                  <option value="Sikkim">Sikkim</option>
                  <option value="Tripura">Tripura</option>
                  <option value="Uttar Pradesh">Uttar Pradesh</option>
                  <option value=" Uttarakhand"> Uttarakhand</option>
                  <option value="West Bengal">West Bengal</option>
                </select>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password*</label>
                <input type="password" name="pw" class="form-control" id="exampleInputPassword1" required>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Confirm Password</label>
                <input type="password" name="cp" class="form-control" id="exampleInputPassword1" required>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary" name="signup" value="Signup">Sign Up</button>
            </div>
            
          </div>
        </div>
      </div>
      </form>
    </div>
  </nav>
  <%if(request.getAttribute("status")!=null){%>
  <div class="alert alert-secondary alert-dismissible fade show" role="alert">
    <strong>
    	<h3> <%= request.getAttribute("status")%></h3>
    </strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <%}%>
  
  <div class="alert alert-secondary alert-dismissible fade show" role="alert">
    <strong>Pentagon Space</strong> India's number 1 instuite in Software development <span
      class="badge badge-secondary">New</span>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" id="home">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="Images/SunRise.jpg" class="d-block w-100" alt="..." id="ftt">
        <div class="carousel-caption d-none d-md-block">
          <h5>Sun rise</h5>
          <p>“May every sunrise hold more promise and every sunset hold more peace.” </p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="Images/galaxy.jpg" class="d-block w-100" alt="..." id="ftt">
        <div class="carousel-caption d-none d-md-block">
          <h5>Milky Way</h5>
          <p>The Milky Way is nothing else but a mass of innumerable stars planted together in clusters.</p>
        </div>
      </div>

      <div class="carousel-item">
        <img src="Images/SunflowerGarden.jpg" class="d-block w-100" alt="..." id="ftt">
        <div class="carousel-caption d-none d-md-block">
          <h5>Nature</h5>
          <p>"Nature is not a place to visit, it is home."</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="Images/WaterFalls.jpg" class="d-block w-100" alt="..." id="ftt">
        <div class="carousel-caption d-none d-md-block">
          <h5>Waterfalls</h5>
          <p>“Waterfalls wouldn't sound so melodious if there were no rocks in their way.” </p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <center><h1><i><b>Nature View</b></i></h1></center>
  <div class="parent d-flex">
    <div class="card m-2" style="width: 18rem;">
      <img src="Images/galaxy.jpg" class="card-img-top" alt="..." id="iim">
      <div class="card-body">
        <h5 class="card-title">Milky Way</h5>
        <p class="card-text">The Milky Way is nothing else but a mass of innumerable stars planted together in clusters.
        </p>
        <a href="#" class="btn btn-primary">See More</a>
      </div>
    </div>
    <div class="card m-2" style="width: 18rem;" id="ant">
      <img src="Images/WaterFalls.jpg" class="card-img-top" alt="..." id="iim">
      <div class="card-body">
        <h5 class="card-title">Waterfalls</h5>
        <p class="card-text">“Waterfalls wouldn't sound so melodious if there were no rocks in their way.” </p>
        <a href="#" class="btn btn-primary">See More</a>
      </div>
    </div>
    <div class="card m-2" style="width: 18rem;" id="ant">
      <img src="Images/SunRise.jpg" class="card-img-top" alt="..." id="iim">
      <div class="card-body">
        <h5 class="card-title">Sun rise</h5>
        <p class="card-text">“May every sunrise hold more promise and every sunset hold more peace.” </p>
        <a href="#" class="btn btn-primary">See More</a>
      </div>
    </div>
    <div class="card m-2" style="width: 18rem;" id="ant">
      <img src="Images/SunflowerGarden.jpg" class="card-img-top" alt="..." id="iim">
      <div class="card-body">
        <h5 class="card-title">Nature</h5>
        <p class="card-text">"Nature is not a place to visit, it is home."</p>
        <a href="#" class="btn btn-primary">See More</a>
      </div>
    </div>
    <div class="card m-2" style="width: 18rem;" id="ant">
      <img src="Images/Forest.jpg" class="card-img-top" alt="..." id="iim">
      <div class="card-body">
        <h5 class="card-title">Forest</h5>
        <p class="card-text">The clearest way into the Universe is through a forest wilderness.</p>
        <a href="#" class="btn btn-primary">See More</a>
      </div>
    </div>
  </div>
  <center>
    <h1><i><b>Indian Foods</b></i></h1>
  </center>
  <div id="parents">
    <div class="card mb-3 mr-20" style="max-width: 540px;" id="one">
      <div class="row no-gutters">
        <div class="col-md-4">
          <img src="Images/HyderabadiBiryani.jpg" class="card-img" alt="..." id="tt">
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <h5 class="card-title">Hyderabadi Dum Biryani</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <p class="card-text"><small class="text-muted">Last updated 8 mins ago</small></p>
          </div>
        </div>
      </div>
    </div>
    <div class="card mb-3" style="max-width: 540px; margin: 10;" id="one">
      <div class="row no-gutters">
        <div class="col-md-4">
          <img src="Images/MuglaiChicken.jpg" class="card-img" alt="..." id="tt">
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <h5 class="card-title">Muglai Chicken</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <p class="card-text"><small class="text-muted">Last updated 8 mins ago</small></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="parents">
    <div class="card mb-3" style="max-width: 540px;" id="one">
      <div class="row no-gutters">
        <div class="col-md-8">
          <div class="card-body">
            <h5 class="card-title">Grill Chicken</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <p class="card-text"><small class="text-muted">Last updated 8 mins ago</small></p>
          </div>
        </div>
        <div class="col-md-4">
          <img src="Images/GrillChicken.jpg" class="card-img" alt="..." id="tt">
        </div>
      </div>
    </div>
    <div class="card mb-3" style="max-width: 540px;" id="one">
      <div class="row no-gutters">
        <div class="col-md-8">
          <div class="card-body">
            <h5 class="card-title">Pure Veg</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
              content.</p>
            <p class="card-text"><small class="text-muted">Last updated 8 mins ago</small></p>
          </div>
        </div>
        <div class="col-md-4">
          <img src="Images/Pugeveg.jpg" class="card-img" alt="..." id="tt">
        </div>
      </div>
    </div>
  </div>
  <div id="about">
    <center>
      <h1 style="color: red;"><i>About US</i></h1>
    </center>
    <div id="abouts">
      <div class="image"><img src="Images/Team.jpg" class="img-fluid"
          style="width: 400rem; height: 30rem;  border-radius: 0rem 5rem 5rem 0rem;" alt="..."></div>
      <div>
        <center>
          <h3 style="color: rgb(64, 150, 211);">About Our Company</h3>
          <p class="para">Jamsetji Nusserwanji Tata, founder of the Tata Group, opened the Taj Mahal Palace, a hotel in
            Mumbai
            (formerly called Bombay) overlooking the Arabian Sea, on 16 December 1903. It was the first Taj property and
            the first
            Taj hotel. There are several anecdotal stories about why Tata opened the Taj Hotel. According to a story, he
            decided to
            open the hotel after an incident involving racial discrimination at the Watson's Hotel in Mumbai, where he
            was
            refused
            entry as the hotel permitted only Europeans.[9] Hotels that accepted only European guests were very common
            across
            British India then. According to another story, he opened the hotel when one of his friends expressed
            disgust
            over
            the hotels that were present in Bombay then. But a more plausible reason was advanced by Lovat Fraser, a
            close
            friend
            of the Tata and one of the early directors of the IHCL group, that the idea had long been in his mind and
            that
            he had made a study on the subject. He did not have any desire to own a hotel but he wanted to attract
            people
            to
            </p>
        </center>
      </div>
    </div>
    <div id="abouts">
      <div>
        <center>
          <h3 style="color: rgb(64, 150, 211);">Our Team</h3>
          <p class="para">Jamsetji Nusserwanji Tata, founder of the Tata Group, opened the Taj Mahal Palace, a hotel in
            Mumbai
            (formerly called Bombay) overlooking the Arabian Sea, on 16 December 1903. It was the first Taj property and
            the first
            Taj hotel. There are several anecdotal stories about why Tata opened the Taj hotel. According to a story, he
            decided to
            open the hotel after an incident involving racial discrimination at the Watson's Hotel in Mumbai, where he
            was
            refused
            entry as the hotel permitted only Europeans.[9] Hotels that accepted only European guests were very common
            across
            British India then. According to another story, he opened the hotel when one of his friends expressed
            disgust
            over
            the hotels that were present in Bombay then. But a more plausible reason was advanced by Lovat Fraser, a
            close
            friend
            of the Tata and one of the early directors of the IHCL group, that the idea had long been in his mind and
            that
            he had made a study on the subject. He did not have any desire to own a hotel but he wanted to attract
            people
            to
            </p>
        </center>
      </div>
      <div class="image"><img src="Images/Team1.jpg" class="img-fluid"
          style="width: 400rem; height: 30rem;  border-radius: 5rem 0rem 0rem 5rem;" alt="..."></div>
    </div>
  </div>
  <div style="border: 2px solid rgb(213, 213, 244);; margin: 10px 80px 10px 80px; " id="review">
    <form class="mt-5 ml-5 mr-5" method="post" action="login">
      <center><h3 style="color: rgb(6, 140, 217);"><i>Give Your Suggestions</i></h3></center><br> 
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" name="suggemail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
      </div>
      <div class="form-group">
        <label for="exampleFormControlTextarea1">Write Your Suggestion here</label>
        <textarea class="form-control" name="sugg" id="exampleFormControlTextarea1" rows="3"></textarea>
      </div>
      
      <div class="form-group row">
        <div class="col-sm-10">
          <button type="submit" name="suggest" value="Suggestion" class="btn btn-primary">Post</button>
        </div>
      </div>
    </form>
  </div>
  <hr>
  <footer class="container py-5" id="footer">
    <div class="row">
      <div class="col-12 col-md">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor"
          stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mb-2" role="img"
          viewBox="0 0 24 24" focusable="false">
          <title>Product</title>
          <circle cx="12" cy="12" r="10"></circle>
          <path
            d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94">
          </path>
        </svg>
        <small class="d-block mb-3 text-muted">© 2017-2022</small>
      </div>
      <div class="col-6 col-md">
        <h5>Features</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Cool stuff</a></li>
          <li><a class="text-muted" href="#">Random feature</a></li>
          <li><a class="text-muted" href="#">Team feature</a></li>
          <li><a class="text-muted" href="#">Stuff for developers</a></li>
          <li><a class="text-muted" href="#">Another one</a></li>
          <li><a class="text-muted" href="#">Last time</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5>Resources</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Resource</a></li>
          <li><a class="text-muted" href="#">Resource name</a></li>
          <li><a class="text-muted" href="#">Another resource</a></li>
          <li><a class="text-muted" href="#">Final resource</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5>Resources</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Business</a></li>
          <li><a class="text-muted" href="#">Education</a></li>
          <li><a class="text-muted" href="#">Government</a></li>
          <li><a class="text-muted" href="#">Gaming</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5>Connect us</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#"><img></a></li>
          <li><a class="text-muted" href="#">Locations</a></li>
          <li><a class="text-muted" href="#">Privacy</a></li>
          <li><a class="text-muted" href="#">Terms</a></li>
        </ul>
      </div>
    </div>
  </footer>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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