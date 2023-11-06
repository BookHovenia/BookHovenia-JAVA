package bean_user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseHelper {
    private static final String DB_URL = "jdbc:mysql://your-database-host:3306/shipping_details";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "";

    public static void insertShippingInfo(String firstName, String lastName, String address, String country, String phoneNumber, String zipcode, String city, String state) {
        try {
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
            String insertQuery = "INSERT INTO shipping_info (first_name, last_name, address, country, phone_number, zip_code, city, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, lastName);
            preparedStatement.setString(3, address);
            preparedStatement.setString(4, country);
            preparedStatement.setString(5, phoneNumber);
            preparedStatement.setString(6, zipcode);
            preparedStatement.setString(7, city);
            preparedStatement.setString(8, state);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
