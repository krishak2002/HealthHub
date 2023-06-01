<%@page import="java.sql.ResultSet"%>
<%@page import="vmm.DBLoader"%>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/doctors.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:52 GMT -->
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






<%
  int cat = Integer.parseInt(request.getParameter("id"));
   String email = (String) session.getAttribute("useremail");
    if(session.getAttribute("useremail")== null)
    {
    response.sendRedirect("userlogin.jsp");
}
%>
<link rel="stylesheet" id="colors">
</head>
<body>

    <%@include file="usernav.jsp" %>


<div class="breadcrumbs overlay">
<div class="container">
<div class="bread-inner">
<div class="row">
<div class="col-12">
<h2>Meet Our Qualified Doctors</h2>
<ul class="bread-list">
<li><a href="index.html">Home</a></li>
<li><i class="icofont-simple-right"></i></li>
<li class="active">Doctors</li>
</ul>
</div>
</div>
</div>
</div>
</div>


<section id="team" class="team section single-page">
<div class="container">
<div class="row">
    <%
        try {
                
            
        ResultSet rs = DBLoader.executeQuery("select * from doctorconsultation.doctor join doctorconsultation.category where doctor.degree="+cat+" and doctor.status='approve' and  category.id="+cat);
        while(rs.next())
        {
        %>
<div class="col-lg-4 col-md-6 col-12">

<div class="single-team">
<div class="t-head">
<img src="<%=rs.getString("photo")%>" alt="#">
<div class="t-icon">
<a href="doctor_details.jsp?email=<%=rs.getString("email")%>" class="btn">Get Appointment</a>
</div>
</div>
<div class="t-bottom">
<p><%=rs.getString("category.catname")%></p>
<h2><a href="doctor_details.jsp?email=<%=rs.getString("email")%>"><%=rs.getString("doctorname")%></a></h2>
</div>
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



        <%@include file="footer.jsp" %>

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
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7caa4f75a8329156","version":"2023.4.0","r":1,"b":1,"token":"3248e93e0d6447329c4d6bcc351d5700","si":100}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/doctors.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:52 GMT -->
</html>