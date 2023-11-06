<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="bean_admin.DatabaseConnector" %>

<!DOCTYPE html>
<html>
<head>
    <title>Data Display</title>
     
</head>

<body>
 <div style="background-color: navy; padding: 10px;">
        <h1 style="color: white; text-align: center;">Book Hovenia - Feedback Panel</h1>
    </div>
<div class="content-wrapper">
 <section class="content-header">
    <table border="2">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>email</th>
            <th>Feedback</th>
        </tr>

        <%
            ResultSet resultSet = DatabaseConnector.fetchData();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String message = resultSet.getString("message");
        %>
            <tr>
                <td><%= id %></td>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= message %></td>
            </tr>
        <%
            }
        %>
    </table>
    </section>
    </div>
</body>
</html>
