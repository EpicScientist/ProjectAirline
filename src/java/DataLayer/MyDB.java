package DataLayer;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyDB {
    public static Connection base(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //get connection
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/epic_airline", "root", "epic");
        }catch (Exception e){
            e.printStackTrace();
        }
        return connection;
    }
}
