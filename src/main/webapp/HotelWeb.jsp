<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <title>Hotel Website</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">

  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>

</head>

<body style="background-color: #f2f2f2">
  <header class="header" id="navigation-menu">
    <div class="container">
      <nav>
        <a href="#" class="logo"> <div><img src="Images/logo1.png" alt="" width="150"></div>

        <ul class="nav-menu">
          <li> <a href="HomePage.jsp" class="nav-link">Home</a> </li>
          <li> <a href="#about" class="nav-link">About</a> </li>
          <li> <a href="#rooms" class="nav-link">Rooms</a> </li>
          <li> <a href="#contact" class="nav-link">Contact</a> </li>
        </ul>

        <div class="hambuger">
          <span class="bar"></span>
          <span class="bar"></span>
          <span class="bar"></span>
        </div>
      </nav>
    </div>
  </header>
  <script>
    const hambuger = document.querySelector('.hambuger');
    const navMenu = document.querySelector('.nav-menu');

    hambuger.addEventListener("click", mobileMenu);

    function mobileMenu() {
      hambuger.classList.toggle("active");
      navMenu.classList.toggle("active");
    }

    const navLink = document.querySelectorAll('.nav-link');
    navLink.forEach((n) => n.addEventListener("click", closeMenu));

    function closeMenu() {
      hambuger.classList.remove("active");
      navMenu.classList.remove("active");
    }
  </script>

  <section class="home" id="home">
    <div class="head_container">
      <div class="box">
        <div class="text">
          <h1>Pathan's Hotel</h1>
          <p>Of course, there are some hotels that take this feeling and maximize it beyond all belief. Some hotels that hit it out of the ballpark in terms of style, luxury, elegance and service. Unsurprisingly, these hotels have become world-famous. Travelers speak of them in hushed, respectful tones, treating people who have stayed in them with reverend awe.</p>
          <button>MORE INFO</button>
        </div>
      </div>
      <div class="image">
        <img src="Images/home4.jpg" class="slide">
      </div>
      <div class="image_item">
        <img src="Images/home1.jpg" alt="" class="slide active" onclick="img('Images/home4.jpg')">
        <img src="Images/home2.jpg" alt="" class="slide" onclick="img('Images/home2.jpg')">
        <img src="Images/home3.jpg" alt="" class="slide" onclick="img('Images/Hollyday2.jpg')">
        <img src="Images/home4.jpg" alt="" class="slide" onclick="img('Images/a1.jpg')">
      </div>
    </div>
  </section>
  <script>
    function img(anything) {
      document.querySelector('.slide').src = anything;
    }

    function change(change) {
      const line = document.querySelector('.image');
      line.style.background = change;
    }
  </script>
  <section class="book">
    <div class="container flex">
      <div class="input grid">
        <div class="box">
          <label>Check-in:</label>
          <input type="date" placeholder="Check-in-Date">
        </div>
        <div class="box">
          <label>Check-out:</label>
          <input type="date" placeholder="Check-out-Date">
        </div>
        <div class="box">
          <label>Adults:</label> <br>
          <input type="number" placeholder="0">
        </div>
        <div class="box">
          <label>Children:</label> <br>
          <input type="number" placeholder="0">
        </div>
      </div>
      <div class="search">
        <input type="submit" value="SEARCH">
      </div>
    </div>
  </section>
  <section class="about top" id="about">
    <div class="container flex">
      <div class="left">
        <div class="img">
          <img src="Images/a1.jpg" alt="" class="image1">
          <img src="Images/a2.jpg" alt="" class="image2">
        </div>
      </div>
      <div class="right">
        <div class="heading">
          <h5>RAISING COMFOMRT TO THE HIGHEST LEVEL</h5>
          <h2>Welcome to Pathan's Hotel Resort</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
          <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <button class="btn1">READ MORE</button>
        </div>
      </div>
    </div>
  </section>
  <section class="wrapper top">
    <div class="container">
      <div class="text">
        <h2>Our Amenities</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>

        <div class="content">
          <div class="box flex">
            <i class="fas fa-swimming-pool"></i>
            <span>Swimming pool</span>
          </div>
          <div class="box flex">
            <i class="fas fa-dumbbell"></i>
            <span>Gym & yogo</span>
          </div>
          <div class="box flex">
            <i class="fas fa-spa"></i>
            <span>Spa & massage</span>
          </div>
          <div class="box flex">
            <i class="fas fa-ship"></i>
            <span>Boat Tours</span>
          </div>
          <div class="box flex">
            <i class="fas fa-swimmer"></i>
            <span>Surfing Lessons</span>
          </div>
          <div class="box flex">
            <i class="fas fa-microphone"></i>
            <span>Conference room</span>
          </div>
          <div class="box flex">
            <i class="fas fa-water"></i>
            <span>Diving & smorking</span>
          </div>
          <div class="box flex">
            <i class="fas fa-umbrella-beach"></i>
            <span>Private Beach</span>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="room top" id="room">
    <div class="container">
      <div class="heading_top flex1">
        <div class="heading">
          <h5>RAISING COMFORT TO THE HIGHEST LEVEL</h5>
          <h2>Rooms $ Suites</h2>
        </div>
        <div class="button">
          <button class="btn1">VIEW ALL</button>
        </div>
      </div>

      <div class="content grid">
        <div class="box">
          <div class="img">
            <img src="g3.jpg" alt="" data-element-name="hotel-gallery-display-photo" style="opacity: 1;">
          </div>
          <div class="text">
            <h3>Superior 1 double bed</h3>
            <p> <span>$</span>139 <span>/per night</span> </p>
          </div>
        </div>
        <div class="box">
          <div class="img">
            <img src="g6.jpg" alt="" style="opacity: 1;">
          </div>
          <div class="text">
            <h3>Superior 1 large double bed</h3>
            <p> <span>$</span>129 <span>/per night</span> </p>
          </div>
        </div>
        <div class="box">
          <div class="img">
            <img src="g5.jpg" alt="Thumbnail image" loading="lazy" width="100%" height="198px" style="opacity: 1;">
          </div>
          <div class="text">
            <h3>Superior 2 double bed</h3>
            <p> <span>$</span>129 <span>/per night</span> </p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="wrapper wrapper2 top">
    <div class="container">
      <div class="text">
        <div class="heading">
          <h5>AT THE HEART OF COMMUNICATION</h5>
          <h2>People Say</h2>
        </div>

        <div class="para">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>

          <div class="box flex">
            <div class="img">
              <img src="" alt="">
            </div>
            <div class="name">
              <h5>Pathan Sharook Khan</h5>
              <h5>India</h5>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <section class="restaurant top" id="restaurant">
    <div class="container flex">
      <div class="left">
        <img src="Images/home2.jpg" id="img" style="width: 558px; height: 860px;">
      </div>
      <div class="right">
        <div class="text">
          <h2>Restaurant</h2>
          <p> No matter how often you do it, there’s still something so decadent about staying in a hotel. The crisp, clean sheets stretched over plush, comfy mattresses, the elegant design, and the welcome from the reception.</p>
        </div>
        <div class="accordionWrapper">
          <div class="accordionItem open">
            <h2 class="accordionIHeading">Italian Kitchen</h2>
            <div class="accordionItemContent">
              <p>Italian kitchens are much sorted after because of their clean, organised look and its emphasis on clutter-free surfaces. If you are looking for an Italian kitchen design for a small space then do opt for an open kitchen layout with a modular setup rather than a traditional closed kitchen. This will help make your kitchen look spacious and airy. You can install a chimney to keep it clean and smoke-free. Opt for innovative storage options like magic corner units, tandem drawers, janitor units and skirting drawers to maximise your storage space. A well-organised, clutter-free cooking experience is the soul of Italian kitchen design.
              </p>
            </div>
          </div>
          <div class="accordionItem close">
            <h2 class="accordionIHeading">Mexican Kitchen</h2>
            <div class="accordionItemContent">
              <p>Mexican cuisine consists of the cooking cuisines and traditions of the modern country of Mexico. Its earliest roots lie in Mesoamerican cuisine. Its ingredients and methods begin with the first agricultural communities such as the Olmec and Maya who domesticated maize, created the standard process of nixtamalization, and established their foodways.[2] Successive waves of other Mesoamerican groups brought with them their cooking methods. These included: the Teotihuacanos, Toltec, Huastec, Zapotec, Mixtec, Otomi, Purépecha, Totonac, Mazatec, Mazahua, and Nahua. With the Mexica formation of the multi-ethnic Triple Alliance (Aztec Empire), culinary foodways became infused (Aztec cuisine).
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <script>
    var accItem = document.getElementsByClassName('accordionItem');
    var accHD = document.getElementsByClassName('accordionIHeading');
    for (i = 0; i < accHD.length; i++) {
      accHD[i].addEventListener('click', toggleItem, false);
    }
    function toggleItem() {
      var itemClass = this.parentNode.className;
      for (var i = 0; i < accItem.length; i++) {
        accItem[i].className = 'accordionItem close';
      }
      if (itemClass == 'accordionItem close') {
        this.parentNode.className = 'accordionItem open';
      }
    }
  </script>

  <section class="gallary mtop " id="gallary">
    <div class="container">
      <div class="heading_top flex1">
        <div class="heading">
          <h5>Welcome to Hotel Pentagon</h5>
          <h2>Images of Our Hotel</h2>
        </div>
        <div class="button">
          <button class="btn1">GALLERY</button>
        </div>
      </div>

      <div class="owl-carousel owl-theme">
        <div class="item">
          <img src="r1.jpg" alt="">
        </div>
        <div class="item">
          <img src="g7.jpg" alt="">
        </div>
        <div class="item">
          <img src="re.jpg" alt="">
        </div>
        <div class="item">
          <img src="victoria-shes-UC0HZdUitWY-unsplash.jpg" alt="">
        </div>
        <div class="item">
          <img src="g8.jpg" alt="">
        </div>
        <div class="item">
          <img src="g3.jpg" id="img" alt="">
        </div>
        <div class="item">
          <img src="r3.jpg" alt="">
        </div>
        <div class="item">
          <img src="shreyak-singh-0j4bisyPo3M-unsplash.jpg" alt="">
        </div>
      </div>
    </div>
  </section>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"
    referrerpolicy="no-referrer"></script>
  <script>
    $('.owl-carousel').owlCarousel({
      loop: true,
      margin: 10,
      nav: true,
      dots: false,
      navText: ["<i class='fas fa-chevron-left'></i>", "<i class='fas fa-chevron-right'></i>"],
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 2
        },
        1000: {
          items: 4
        }
      }
    })
  </script>

  <!-- <section class="map top">
    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14131.036667732067!2d85.32395955!3d27.69383745!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2snp!4v1637755481449!5m2!1sen!2snp" width="600" height="450" style="border:0;"
      allowfullscreen="" loading="lazy"></iframe>
  </section> -->
  <footer>
    <div class="container grid top">
      <div class="box">
        <img src="https://img.icons8.com/external-flatart-icons-flat-flatarticons/48/000000/external-hotel-hotel-services-and-city-elements-flatart-icons-flat-flatarticons-1.png" />
        <p> Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

        <p>Accepted payment methods</p>
        <div class="payment grid">
          <img src="https://img.icons8.com/color/48/000000/visa.png" />
          <img src="https://img.icons8.com/color/48/000000/mastercard.png" />
          <img src="https://img.icons8.com/color-glass/48/000000/paypal.png" />
          <img src="https://img.icons8.com/fluency/48/000000/amex.png" />
        </div>
      </div>
      <div class="box">
        <h3>Recent News</h3>
        <ul>
          <li>Our Secret Island Boat Tour Is Just for You</li>
          <li>Chill and Escape in Our Natural Shelters</li>
          <li>September in Luviana Hotel</li>
          <li>Live Music Concerts at Luviana</li>
        </ul>
      </div>
      <div class="box">
        <h3>For Customers</h3>
        <ul>
          <li>About Luviana</li>
          <li>Customer Care/Help</li>
          <li>Corporate Accounts</li>
          <li>Financial Information</li>
          <li>Terms & Conditions</li>
        </ul>
      </div>
      <div class="box">
        <h3>Contact Us</h3>
        <ul>
          <li>3015 Grand Ave, Cocount Grove, Merrick Way FL 123456</li>
          <li><i class="far fa-envelope"></i>pathanasadalikhan@gmail.com </li>
          <li><i class="far fa-phone-alt"></i>6309667257 </li>
          <li><i class="far fa-phone-alt"></i>9703924436 </li>
          <li><i class="far fa-comments"></i>24/ 7 Customer Services </li>
        </ul>
      </div>
    </div>
  </footer>
</body>
</html>