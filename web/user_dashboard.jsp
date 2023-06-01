<%@page import="java.sql.ResultSet"%>
<%@page import="vmm.DBLoader"%>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/doctor-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:53 GMT -->
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
    String email = (String) session.getAttribute("useremail");
    if(session.getAttribute("useremail")== null)
    {
    response.sendRedirect("userlogin.jsp");
}
    %>



<link rel="stylesheet" href="./style_1.css">




<link rel="stylesheet" id="colors">
</head>
<body>

    <%@include file="usernav.jsp" %>



<%
try {
     ResultSet rs= DBLoader.executeQuery("select * from users where email='"+email+"'");
  if(rs.next())
  {
%>
<div class="breadcrumbs overlay">
<div class="container">
<div class="bread-inner">
<div class="row">
<div class="col-12">
<h2>Welcome <%=rs.getString("username")%></h2>
<ul class="bread-list">
<li><a href="#">Home</a></li>
<li><i class="icofont-simple-right"></i></li>
<li class="active">user Details</li>
</ul>
</div>
</div>
</div>
</div>
</div>

<%
    }
      } 
    catch (Exception e) {
    }
    %>
    <%@include file="footer.jsp" %>
      <script  src="./script.js"></script>
</body>

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/doctor-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:53 GMT -->
</html>