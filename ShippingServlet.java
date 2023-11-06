package user_servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ShippingServlet")
public class ShippingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the form parameters
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String address = request.getParameter("address");
        String country = request.getParameter("country");
        String phoneNumber = request.getParameter("Phone Number");
        String zipCode = request.getParameter("zipcode");
        String city = request.getParameter("city");
        String state = request.getParameter("state");

        // Database connection parameters
        String jdbcURL = "jdbc:mysql://localhost:3306/book_store";
        String dbUser = "root";
        String dbPassword = "";
        
        
        request.setAttribute("firstname", firstName);
        request.setAttribute("lastname", lastName);
        request.setAttribute("address", address);
        request.setAttribute("country", country);
        request.setAttribute("Phone Number",  phoneNumber);
        request.setAttribute(" zipcode",  zipCode);
        request.setAttribute("city", city);
        request.setAttribute("state",state);
        
        
        // Set other request attributes for shipping information
        request.getRequestDispatcher("payment.jsp").forward(request, response);
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // SQL query to insert shipping details into the table
            String sql = "INSERT INTO shipping_details (first_name, last_name, address, country, phone_number, zip_code, city, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            // Create a PreparedStatement
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, lastName);
            preparedStatement.setString(3, address);
            preparedStatement.setString(4, country);
            preparedStatement.setString(5, phoneNumber);
            preparedStatement.setString(6, zipCode);
            preparedStatement.setString(7, city);
            preparedStatement.setString(8, state);

            // Execute the insert query
            int rowsAffected = preparedStatement.executeUpdate();

            // Close the database connection
            preparedStatement.close();
            connection.close();

            if (rowsAffected > 0) {
                // Redirect to payment.jsp if submission is successful
                response.sendRedirect("payment.jsp");
                // Show a simple alert for submission success
                response.getWriter().println("<script>alert('Submission Successful');</script>");
            } else {
            	response.sendRedirect("buynow.jsp");
                // Submission failed, show a simple alert message for failure
                response.getWriter().println("<script>alert('Submission Failed. Please try again later.');</script>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            
            // Handle database errors and show a simple alert message for errors
            response.getWriter().println("<script>alert('Submission Failed. An error occurred.');</script>");
            
        }
    }
}
