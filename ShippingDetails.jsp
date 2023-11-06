<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="admin_servlet.ShippingDetailsDAO" %>
<%@page import="bean_admin.ShippingDetails" %>
<%@page import="java.util.ArrayList" %>
<%@page import= "java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <title>Shipping Details</title>
</head>
<body>
    <div style="background-color: navy; padding: 5px;">
        <h1 style="color: white; text-align: center;">Book Hovenia - ORDER DETAILS PANEL</h1>
    </div>
    <h1>Shipping Details</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>First Name</th>

            <th>Address</th>
            <th>Country</th>
            <th>Phone Number</th>

            <th>City</th>
            <th>State</th>
        </tr>
        <%
        ShippingDetailsDAO dao = new ShippingDetailsDAO();
        List<ShippingDetails> shippingDetailsList = dao.getAllShippingDetails();
        for (ShippingDetails shippingDetails : shippingDetailsList) {
        %>
        <tr>
            <td><%= shippingDetails.getId() %></td>
            <td><%= shippingDetails.getFirstName() %></td>

            <td><%= shippingDetails.getAddress() %></td>
            <td><%= shippingDetails.getCountry() %></td>
            <td><%= shippingDetails.getPhoneNumber() %></td>

            <td><%= shippingDetails.getCity() %></td>
            <td><%= shippingDetails.getState() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
