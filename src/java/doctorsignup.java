

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import vmm.DBLoader;
import vmm.FileUploader;

@MultipartConfig
public class doctorsignup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          String doctorname = request.getParameter("doctorname");
          String email = request.getParameter("email");
          String password = request.getParameter("password");
           String bio = request.getParameter("bio");
          String phoneno = request.getParameter("phoneno");
          String start_slot = request.getParameter("start_slot");
          String end_slot = request.getParameter("end_slot");
          String slot_price = request.getParameter("slot_price");
          String degree = request.getParameter("catid");
          
          Part photo = request.getPart("photo");
          String mypath = request.getServletContext().getRealPath("/myuploads");
          String randomename = System.currentTimeMillis() + "";
          String filename = FileUploader.savefileonserver(photo, mypath, randomename);
       try {
         
            ResultSet rs = DBLoader.executeQuery("select * from doctor where email='"+email+"'");

            if (rs.next()) {
                out.print("exist");
            } else {
                rs.moveToInsertRow();
                rs.updateString("doctorname", doctorname);
                rs.updateString("email", email);
                rs.updateString("password", password);
                rs.updateString("phoneno", phoneno);
                rs.updateString("start_slot", start_slot);
                rs.updateString("end_slot", end_slot);
                rs.updateString("photo", "./myuploads/" + filename);
                rs.updateInt("slot_price", Integer.parseInt(slot_price));
                rs.updateInt("degree", Integer.parseInt(degree));
                 rs.updateString("bio", bio);
                rs.insertRow();
                ResultSet rs1 = DBLoader.executeQuery("select * from doctor_schedule"); 
                rs1.moveToInsertRow();
                rs1.updateString("doctor", email);
                rs1.insertRow();
                out.print( "success");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
