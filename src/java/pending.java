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
public class pending extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
         int id = Integer.parseInt(request.getParameter("id"));
         System.out.println("oye aa hgi id"+id);
       try {
         
            ResultSet rs = DBLoader.executeQuery("select * from booking where id="+id);

            if (rs.next()) {
                  rs.moveToCurrentRow();
              rs.updateString("status", "pending");
                rs.updateRow();
                out.print( "success");
            } else {
              out.println("error");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
