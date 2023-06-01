

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import vmm.DBLoader;
import vmm.FileUploader;
import vmm.RDBMS_TO_JSON;

@MultipartConfig
public class todaybookings extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          HttpSession session = request.getSession();
         String email = (String) session.getAttribute("useremail");
         System.out.println("$$$$"+email);
       try {
               String ans = RDBMS_TO_JSON.generateJSON("select * from booking where patientemail='"+email+"' and date='"+LocalDate.now()+"'");
            
out.print(ans);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
