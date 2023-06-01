<%@page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/service-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:53 GMT -->
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="copyright" content="pavilan">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Token Availability</title>

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
 <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.min.js" integrity="sha512-jt82OWotwBkVkh5JKtP573lNuKiPWjycJcDBtQJ3BkMTzu1dyu4ckGGFmDPxw/wgbKnX9kWeOn+06T41BeWitQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.5/sweetalert2.css" integrity="sha512-yqCpLPABHnpDe3/QgEm1OO4Ohq0BBlBtJGMh5JbhdYEb6nahIm7sbtjilfSFyzUhxdXHS/cm8+FYfNstfpxcrg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<%
    String email = (String) session.getAttribute("useremail");
    
    %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" id="colors">
</head>
<body onload="fetchtoday()">

    <%@include file="usernav.jsp" %>


<div class="breadcrumbs overlay">
<div class="container">
<div class="bread-inner">
<div class="row">
<div class="col-12">
<h2>View Bookings</h2>
<ul class="bread-list">
<li><a href="index.html">Home</a></li>
<li><i class="icofont-simple-right"></i></li>
<li class="active">Service Details</li>
</ul>
</div>
</div>
</div>
</div>
</div>


<div class="service-details-area section">
<div class="container">
<!--    <div class="row">
        <div class="col-lg-8">
        <div class="form-group">
            <label for="datepicker">Choose Date</label>>
            <input type="text" id="datepicker" class="form-control" placeholder="choose Date">
        </div>
        </div>
         <div class="col-lg-4">
        <div class="form-group">
            <label for="datepicker">Click to check token availability</label>>
   <button type="button" class="btn btn-block" type="button">Book Now</button>
        </div>
        </div>
    </div>-->
  <ul class="nav nav-tabs">
   
 
              <li style="text-align: center"><a onclick="fetchtoday()" >Today Bookings</a></li>

              <li style="text-align: center"><a   onclick="fetchupcoming()">Upcoming bookings</a></li>
     
   
  </ul>
            <div id="ans"></div>
    </div>
</div>

    <%@include file="footer.jsp" %>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
      function fetchtoday()
      {
          var ans="";
     var xhttp = new XMLHttpRequest();
    var form = new FormData();
    form.append("email",'<%=email%>');
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
        alert(this.response);
   var mainobj = JSON.parse(this.response);
         var ar = mainobj["ans"];
             
         if(ar.length == 0)
         {
             document.getElementById("ans").innerHTML = "No Today Bookings Available"; 
         }
         else
         {
          ans+="<table id=\"example\" style=\"width:100%\">";
                ans+="<thead>";
                    ans+="<tr>";
                  
                        ans+="<td>Patient Name</td>";
                         ans+="<td>Date</td>";
                          ans+="<td>Day</td>";
                           ans+="<td>Price</td>";
                           ans+="<td>Status</td>";
                         
                    ans+="</tr>";
                ans+="</thead>";
                ans+="<tbody>";
                
         for(var i=0; i<ar.length; i++)
         {
             var obj = ar[i];
         
                ans+="<td>"+obj.patientemail+"</td>";
                ans+="<td>"+obj.date+"</td>";
                ans+="<td>"+obj.day+"</td>";
                ans+="<td>"+obj.price+"</td>";
                ans+="<td>"+obj.status+"</td>";
            }  
                 ans+="</tbody>";
         ans+="</table>";
         document.getElementById("ans").innerHTML = ans;
     }
    }
  }
  xhttp.open("POST", "./todaybookings", true);
  xhttp.send(form);  
        
          
      }
         function fetchupcoming()
      {
          var ans="";
     var xhttp = new XMLHttpRequest();
    var form = new FormData();
    form.append("email",'<%=email%>');
  xhttp.onreadystatechange = function() {
       if (this.readyState === 4 && this.status === 200) {
      
   var mainobj = JSON.parse(this.response);
         var ar = mainobj["ans"];
         
         if(ar.length == 0)
         {
             document.getElementById("ans").innerHTML = "No Upcoming Bookings Available"; 
         }
         else
         {
          ans+="<table id=\"example\" style=\"width:100%\">";
                ans+="<thead>";
                    ans+="<tr>";
                  
                        ans+="<td>Patient Name</td>";
                         ans+="<td>Date</td>";
                          ans+="<td>Day</td>";
                           ans+="<td>Price</td>";
                           ans+="<td>Status</td>";
                         
                    ans+="</tr>";
                ans+="</thead>";
                ans+="<tbody>";
                
         for(var i=0; i<ar.length; i++)
         {
             var obj = ar[i];
         
                ans+="<td>"+obj.patientemail+"</td>";
                ans+="<td>"+obj.date+"</td>";
                ans+="<td>"+obj.day+"</td>";
                ans+="<td>"+obj.price+"</td>";
                ans+="<td>"+obj.status+"</td>";
            }  
                 ans+="</tbody>";
         ans+="</table>";
         document.getElementById("ans").innerHTML = ans;
         
            }
    }
  }
  xhttp.open("POST", "./upcomingbooking", true);
  xhttp.send(form);  
        
          
      }

      </script>
</body>

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/service-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:54 GMT -->
</html>