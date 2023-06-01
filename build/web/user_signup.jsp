<%@page import="java.sql.ResultSet"%>
<%@page import="vmm.DBLoader"%>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:54 GMT -->
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="copyright" content="pavilan">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>User Signup</title>

<link rel="icon" href="img/favicon.png">

<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/nice-select.css">

<link rel="stylesheet" href="css/font-awesome.min.css">

<link rel="stylesheet" href="css/icofont.css">

<link rel="stylesheet" href="css/slicknav.min.css">

<link rel="stylesheet" href="css/owl-carousel.css">

<link rel="stylesheet" href="css/datepicker.css">

<link rel="stylesheet" href="css/animate.min.css">

<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/responsive.css">

<link rel="stylesheet" href="css/color/color1.css">











<link rel="stylesheet" id="colors">
<script>
    function signup()
{
        var ans="";
     var xhttp = new XMLHttpRequest();
    var form = new FormData();
    
    form.append("username",document.getElementById("username").value);
    form.append("email",document.getElementById("email").value);
    form.append("password",document.getElementById("password").value);
    form.append("phoneno",document.getElementById("phoneno").value);
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
       alert(this.response);
          if(this.response.trim() === "success")
           {
//         Swal.fire(
//  'Good job!',
//  'You clicked the button!',
//  'success'
//)
          window.location.href='./userlogin.jsp';
          
            }
        
    }
  }
  xhttp.open("POST", "./usersignup", true);
  xhttp.send(form);  
}
    </script>
</head>
<body>

    <%@include file="header.jsp" %>


<div class="breadcrumbs overlay">
<div class="container">
<div class="bread-inner">
<div class="row">
<div class="col-12">
<h2>Register</h2>
<ul class="bread-list">
<li><a href="index.html">Home</a></li>
<li><i class="icofont-simple-right"></i></li>
<li class="active">Register</li>
</ul>
</div>
</div>
</div>
</div>
</div>


<section class="register section">
<div class="container">
<div class="inner">
<div class="row">
<div class="col-lg-6">
<div class="register-left">
</div>
</div>
<div class="col-lg-6">
<div class="register-form">
<h2>Register Here</h2>
<p>Already have an account ? <a href="doctor_login.jsp">Login Here</a></p>

<form class="form" id="form1">
<div class="row">
<div class="col-lg-6">
<div class="form-group">
<input type="text" name="username" id="username" placeholder="user name" required>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
<input type="email" name="email" id="email" placeholder="user Email" required>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
<input type="password" name="password" id="password"  placeholder="Phone" required>
</div>
</div>

<div class="col-lg-6">
<div class="form-group">
<input type="text" name="phoneno" id="phoneno" placeholder="Phone number" required>
</div>
</div>
<div class="col-12">
<div class="form-group login-btn">
    <button type="button" class="btn" onclick="signup()" type="submit">Register</button>
</div>
<div class="checkbox">
<label class="checkbox-inline" for="2"><input name="news" id="2" type="checkbox">Yes, I agree with all</label>
</div>
<a href="#" class="terms">Terms & Conditions</a>
</div>
</div>
</form>

</div>
</div>
</div>
</div>
</div>
</section>


<footer id="footer" class="footer ">

<div class="footer-top">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-6 col-12">
<div class="single-footer">
<h2>About Us</h2>
<p>Lorem ipsum dolor sit am consectetur adipisicing elit do eiusmod tempor incididunt ut labore dolore magna.</p>

<ul class="social">
<li><a href="#"><i class="icofont-facebook"></i></a></li>
<li><a href="#"><i class="icofont-google-plus"></i></a></li>
<li><a href="#"><i class="icofont-twitter"></i></a></li>
<li><a href="#"><i class="icofont-vimeo"></i></a></li>
<li><a href="#"><i class="icofont-pinterest"></i></a></li>
</ul>

</div>
</div>
<div class="col-lg-3 col-md-6 col-12">
<div class="single-footer f-link">
<h2>Quick Links</h2>
<div class="row">
<div class="col-lg-6 col-md-6 col-12">
<ul>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Home</a></li>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>About Us</a></li>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Services</a></li>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Our Cases</a></li>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Other Links</a></li>
</ul>
</div>
<div class="col-lg-6 col-md-6 col-12">
<ul>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Consuling</a></li>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Finance</a></li>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Testimonials</a></li>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>FAQ</a></li>
<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Contact Us</a></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-lg-3 col-md-6 col-12">
<div class="single-footer">
<h2>Open Hours</h2>
<p>Lorem ipsum dolor sit ame consectetur adipisicing elit do eiusmod tempor incididunt.</p>
<ul class="time-sidual">
<li class="day">Monday - Fridayp <span>8.00-20.00</span></li>
<li class="day">Saturday <span>9.00-18.30</span></li>
<li class="day">Monday - Thusday <span>9.00-15.00</span></li>
</ul>
</div>
</div>
<div class="col-lg-3 col-md-6 col-12">
<div class="single-footer">
<h2>Newsletter</h2>
<p>subscribe to our newsletter to get allour news in your inbox.. Lorem ipsum dolor sit amet, consectetur adipisicing elit,</p>
<form action="https://wpthemesgrid.com/themes/mediplus/mail/mail.php" method="get" class="newsletter-inner">
<input name="email" placeholder="Email Address" class="common-input" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your email address'" required type="email">
<button class="button"><i class="icofont icofont-paper-plane"></i></button>
</form>
</div>
</div>
</div>
</div>
</div>


<div class="copyright">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-12">
<div class="copyright-content">
<p>Designed and Developed by<a href="https://wpthemesgrid.com/" rel="nofollow" target="_blank">WpthemesGrid</a></p>
</div>
</div>
</div>
</div>
</div>

</footer>

<div class="wp-version">
<a href="https://wpthemesgrid.com/downloads/mediplus-medical-and-doctor-wordpress-theme/" target="_blank" rel="nofollow">
<div class="image"><img src="img/wp-icon.png"></div>Looking for WP version?
</a>
</div>

<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="js/jquery.min.js"></script>

<script src="js/jquery-migrate-3.0.0.js"></script>

<script src="js/easing.js"></script>

<script src="js/colors.js"></script>

<script src="js/popper.min.js"></script>

<script src="js/bootstrap-datepicker.js"></script>

<script src="js/jquery.nav.js"></script>

<script src="js/slicknav.min.js"></script>

<script src="js/jquery.scrollUp.min.js"></script>

<script src="js/niceselect.js"></script>

<script src="js/tilt.jquery.min.js"></script>

<script src="js/owl-carousel.js"></script>

<script src="js/jquery.counterup.min.js"></script>

<script src="js/steller.js"></script>

<script src="js/wow.min.js"></script>

<script src="js/jquery.magnific-popup.min.js"></script>

<script src="../../../cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>

<script src="https://maps.google.com/maps/api/js?key=AIzaSyDGqTyqoPIvYxhn_Sa7ZrK5bENUWhpCo0w"></script>

<script src="js/gmaps.min.js"></script>

<script src="js/map-active.js"></script>

<script src="js/bootstrap.min.js"></script>

<script src="js/main.js"></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7caa4f895b3b2c59","version":"2023.4.0","r":1,"b":1,"token":"3248e93e0d6447329c4d6bcc351d5700","si":100}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:54 GMT -->
</html>