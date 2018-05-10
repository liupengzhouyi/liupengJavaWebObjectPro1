package lp_2018_05_10_01ForJavaBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class lp_linkDatabase {
    public Connection getConnection() {
        Connection lpConnection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                lpConnection = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/web_database",
                        "root",
                        "lp184126"
                );
                return lpConnection;
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
