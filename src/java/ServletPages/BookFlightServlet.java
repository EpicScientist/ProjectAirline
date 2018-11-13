package ServletPages;

import DataLayer.MyDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "BookFlightServlet")
public class BookFlightServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        //request.getAttribute("FromCity");

        String from = request.getParameter("FromCity");
        String to = request.getParameter("ToCity");
        String date = request.getParameter("date");
        String plane = request.getParameter("Plane");
        String cabin = request.getParameter("Cabin");

        out.println(from);
        out.println(to);
        out.println(date);
        out.println(plane);
        out.println(cabin);
        out.println();

        try {
            String Query = "INSERT INTO epic_airline.confirmflight (FromCity,ToCity,Date,Plane,Cabin) VALUES(?,?,?,?,?)";
            Connection connection= MyDB.base();

            PreparedStatement statement = connection.prepareStatement(Query);

            statement.setString(1, from);
            statement.setString(2, to);
            statement.setString(3, date);
            statement.setString(4, plane);
            statement.setString(5, cabin);

            statement.executeUpdate();

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                resultSet.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
            //out.println("Error " + e.getMessage());
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
