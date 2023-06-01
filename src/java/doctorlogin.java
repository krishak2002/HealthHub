
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import vmm.DBLoader;

@MultipartConfig
public class doctorlogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          
          HttpSession session = request.getSession();
          
          String email = request.getParameter("email");
          String password = request.getParameter("password");
          System.out.println("---->"+email+"-->"+password);
         try
         {
          ResultSet rs =DBLoader.executeQuery("select * from doctor where email='"+email+"' and password = '"+password+"'");
        if(rs.next())
        {
            session.setAttribute("email", email);
            out.println("success");
        }
        else
        {
            out.println("fail");
        }
         }
         catch(Exception ex)
         {
             ex.printStackTrace();
             
         }
    }

}
