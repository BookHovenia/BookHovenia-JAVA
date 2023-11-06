package bean_admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseConnector {
    private static final String jdbcURL = "jdbc:mysql://localhost:3306/book_store";
    private static final String jdbcUsername = "root";
    private static final String jdbcPassword = "";

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static ResultSet fetchData() {
        Connection connection = getConnection();
        ResultSet resultSet = null;
        try {
            Statement statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM contact_messages");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultSet;
    }
}

