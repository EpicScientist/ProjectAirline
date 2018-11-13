package ServletPages;

import DataLayer.MyDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        // print on html
        PrintWriter out = response.getWriter();

        String name = request.getParameter("userName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        try {

            // JDBC driver name and database URL && Database credentials
            Connection con= MyDB.base();

            PreparedStatement ps = con.prepareStatement("insert into epic_airline.login_signup (Email,Password,UserName) values(?,?,?)");

            ps.setString(1, email);
            ps.setString(2, password);
            ps.setString(3, name);

            int i = ps.executeUpdate();
            if (i > 0)
                out.print("You are successfully registered...");else out.print("sorry");

        } catch (Exception e2) {
            System.out.println(e2);
        }

        out.close();
    }
}
