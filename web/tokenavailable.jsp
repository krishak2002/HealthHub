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
  <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<%
    String email = request.getParameter("email");
    int price = Integer.parseInt(request.getParameter("price"));
    %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" id="colors">
</head>
<body onload="fetch(0)">

    <%@include file="usernav.jsp" %>


<div class="breadcrumbs overlay">
<div class="container">
<div class="bread-inner">
<div class="row">
<div class="col-12">
<h2>Check Token Availability</h2>
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
   
          <%
                String nowdate =  LocalDate.now().toString();
             String nowday = LocalDate.now().getDayOfWeek().toString();
              %>
              <li style="text-align: center"><a id="0" onclick="fetch(0)" class="<%=nowdate%>"><%=nowday%></a><%=nowdate%></li>
              <%
              for(int i =1; i<7; i++)
              {
             String date =  LocalDate.now().plusDays(i).toString();
             String day = LocalDate.now().getDayOfWeek().plus(i).toString();
             System.out.println("---->"+date);
             System.out.println("----->"+day);
              %>
              <li style="text-align: center"><a  id="<%=i%>" onclick="fetch(<%=i%>)" class="<%=date%>"><%=day%></a><%=date%></li>
        <%
            }
            %>
   
  </ul>
            <div id="ans"></div>
    </div>
</div>

    <%@include file="footer.jsp" %>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
      function fetch(id)
      {
          var ans="";
     var xhttp = new XMLHttpRequest();
    var form = new FormData();
    
    form.append("day",document.getElementById(id).text);
    form.append("email",'<%=email%>');
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
          if(this.response.trim() === "success")
           {
//         Swal.fire(
//  'Good job!',
//  'You clicked the button!',
//  'success'
//)
 ans="<h1 style=\"color:green; text-align: center\">Token distribution Available<br><br><button class='btn btn-primary' onclick=\"paymentlogic('"+document.getElementById(id).text+"','"+document.getElementById(id).className+"',"+id+")\">Get Your Token number</button></h1>";
      document.getElementById("ans").innerHTML = ans;
          
            }
               else
          {
               ans="<h1 style=\"color:Red; text-align: center\">Token distribution Unavailable</h1>";
               document.getElementById("ans").innerHTML = ans;
          }
        
    }
  }
  xhttp.open("POST", "./tokenavailable", true);
  xhttp.send(form);  
        
          
      }
      
        function paymentlogic(day,date,id)
            {



                var options = {
                    "key": "rzp_test_96HeaVmgRvbrfT",
                    "amount": <%=price%> + "00",
                    "name": "Netflix",
                    "description": "",
                    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOmghn1er2yRA0yXfMRmroSSpWEdAGNV5KHg&usqp=CAU",
                    "handler": function (response) {

                        if (response.razorpay_payment_id == "" || response.razorpay_payment_id == undefined) {

                            window.location.href = "payment_action?status=failed";
                            // paymentfail(authormobile,"Payment failed!");

                            alert("Payment Failed")

                        } else {

                            gettoken(day,date,id);
                        }
                    },
                    "prefill": {
                        "name": "Netflix",
                        "email": ""
                    },
                    "notes": {
                        "address": ""
                    },
                    "theme": {
                        "color": "#F37254"
                    },
                    "modal": {
                        "ondismiss": function () {
                            $("#statusmodal").modal("show");
                            document.getElementById("status").innerHTML = "Payment failed ! Try again";
                        }
                    }
                };



                var rzp1 = new Razorpay(options);
                rzp1.on('payment.failed', function (response) {
                    console.log("a2");
                    console.log(response.error.code);

                    alert("Payment Failed");


                    // paymentfail(authormobile,"Payment failed!");
                    // rzp1.close();
                    // alert(response.error.code);
                    // alert(response.error.description);
                    // alert(response.error.source);
                    // alert(response.error.step);
                    // alert(response.error.reason);
                    // alert(response.error.metadata.order_id);
                    // alert(response.error.metadata.payment_id);

                });
                rzp1.open();
            }
      function gettoken(day,date,id)
      {
       
           var ans="";
     var xhttp = new XMLHttpRequest();
    var form = new FormData();
    
    form.append("day",document.getElementById(id).text);
    form.append("date",document.getElementById(id).className);
    form.append("email",'<%=email%>');
    form.append("price",<%=price%>);
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
          if(this.response.trim() === "success")
           {
         Swal.fire(
  'Good job!',
  'You clicked the button!',
  'success'
);
 window.location.href='./tokenscreen.jsp?email=<%=email%>';
          
            }
               else
          {
             alert("fail");
          }
        
    }
  }
  xhttp.open("POST", "./buytoken", true);
  xhttp.send(form);  
      }
      </script>
</body>

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/service-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:54 GMT -->
</html>