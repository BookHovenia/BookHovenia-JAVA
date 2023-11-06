package admin_servlet;
import bean_admin.ShippingDetails;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class ShippingDetailsDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/book_store";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    public List<ShippingDetails> getAllShippingDetails() {
        List<ShippingDetails> shippingDetailsList = new ArrayList<>();
        try {
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            String sql = "SELECT * FROM shipping_details";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String firstName = resultSet.getString("first_name");
                String lastName = resultSet.getString("last_name");
                String address = resultSet.getString("address");
                String country = resultSet.getString("country");
                String phoneNumber = resultSet.getString("phone_number");
                String zipCode = resultSet.getString("zip_code");
                String city = resultSet.getString("city");
                String state = resultSet.getString("state");

                ShippingDetails shippingDetails = new ShippingDetails(id, firstName, lastName, address, country, phoneNumber, zipCode, city, state);
                shippingDetailsList.add(shippingDetails);
            }

            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shippingDetailsList;
    }
}
