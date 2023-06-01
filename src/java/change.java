import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vmm.DBLoader;

@MultipartConfig
public class change extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
         String day = request.getParameter("day");
        String email = request.getParameter("email");
       try {
         
            ResultSet rs = DBLoader.executeQuery("select * from doctor_schedule where doctor ='"+email+"'");

            if (rs.next()) {
                  rs.moveToCurrentRow();
                  if(rs.getString(day).equals("available"))
                  {
                       rs.updateString(day, "unavailable");
                rs.updateRow();
                out.print( "success");
                  }
                  else
                  {
                           rs.updateString(day, "available");
                rs.updateRow();
                out.print( "success");
                  }
             
            } else {
              out.println("error");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
