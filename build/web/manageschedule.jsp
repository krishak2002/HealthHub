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
<link href='https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css' rel='stylesheet'>
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
    <div class="container mt-3">

<%
String MONDAY ="";
  String  TUESDAY = "";
  String  WEDNESDAY = "";
  String  THURSDAY = "";
  String  FRIDAY = "";
  String  SATURDAY = "";
  String  SUNDAY = "";
try {
     ResultSet rs= DBLoader.executeQuery("select * from doctor_schedule where doctor='"+email+"'");
 if(rs.next())
  {
  MONDAY = rs.getString("MONDAY");
    TUESDAY = rs.getString("TUESDAY");
   WEDNESDAY = rs.getString("WEDNESDAY");
    THURSDAY = rs.getString("THURSDAY");
    FRIDAY = rs.getString("FRIDAY");
    SATURDAY = rs.getString("SATURDAY");
   SUNDAY = rs.getString("SUNDAY");
      }
}
    catch (Exception ex) {
ex.printStackTrace();
    }
    %>
      <table id="example" style="width:100%">
                <thead>
                    <tr>
                        <td>Monday</td>
                         <td>Tuesday</td>
                          <td>Wednesday</td><!--
-->                           <td>Thursday</td><!--
-->                           <td>Friday</td><!--
-->                         <td>Saturday</td><!--
-->                         <td>Sunday</td>
                    </tr>
                </thead>
                <tbody>
 <tr>
                 <td><button onclick="change('MONDAY')"><%=MONDAY%></button></td>
                <td><button onclick="change('TUESDAY')"><%=TUESDAY%></button></td>
                <td><button onclick="change('WEDNESDAY')"><%=WEDNESDAY%></button></td><!--
-->                <td><button onclick="change('THURSDAY')"><%=THURSDAY%></button></td><!--
-->                <td> <button onclick="change('FRIDAY')"><%=FRIDAY%></button></td><!--
-->                <td> <button onclick="change('SATURDAY')"><%=SATURDAY%></button></td><!--
-->                <td><button onclick="change('SUNDAY')"><%=SUNDAY%></button></td>
    
    </tr> 
    </tbody>
         </table>
    </div>
    <%@include file="footer.jsp" %>
      <script  src="./script.js"></script>
      <script src='https://code.jquery.com/jquery-3.5.1.js'></script>
<script src='https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js'></script>
<script>
    $(document).ready(function () {
    $('#example').DataTable();
});

function change(day)
{
       var ans="";
     var xhttp = new XMLHttpRequest();
    var form = new FormData();
    
    form.append("email",'<%=email%>');
    form.append("day",day);
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
       alert(this.response);
          if(this.response.trim() === "success")
           {

          window.location.reload();
          
            }
        
    }
  }
  xhttp.open("POST", "./change", true);
  xhttp.send(form);
}
</script>
</body>

<!-- Mirrored from wpthemesgrid.com/themes/mediplus/doctor-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 21 May 2023 05:10:53 GMT -->
</html>