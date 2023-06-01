

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
public class tokenavailable extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          String day = request.getParameter("day");
         String email = request.getParameter("email");
       try {
         
            ResultSet rs = DBLoader.executeQuery("select * from doctor_schedule where "+day+" = 'available' and doctor='"+email+"' ");

            if (rs.next()) {
                out.print("success");
            } else {
              
                out.print( "fail");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
