package DataLayer;

import java.sql.*;

public class LoginDao {
    //db connect
    public boolean check(String userName, String password) {
        try {
            Connection connection=MyDB.base();
            PreparedStatement statement = connection.prepareStatement("SELECT email, password FROM epic_airline.login_signup WHERE email=? AND password=?");

            statement.setString(1, userName);
            statement.setString(2, password);

            ResultSet set = statement.executeQuery();

            if (set.next()){
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}
