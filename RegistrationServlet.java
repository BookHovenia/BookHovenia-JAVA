package user_servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("password");
        String confirmPwd = request.getParameter("confirmPassword");

        if (!upwd.equals(confirmPwd)) {
            response.sendRedirect("registration.jsp"); // Redirect back to the registration page
            return;
        }

        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/website-main?useSSL=false", "root", "");

            String insertQuery = "INSERT INTO users(uname, upwd, uemail) VALUES (?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(insertQuery);
            pst.setString(1, uname);
            pst.setString(2, upwd);
            pst.setString(3, uemail);

            int rowCount = pst.executeUpdate();

            if (rowCount > 0) {
                response.sendRedirect("login.jsp"); // Redirect to a success page
            } else {
                response.sendRedirect("registration.jsp"); // Redirect back to the registration page
            }

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
