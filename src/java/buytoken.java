

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import vmm.DBLoader;
import vmm.FileUploader;

@MultipartConfig
public class buytoken extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          HttpSession session = request.getSession();
          String day = request.getParameter("day");
          String date = request.getParameter("date");
           String doctoremail = request.getParameter("email");
          String price = request.getParameter("price");
          String email = (String) session.getAttribute("useremail");
       try {
         
            ResultSet rs = DBLoader.executeQuery("select * from booking");

                rs.moveToInsertRow();
                rs.updateString("patientemail", email);
                rs.updateString("date", date);
                rs.updateString("day", day);
                rs.updateString("doctor", doctoremail);
                rs.updateString("price", price);
                rs.insertRow();
                out.print( "success");
            

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
