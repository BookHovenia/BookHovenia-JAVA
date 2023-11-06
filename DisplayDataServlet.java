package admin_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean_admin.DatabaseConnector;

@WebServlet("/displayData")
public class DisplayDataServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><head><title>Data Display</title></head><body>");
        out.println("<table border='2'>");
        out.println("<tr><th>ID</th><th>Name</th><th>email</th><th>Message</th></tr>");

        ResultSet resultSet = DatabaseConnector.fetchData();
        try {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String message = resultSet.getString("message");
                out.println("<tr><td>" + id + "</td><td>" + name + "</td><td>" + email + "</td><td>" + message + "</td></tr>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        out.println("</table></body></html>");
    }
}

