//package DataLayer;
//
//import javax.servlet.RequestDispatcher;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//
//public class SearchTest {
//
//    public int search(String name) {
//        try {
//
//            Class.forName("com.mysql.jdbc.Driver");
//            //get connection
//            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "epic");
//
//            PreparedStatement statement = connection.prepareStatement("SELECT FromCity FROM epic_airline.bookflight WHERE FromCity LIKE '/?%/'");
//            statement.setString(1, name);
//
//
//            return statement.executeUpdate();
//        }catch (Exception e){
//            System.out.println(e);
//        }
//
//    }
//}
