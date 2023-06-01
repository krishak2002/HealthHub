

import java.io.FileOutputStream;
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
public class usersignup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
          String username = request.getParameter("username");
          String email = request.getParameter("email");
          String password = request.getParameter("password");
          String phoneno = request.getParameter("phoneno");
               try {
         
            ResultSet rs = DBLoader.executeQuery("select * from users where email='"+email+"'");

            if (rs.next()) {
                out.print("exist");
            } else {
                rs.moveToInsertRow();
                rs.updateString("username", username);
                rs.updateString("email", email);
                rs.updateString("password", password);
                rs.updateString("phoneno", phoneno);
                rs.insertRow();
                out.print( "success");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
