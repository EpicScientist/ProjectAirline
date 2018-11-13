package ServletPages;

import DataLayer.LoginDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LoginDao dao=new LoginDao();

        PrintWriter out = response.getWriter();
        //get data from login page
        String userName = request.getParameter("userName");
        String password = request.getParameter("pass");

        // verify user
        if (dao.check(userName,password)) {
            //session persists for a specified time period, across more than one connection or page request from the use
            HttpSession session = request.getSession();
            session.setAttribute("uName", userName);

            response.sendRedirect("welcomeHome.jsp");
        } else {
            response.sendRedirect("login_signup.jsp");

        }
    }
}
