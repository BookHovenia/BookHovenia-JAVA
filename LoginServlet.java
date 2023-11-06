package user_servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("password");

        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/website-main?useSSL=false", "root", "");

            String selectQuery = "SELECT * FROM users WHERE uemail = ? AND upwd = ?";
            PreparedStatement pst = con.prepareStatement(selectQuery);
            pst.setString(1, uemail);
            pst.setString(2, upwd);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                // User login is successful
                // You can store user information in a session for future use
                HttpSession session = request.getSession();
                session.setAttribute("user", uemail);

                response.sendRedirect("homepage.jsp"); // Redirect to a welcome page or dashboard
            } else {
                // Login failed
                response.sendRedirect("login.jsp"); // Redirect back to the login page with an error message
            }

            rs.close();
            pst.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            // Handle the exception appropriately
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

