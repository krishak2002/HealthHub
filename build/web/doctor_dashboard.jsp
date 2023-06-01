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
    String email = (String) session.getAttribute("email");
    if(session.getAttribute("email")== null)
    {
    response.sendRedirect("doctor_login.jsp");
}
    %>



<link rel="stylesheet" href="./style_1.css">




<link rel="stylesheet" id="colors">
</head>
<body>

    <%@include file="doctornav.jsp" %>



<%
try {
     ResultSet rs= DBLoader.executeQuery("select * from doctor where email='"+email+"'");
  if(rs.next())
  {
  int price  = rs.getInt("slot_price");
%>
<div class="breadcrumbs overlay">
<div class="container">
<div class="bread-inner">
<div class="row">
<div class="col-12">
<h2>Welcome <%=rs.getString("doctorname")%></h2>
<ul class="bread-list">
<li><a href="index.html">Home</a></li>
<li><i class="icofont-simple-right"></i></li>
<li class="active">Doctor Details</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="doctor-details-area section">
<div class="container">
<div class="row">
<div class="col-lg-5">
<div class="doctor-details-item doctor-details-left">
<img src="<%=rs.getString("photo")%>" alt="#">
<div class="doctor-details-contact">
<h3>Contact info</h3>
<ul class="basic-info">
<li>
<i class="icofont-ui-call"></i>
<%=rs.getString("phoneno")%>
</li>
<li>
<i class="icofont-ui-message"></i>
<%=rs.getString("email")%>
</li>
<li>
<i class="icofont-location-pin"></i>
4th Floor, 408 No Chamber
</li>
</ul>

<ul class="social">
<li><a href="#"><i class="icofont-facebook"></i></a></li>
<li><a href="#"><i class="icofont-google-plus"></i></a></li>
<li><a href="#"><i class="icofont-twitter"></i></a></li>
<li><a href="#"><i class="icofont-vimeo"></i></a></li>
<li><a href="#"><i class="icofont-pinterest"></i></a></li>
</ul>

<div class="doctor-details-work">
<h3>Working hours</h3>
<ul class="time-sidual">
    <li class="day">Start Slot <span><%=rs.getString("start_slot")%></span></li>
<li class="day">End Slot <span><%=rs.getString("end_slot")%></span></li>
</ul>
</div>
</div>
</div>
</div>
<div class="col-lg-7">
<div class="doctor-details-item">
<div class="doctor-details-right">
<div class="doctor-name">
<h3 class="name"><%=rs.getString("doctorname")%></h3>
<p class="deg">Neurosurgeon.</p>
<p class="degree">MBBS in Neurology, PHD in Neurosurgeon.</p>
</div>
<div class="doctor-details-biography">
<h3>Biography</h3>
<p><%=rs.getString("bio")%></p><br>
</div>
<div class="doctor-details-biography">
<h3>Doctor Gallery</h3>
<main class="main">
	<div class="container">
		<div class="scroll">
                    <%
                        try {
                                
                           
                        ResultSet rs1 = DBLoader.executeQuery("select * from gallery where doctor='"+email+"'");
                        while(rs1.next())
                        {
                        
                    
                        %>
			<div class="card">
				<div class="card-image">
					<img src="<%=rs1.getString("photo")%>" loading="lazy" class="responsive" alt="Images">
				</div>
				
			</div>
                        <%
                            }
 } catch (Exception e) {
                            }
                            %>
		</div>
	</div>
</main>

</div>
               
                    
                <a href="./tokenavailable.jsp?email=<%=email%>&price=<%=price%>"><button type="button" class="btn" type="button">Book Your Token</button></a>
                    
                    
            

</div>
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