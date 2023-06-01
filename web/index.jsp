<%@page import="vmm.DBLoader"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:09:50 GMT -->
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="copyright" content="pavilan">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Mediplus - Medical and Doctor HTML Template.</title>

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
</head>
<body>
    <%
        if(session.getAttribute("useremail")==null)
        {
        %>
    <%@include file="header.jsp" %>
    <%
        }
else
{
        %>
        <%@include file="usernav.jsp" %>
    <%
        }
        %>
<section class="slider">
<div class="hero-slider">

<div class="single-slider" style="background-image:url('img/slider2.jpg')">
<div class="container">
<div class="row">
<div class="col-lg-7">
<div class="text">
<h1>We Provide <span>Medical</span> Services That You Can <span>Trust!</span></h1>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed nisl pellentesque, faucibus libero eu, gravida quam. </p>
<div class="button">
<a href="#cats" class="btn">Explore Category</a>
<a href="#" class="btn primary">Learn More</a>
</div>
</div>
</div>
</div>
</div>
</div>


<div class="single-slider" style="background-image:url('img/slider.jpg')">
<div class="container">
<div class="row">
<div class="col-lg-7">
<div class="text">
<h1>We Provide <span>Medical</span> Services That You Can <span>Trust!</span></h1>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed nisl pellentesque, faucibus libero eu, gravida quam. </p>
<div class="button">
<a href="#cats" class="btn">Explore Category</a>
<a href="#" class="btn primary">About Us</a>
</div>
</div>
</div>
</div>
</div>
</div>


<div class="single-slider" style="background-image:url('img/slider3.jpg')">
<div class="container">
<div class="row">
<div class="col-lg-7">
<div class="text">
<h1>We Provide <span>Medical</span> Services That You Can <span>Trust!</span></h1>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed nisl pellentesque, faucibus libero eu, gravida quam. </p>
<div class="button">
<a href="#cats" class="btn">Explore Category</a>
<a href="#" class="btn primary">Conatct Now</a>
</div>
</div>
</div>
</div>
</div>
</div>

</div>
</section>


<section class="schedule">
<div class="container">
<div class="schedule-inner">
<div class="row">
<div class="col-lg-4 col-md-6 col-12 ">

<div class="single-schedule first">
<div class="inner">
<div class="icon">
<i class="fa fa-ambulance"></i>
</div>
<div class="single-content">
<span>Lorem Amet</span>
<h4>Emergency Cases</h4>
<p>Lorem ipsum sit amet consectetur adipiscing elit. Vivamus et erat in lacus convallis sodales.</p>
<a href="#">LEARN MORE<i class="fa fa-long-arrow-right"></i></a>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-schedule middle">
<div class="inner">
<div class="icon">
<i class="icofont-prescription"></i>
</div>
<div class="single-content">
<span>Fusce Porttitor</span>
<h4>Doctors Timetable</h4>
<p>Lorem ipsum sit amet consectetur adipiscing elit. Vivamus et erat in lacus convallis sodales.</p>
<a href="#">LEARN MORE<i class="fa fa-long-arrow-right"></i></a>
</div>
</div>
</div>
</div>
<div class="col-lg-4 col-md-12 col-12">

<div class="single-schedule last">
<div class="inner">
<div class="icon">
<i class="icofont-ui-clock"></i>
</div>
<div class="single-content">
<span>Donec luctus</span>
<h4>Opening Hours</h4>
<ul class="time-sidual">
<li class="day">Monday - Fridayp <span>8.00-20.00</span></li>
<li class="day">Saturday <span>9.00-18.30</span></li>
<li class="day">Monday - Thusday <span>9.00-15.00</span></li>
</ul>
<a href="#">LEARN MORE<i class="fa fa-long-arrow-right"></i></a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="Feautes section">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>We Are Always Ready to Help You & Your Family</h2>
<img src="img/section-img.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-4 col-12">

<div class="single-features">
<div class="signle-icon">
<i class="icofont icofont-ambulance-cross"></i>
</div>
<h3>Emergency Help</h3>
<p>Lorem ipsum sit, consectetur adipiscing elit. Maecenas mi quam vulputate.</p>
</div>

</div>
<div class="col-lg-4 col-12">

<div class="single-features">
<div class="signle-icon">
<i class="icofont icofont-medical-sign-alt"></i>
</div>
<h3>Enriched Pharmecy</h3>
<p>Lorem ipsum sit, consectetur adipiscing elit. Maecenas mi quam vulputate.</p>
</div>

</div>
<div class="col-lg-4 col-12">

<div class="single-features last">
<div class="signle-icon">
<i class="icofont icofont-stethoscope"></i>
</div>
<h3>Medical Treatment</h3>
<p>Lorem ipsum sit, consectetur adipiscing elit. Maecenas mi quam vulputate.</p>
</div>

</div>
</div>
</div>
</section>


<div id="fun-facts" class="fun-facts section overlay">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-6 col-12">

<div class="single-fun">
<i class="icofont icofont-home"></i>
<div class="content">
<span class="counter">3468</span>
<p>Hospital Rooms</p>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-fun">
<i class="icofont icofont-user-alt-3"></i>
<div class="content">
<span class="counter">557</span>
<p>Specialist Doctors</p>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-fun">
<i class="icofont-simple-smile"></i>
<div class="content">
<span class="counter">4379</span>
<p>Happy Patients</p>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12">

<div class="single-fun">
<i class="icofont icofont-table"></i>
<div class="content">
<span class="counter">32</span>
<p>Years of Experience</p>
</div>
</div>

</div>
</div>
</div>
</div>


<section class="why-choose section">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>We Offer Different Services To Improve Your Health</h2>
<img src="img/section-img.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-6 col-12">

<div class="choose-left">
<h3>Who We Are</h3>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra antege vel est lobortis, a commodo magna rhoncus. In quis nisi non emet quam pharetra commodo. </p>
<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
<div class="row">
<div class="col-lg-6">
<ul class="list">
<li><i class="fa fa-caret-right"></i>Maecenas vitae luctus nibh. </li>
<li><i class="fa fa-caret-right"></i>Duis massa massa.</li>
<li><i class="fa fa-caret-right"></i>Aliquam feugiat interdum.</li>
</ul>
</div>
<div class="col-lg-6">
<ul class="list">
<li><i class="fa fa-caret-right"></i>Maecenas vitae luctus nibh. </li>
<li><i class="fa fa-caret-right"></i>Duis massa massa.</li>
<li><i class="fa fa-caret-right"></i>Aliquam feugiat interdum.</li>
</ul>
</div>
</div>
</div>

</div>
<div class="col-lg-6 col-12">

<div class="choose-right">
<div class="video-image">

<div class="promo-video">
<div class="waves-block">
<div class="waves wave-1"></div>
<div class="waves wave-2"></div>
<div class="waves wave-3"></div>
</div>
</div>

<a href="https://www.youtube.com/watch?v=RFVXy6CRVR4" class="video video-popup mfp-iframe"><i class="fa fa-play"></i></a>
</div>
</div>

</div>
</div>
</div>
</section>


<section class="call-action overlay" data-stellar-background-ratio="0.5">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-12">
<div class="content">
<h2>Do you need Emergency Medical Care? Call @ 1234 56789</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque porttitor dictum turpis nec gravida.</p>
<div class="button">
<a href="#" class="btn">Contact Now</a>
<a href="#" class="btn second">Learn More<i class="fa fa-long-arrow-right"></i></a>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="portfolio section">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>We Maintain Cleanliness Rules Inside Our Hospital</h2>
<img src="img/section-img.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
</div>
</div>
</div>
</div>
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-12">
<div class="owl-carousel portfolio-slider">
<div class="single-pf">
<img src="img/pf1.jpg" alt="#">
<a href="portfolio-details.html" class="btn">View Details</a>
</div>
<div class="single-pf">
<img src="img/pf2.jpg" alt="#">
<a href="portfolio-details.html" class="btn">View Details</a>
</div>
<div class="single-pf">
<img src="img/pf3.jpg" alt="#">
<a href="portfolio-details.html" class="btn">View Details</a>
</div>
<div class="single-pf">
<img src="img/pf4.jpg" alt="#">
<a href="portfolio-details.html" class="btn">View Details</a>
</div>
<div class="single-pf">
<img src="img/pf1.jpg" alt="#">
<a href="portfolio-details.html" class="btn">View Details</a>
</div>
<div class="single-pf">
<img src="img/pf2.jpg" alt="#">
<a href="portfolio-details.html" class="btn">View Details</a>
</div>
<div class="single-pf">
<img src="img/pf3.jpg" alt="#">
<a href="portfolio-details.html" class="btn">View Details</a>
</div>
<div class="single-pf">
<img src="img/pf4.jpg" alt="#">
<a href="portfolio-details.html" class="btn">View Details</a>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="services section" id="cats">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>We Offer Different Services To Improve Your Health</h2>
<img src="img/section-img.png" alt="#">
<p>Explore your categories</p>
</div>
</div>
</div>
<div class="row" >
    <%
        try {
               
        ResultSet rs  = DBLoader.executeQuery("select * from category");
        while(rs.next())
        {
        %>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-service">
<i class="<%=rs.getString("photo")%>"></i>
<h4><a href="doctors.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("catname")%></a></h4>
<p><%=rs.getString("desc")%></p>
</div>

</div>
        <%
            }
 } catch (Exception e) {
            }
            %>
</div>
</div>
</section>


<section class="section testimonials overlay" data-stellar-background-ratio="0.5">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>What Our Patients Say About Our Medical Treatments</h2>
<img src="img/section-img2.png" alt="#">
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12 col-12">
<div class="owl-carousel testimonial-slider">

<div class="single-testimonial">
<img src="img/testi1.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
<h4 class="name">Ruhfayed Sakib</h4>
</div>


<div class="single-testimonial">
<img src="img/testi2.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
<h4 class="name">Shakil Hossain</h4>
</div>


<div class="single-testimonial">
<img src="img/testi3.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
<h4 class="name">Naimur Rahman</h4>
</div>


<div class="single-testimonial">
<img src="img/testi1.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
<h4 class="name">Ruhfayed Sakib</h4>
</div>


<div class="single-testimonial">
<img src="img/testi2.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
<h4 class="name">Shakil Hossain</h4>
</div>


<div class="single-testimonial">
<img src="img/testi3.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
<h4 class="name">Naimur Rahman</h4>
</div>


<div class="single-testimonial">
<img src="img/testi1.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
<h4 class="name">Ruhfayed Sakib</h4>
</div>


<div class="single-testimonial">
<img src="img/testi2.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
<h4 class="name">Naimur Rahman</h4>
</div>

</div>
</div>
</div>
</div>
</section>


<section class="departments section">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>We Offer Different Departments To Diagnose Your Diseases</h2>
<img src="img/section-img.png" alt="#">
</div>
</div>
</div>
<div class="row">
<div class="col-12">
<div class="department-tab">

<ul class="nav nav-tabs" id="myTab" role="tablist">
<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#t-tab1" role="tab"><i class="icofont-heart-beat"></i><span class="first">Cardiac Clinic</span><span class="second">Lorem Sit</span></a></li>
<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#t-tab2" role="tab"><i class="icofont-brain-alt"></i><span class="first">Neurology</span><span class="second">Quis Est</span></a></li>
<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#t-tab3" role="tab"><i class="icofont-tooth"></i><span class="first">Dentistry</span><span class="second">Sit Dolor</span></a></li>
<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#t-tab4" role="tab"><i class="icofont-heart-beat"></i><span class="first">Gastroenterology</span><span class="second">Lorem Sit</span></a></li>
<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#t-tab5" role="tab"><i class="icofont-bone"></i><span class="first">Orthopedagogy</span><span class="second">Lorem Sit</span></a></li>
</ul>

<div class="tab-content" id="myTabContent">

<div class="tab-pane fade show active" id="t-tab1" role="tabpanel">
<div class="row">
<div class="col-lg-6">
<div class="department-left">
<h3>Cardiac Clinic</h3>
<p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
<ul class="list">
<li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
<li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
<li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
</ul>
</div>
</div>
<div class="col-lg-6">
<div class="department-right">
<img src="img/department.jpg" alt="#">
</div>
</div>
</div>
</div>


<div class="tab-pane fade" id="t-tab2" role="tabpanel">
<div class="row">
<div class="col-lg-6">
<div class="department-left">
<h3>Neurology</h3>
<p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
<ul class="list">
<li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
<li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
<li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
</ul>
</div>
</div>
<div class="col-lg-6">
<div class="department-right">
<img src="img/department.jpg" alt="#">
</div>
</div>
</div>
</div>


<div class="tab-pane fade" id="t-tab3" role="tabpanel">
<div class="row">
<div class="col-lg-6">
<div class="department-left">
<h3>Dentistry</h3>
<p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
<ul class="list">
<li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
<li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
<li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
</ul>
</div>
</div>
<div class="col-lg-6">
<div class="department-right">
<img src="img/department.jpg" alt="#">
</div>
</div>
</div>
</div>


<div class="tab-pane fade" id="t-tab4" role="tabpanel">
<div class="row">
<div class="col-lg-6">
<div class="department-left">
<h3>Gastroenterology</h3>
<p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
<ul class="list">
<li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
<li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
<li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
</ul>
</div>
</div>
<div class="col-lg-6">
<div class="department-right">
<img src="img/department.jpg" alt="#">
</div>
</div>
</div>
</div>


<div class="tab-pane fade" id="t-tab5" role="tabpanel">
<div class="row">
<div class="col-lg-6">
<div class="department-left">
<h3>Orthopedagogy</h3>
<p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
<ul class="list">
<li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
<li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
<li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
</ul>
</div>
</div>
<div class="col-lg-6">
<div class="department-right">
<img src="img/department.jpg" alt="#">
</div>
</div>
</div>
</div>

</div>
</div>
</div>
</div>
</div>
</section>


<section class="pricing-table section">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>We Provide You The Best Treatment In Resonable Price</h2>
<img src="img/section-img.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
</div>
</div>
</div>
<div class="row">

<div class="col-lg-4 col-md-12 col-12">
<div class="single-table">

<div class="table-head">
<div class="icon">
<i class="icofont icofont-ui-cut"></i>
</div>
<h4 class="title">Plastic Suggery</h4>
<div class="price">
<p class="amount">$199<span>/ Per Visit</span></p>
</div>
</div>

<ul class="table-list">
<li><i class="icofont icofont-ui-check"></i>Lorem ipsum dolor sit</li>
<li><i class="icofont icofont-ui-check"></i>Cubitur sollicitudin fentum</li>
<li class="cross"><i class="icofont icofont-ui-close"></i>Nullam interdum enim</li>
<li class="cross"><i class="icofont icofont-ui-close"></i>Donec ultricies metus</li>
<li class="cross"><i class="icofont icofont-ui-close"></i>Pellentesque eget nibh</li>
</ul>
<div class="table-bottom">
<a class="btn" href="#">Book Now</a>
</div>

</div>
</div>


<div class="col-lg-4 col-md-12 col-12">
<div class="single-table">

<div class="table-head">
<div class="icon">
<i class="icofont icofont-tooth"></i>
</div>
<h4 class="title">Teeth Whitening</h4>
<div class="price">
<p class="amount">$299<span>/ Per Visit</span></p>
</div>
</div>

<ul class="table-list">
<li><i class="icofont icofont-ui-check"></i>Lorem ipsum dolor sit</li>
<li><i class="icofont icofont-ui-check"></i>Cubitur sollicitudin fentum</li>
<li><i class="icofont icofont-ui-check"></i>Nullam interdum enim</li>
<li class="cross"><i class="icofont icofont-ui-close"></i>Donec ultricies metus</li>
<li class="cross"><i class="icofont icofont-ui-close"></i>Pellentesque eget nibh</li>
</ul>
<div class="table-bottom">
<a class="btn" href="#">Book Now</a>
</div>

</div>
</div>


<div class="col-lg-4 col-md-12 col-12">
<div class="single-table">

<div class="table-head">
<div class="icon">
<i class="icofont-heart-beat"></i>
</div>
<h4 class="title">Heart Suggery</h4>
<div class="price">
<p class="amount">$399<span>/ Per Visit</span></p>
</div>
</div>

<ul class="table-list">
<li><i class="icofont icofont-ui-check"></i>Lorem ipsum dolor sit</li>
<li><i class="icofont icofont-ui-check"></i>Cubitur sollicitudin fentum</li>
<li><i class="icofont icofont-ui-check"></i>Nullam interdum enim</li>
<li><i class="icofont icofont-ui-check"></i>Donec ultricies metus</li>
<li><i class="icofont icofont-ui-check"></i>Pellentesque eget nibh</li>
</ul>
<div class="table-bottom">
<a class="btn" href="#">Book Now</a>
</div>

</div>
</div>

</div>
</div>
</section>


<section id="team" class="team section overlay" data-stellar-background-ratio="0.5">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>We Have Specialist Doctors To Solve Your Problems</h2>
<img src="img/section-img2.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-3 col-md-6 col-12" data-tilt>

<div class="single-team">
<div class="t-head">
<img src="img/team1.jpg" alt="#">
<div class="t-icon">
<a href="appointment.html" class="btn">Get Appointment</a>
</div>
</div>
<div class="t-bottom">
<p>Neurosurgeon</p>
<h2><a href="doctor-details.html">Collis Molate</a></h2>
</div>
</div>

</div>
<div class="col-lg-3 col-md-6 col-12 " data-tilt>

<div class="single-team">

<div class="t-head">
<img src="img/team2.jpg" alt="#">
<div class="t-icon">
<a href="appointment.html" class="btn">Get Appointment</a>
</div>
</div>

<div class="t-bottom">
<p>Neurosurgeon</p>
<h2><a href="doctor-details.html">Domani Plavon</a></h2>
</div>

</div>

</div>
<div class="col-lg-3 col-md-6 col-12 " data-tilt>

<div class="single-team">

<div class="t-head">
<img src="img/team3.jpg" alt="#">
<div class="t-icon">
<a href="appointment.html" class="btn">Get Appointment</a>
</div>
</div>

<div class="t-bottom">
<p>Dental Surgeon</p>
<h2><a href="doctor-details.html">John Mard</a></h2>
</div>

</div>

</div>
<div class="col-lg-3 col-md-6 col-12" data-tilt>

<div class="single-team">

<div class="t-head">
<img src="img/team4.jpg" alt="#">
<div class="t-icon">
<a href="appointment.html" class="btn">Get Appointment</a>
</div>
</div>

<div class="t-bottom">
<p>Neurosurgeon</p>
<h2><a href="doctor-details.html">Amanal Frond</a></h2>
</div>

</div>

</div>
</div>
</div>
</section>


<section class="blog section" id="blog">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>Keep up with Our Most Recent Medical News.</h2>
<img src="img/section-img.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-4 col-md-6 col-12">

<div class="single-news">
<div class="news-head">
<img src="img/blog1.jpg" alt="#">
</div>
<div class="news-body">
<div class="news-content">
<div class="date">22 Aug, 2020</div>
<h2><a href="blog-single.html">We have annnocuced our new product.</a></h2>
<p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-news">
<div class="news-head">
<img src="img/blog2.jpg" alt="#">
</div>
<div class="news-body">
<div class="news-content">
<div class="date">15 Jul, 2020</div>
<h2><a href="blog-single.html">Top five way for solving teeth problems.</a></h2>
<p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
</div>
</div>
</div>

</div>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-news">
<div class="news-head">
<img src="img/blog3.jpg" alt="#">
</div>
<div class="news-body">
<div class="news-content">
<div class="date">05 Jan, 2020</div>
<h2><a href="blog-single.html">We provide highly business soliutions.</a></h2>
<p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
</div>
</div>
</div>

</div>
</div>
</div>
</section>


<div class="clients overlay">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-12">
<div class="owl-carousel clients-slider">
<div class="single-clients">
<img src="img/client1.png" alt="#">
</div>
<div class="single-clients">
<img src="img/client2.png" alt="#">
</div>
<div class="single-clients">
<img src="img/client3.png" alt="#">
</div>
<div class="single-clients">
<img src="img/client4.png" alt="#">
</div>
<div class="single-clients">
<img src="img/client5.png" alt="#">
</div>
<div class="single-clients">
<img src="img/client1.png" alt="#">
</div>
<div class="single-clients">
<img src="img/client2.png" alt="#">
</div>
<div class="single-clients">
<img src="img/client3.png" alt="#">
</div>
<div class="single-clients">
<img src="img/client4.png" alt="#">
</div>
</div>
</div>
</div>
</div>
</div>


<section class="appointment">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="section-title">
<h2>We Are Always Ready to Help You. Book An Appointment</h2>
<img src="img/section-img.png" alt="#">
<p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-6 col-md-12 col-12">
<form class="form" action="#">
<div class="row">
<div class="col-lg-6 col-md-6 col-12">
<div class="form-group">
<input name="name" type="text" placeholder="Name">
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<div class="form-group">
<input name="email" type="email" placeholder="Email">
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<div class="form-group">
<input name="phone" type="text" placeholder="Phone">
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<div class="form-group">
<div class="nice-select form-control wide" tabindex="0"><span class="current">Department</span>
<ul class="list">
<li data-value="1" class="option selected ">Department</li>
<li data-value="2" class="option">Cardiac Clinic</li>
<li data-value="3" class="option">Neurology</li>
<li data-value="4" class="option">Dentistry</li>
<li data-value="5" class="option">Gastroenterology</li>
</ul>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<div class="form-group">
<div class="nice-select form-control wide" tabindex="0"><span class="current">Doctor</span>
<ul class="list">
<li data-value="1" class="option selected ">Doctor</li>
<li data-value="2" class="option">Dr. Akther Hossain</li>
<li data-value="3" class="option">Dr. Dery Alex</li>
<li data-value="4" class="option">Dr. Jovis Karon</li>
</ul>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-12">
<div class="form-group">
<input type="text" placeholder="Date" id="datepicker">
</div>
</div>
<div class="col-lg-12 col-md-12 col-12">
<div class="form-group">
<textarea name="message" placeholder="Write Your Message Here....."></textarea>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-5 col-md-4 col-12">
<div class="form-group">
<div class="button">
<button type="submit" class="btn">Book An Appointment</button>
</div>
</div>
</div>
<div class="col-lg-7 col-md-8 col-12">
<p>( We will be confirm by an Text Message )</p>
</div>
</div>
</form>
</div>
<div class="col-lg-6 col-md-12 ">
<div class="appointment-image">
<img src="img/contact-img.png" alt="#">
</div>
</div>
</div>
</div>
</section>


<section class="newsletter section">
<div class="container">
<div class="row ">
<div class="col-lg-6  col-12">

<div class="subscribe-text ">
<h6>Sign up for newsletter</h6>
<p class>Cu qui soleat partiendo urbanitas. Eum aperiri indoctum eu,<br> homero alterum.</p>
</div>

</div>
<div class="col-lg-6  col-12">

<div class="subscribe-form ">
<form action="https://wpthemesgrid.com/themes/mediplus/mail/mail.php" method="get" class="newsletter-inner">
<input name="EMAIL" placeholder="Your email address" class="common-input" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your email address'" required type="email">
<button class="btn">Subscribe</button>
</form>
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
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7caa4f33fd042c59","version":"2023.4.0","r":1,"b":1,"token":"3248e93e0d6447329c4d6bcc351d5700","si":100}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:37 GMT -->
</html>