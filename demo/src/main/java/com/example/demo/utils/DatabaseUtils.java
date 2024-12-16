package example.demo.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtils {

    private static final String URL = "jdbc:mysql://localhost:3306/yourDatabase";
    private static final String USER = "yourUsername";
    private static final String PASSWORD = "yourPassword";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}