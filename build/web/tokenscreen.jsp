<%@page import="java.sql.ResultSet"%>
<%@page import="vmm.DBLoader"%>
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
    <script>
        // grab the UI elements to work with
const textEl = document.getElementById('text');
const speakEl = document.getElementById('speak');

//// click handler
//speakEl.addEventListener('click', speakText);

function speakText() {
  // stop any speaking in progress
  window.speechSynthesis.cancel();

  // speak text
  const text = textEl.value;
  const utterance = new SpeechSynthesisUtterance(text);
  window.speechSynthesis.speak(utterance);
}

        </script>
<%
    String email = request.getParameter("email");
    String pemail = (String) session.getAttribute("useremail");
    %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" id="colors">
</head>
<body onload="speakText()">
    <%
         
        int pid=0;  
          String patient="";
        int bid=0;
        try
        {
        ResultSet rs2 = DBLoader.executeQuery("select min(id) as bid from booking where doctor = '"+email+"' and date='"+LocalDate.now()+"' and status='pending'");
        if(rs2.next())
        {
       
        
        bid = rs2.getInt("bid");
        System.out.println("---->"+bid);
        
    
        
    }
        
      
        ResultSet rs1 = DBLoader.executeQuery("select * from booking where doctor = '"+email+"' and date='"+LocalDate.now()+"' and patientemail = '"+pemail+"'");
if(rs1.next())
{
 patient = rs1.getString("patientemail");
 pid = rs1.getInt("id");
System.out.println("----->"+patient);
 String status = rs1.getString("status");
    if(status.equals("completed"))
        {
          response.sendRedirect("userbookings.jsp");
    }
%>
<h1 style="text-align: center" >Your Token Number is: <%=rs1.getInt("id")%></h1>
<%
    }    
    %>
<div class="service-details-area section">
<div class="container">

    <div class="row">
        <div class="col-lg-8">
            <img src="tokenroom.gif" style="width: 500px">
        </div>
         <div class="col-lg-4">
             
             <div class="row" >
                 
                   <div class="col-lg-8 col-md-8 col-8" style="color:red;">
                     <h4>Tokens</h4>
                     </div>
                 
                  <div class="col-lg-4 col-md-4 col-4" style="color:red;">
                         <h4>Status</h4>
                     </div>
                
               
             <%
                 ResultSet rs = DBLoader.executeQuery("select * from booking where doctor = '"+email+"' and date='"+LocalDate.now()+"'  and status='pending' order by id");
                 while(rs.next())
                 {
                  
                    int id = rs.getInt("id");
                    if(patient.equals(rs.getString("patientemail")) && rs.getString("status").equals("completed"))
                    {
                    response.sendRedirect("index.jsp");
             }
                else if(id == bid)
                 {
                 %>
                 
                  
                     <div class="col-lg-8 col-md-8 col-8" style="color:green;">
                         <h4><%=rs.getInt("id")%></h4>
                     </div>
             
                 <div class="col-lg-4 col-md-4 col-4" style="color:green;">
                     <h4 style="font-weight: bold">In Progress</h4>
                     </div>
                
                     
                         <%
                             }
else
{
                             %>
                             
                               <div class="col-lg-8 col-md-8 col-8" style="color:red;">
                         <h4><%=rs.getInt("id")%></h4>
                     </div>
                     
                
                             
                              <div class="col-lg-4 col-md-4 col-4" style="color:red;">
                     <h4 style="font-weight: bold">Waiting</h4>
                     </div>
                             
                 <%
                     }
                     }
}
catch(Exception ex)
{
ex.printStackTrace();
}
                     %>
                      </div>
        </div>
    </div>
     </div>
</div>

    <%@include file="footer.jsp" %>
    <script>
        setTimeout(function(){
   window.location.reload();
}, 5000);
        </script>
</body>

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/service-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:54 GMT -->
</html>