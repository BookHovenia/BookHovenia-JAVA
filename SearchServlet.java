package user_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchQuery = request.getParameter("searchQuery").trim();

        // Check if the search query corresponds to a known category
        if (searchQuery.equalsIgnoreCase("Romance")) {
            response.sendRedirect("Romance.jsp");
        } else if (searchQuery.equalsIgnoreCase("History")) {
            response.sendRedirect("History.jsp");
        } else if (searchQuery.equalsIgnoreCase("Horror")) {
            response.sendRedirect("Horror.jsp");
        }else if (searchQuery.equalsIgnoreCase("Self Help")) {
                response.sendRedirect("Self help.jsp");
        }else if (searchQuery.equalsIgnoreCase("Finance")) {
            response.sendRedirect("Finance.jsp");
        }else if (searchQuery.equalsIgnoreCase("Crime&Thriller")) {
            response.sendRedirect("Crimethriller.jsp");
        }else if (searchQuery.equalsIgnoreCase("Coding")) {
            response.sendRedirect("Codeing.jsp");
        } else {
            // Handle the case when the search query does not match any category
            response.sendRedirect("homepage.jsp?error=notfound");
        }
    }
}
