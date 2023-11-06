package user_servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Database connection parameters
        String dbUrl = "jdbc:mysql://localhost:3306/book_store";
        String dbUser = "root";
        String dbPassword = "";

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a database connection
            Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

            // Insert data into the "contact_messages" table
            String sql = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, message);
            int rowsAffected = preparedStatement.executeUpdate();

            // Close the database connection
            conn.close();

            if (rowsAffected > 0) {
                response.getWriter().println("<script>alert('Message sent successfully');</script>");
            } else {
                response.getWriter().println("<script>alert('Message sending failed');</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}

