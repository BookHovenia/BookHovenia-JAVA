<%@page import="bean_user.CategoryBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean_user.ItemBean"%>
<%@page import="user_servlet.GetAllItemsByCategoryAPI" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>BOOK HOVENIA | Online Book Store</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="selfhelp.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="2a.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://kit.font-awesome.com/a076d05399.js"></script>
</head>

<body>
    <div class="header">
        <div class="left-sec">
            <div class="btn-open">
                <i class="fa-solid fa-bars fa-xl"></i>
            </div>
            <div class="btn-close">
                <i class="fa-solid fa-close"></i>
            </div>
            <img src="logo.png" height=60 width=70>
            <div class="logo">
                BOOK HOVENIA
            </div>
        </div>
        <div class="mid-sec">
            <input class="search-bar" type="text" placeholder="Search for books">
            <button class="search-btn">
                <img class="search-icon" src="search.png">
            </button>
        </div>
        <div class="right-sec">
            <div class="profile-icon-box">
                <i class="fa-solid fa-user fa-xl"></i>
                <div class="sign-in-option">
                  
                </div>
            </div>
           
                <!--<div class="cart">
                    <h2 class="cart-title">My Cart</h2>
                        <div class="cart-content">

                            <div class="cart-box">
                                <img src="Codingpic/CODING1.jpg" alt="" class="cart-img">
                                <div class="detail-box">
                                    <div class="cart-product-title">Beginner's Step-by-Step Coding Course: Learn Computer Programming the Easy Way</div>
                                    <div class="cart-price">Rs.987/-</div>
                                    <input type="number" value="1" class="cart-quantity">
                                </div>

                                <i class="fa-solid fa-trash cart-remove"></i>
                            </div>
                        </div>

                        <div class="total">
                            <div class="total-title">total:</div>
                            <div class="total-price">0.00</div>
                        </div>

                        <button type="button" class="btn-buy">Checkout</button>

                        <i class="fa-solid fa-xmark" id="close-cart"></i>

                </div>-->
            </div>
            
        </div>
    </div>

    
    <nav class="sidebar">
        <header>Book Hovenia</header>
        <ul>
            <li><a href="homepage.jsp"><i class="fa-solid fa-house"></i>Home</a>
            </li>
            <li><a href="aboutus.jsp"><i class="fa-solid fa-circle-info"></i>About Us</a></li>
            <li><a href="#" class="cat-btn"><i class="fa-solid fa-book"></i>Categories<span
                        class="fas fa-caret-down first"></span></a>
                <ul class="cat-show">
                   <%
CategoryBean ob = new CategoryBean();
ArrayList<CategoryBean> allcategories = ob.getAllcategories();

for (CategoryBean cb : allcategories) {
    // Use JavaScript to navigate to the respective category page and pass the category ID as a parameter
    out.println("<a onclick='showCategoryItems(" + cb.getCategoryId() + ", \"" + cb.getCategoryName() + ".jsp\")' style='margin-bottom:10px; color:white' class='nav-link active' id='v-pills-home-tab' data-toggle='pill' href='#v-pills-home' role='tab' aria-controls='v-pills-home' aria-selected='true'>" + cb.getCategoryName() + "</a>");
}
%>

<script>
    function showCategoryItems(categoryId, pageName) {
        // Redirect to the respective category page with the selected category ID as a query parameter
        window.location.href = pageName + '?categoryId=' + categoryId;
    }
</script>
                </ul>
            </li>
            <li><a href="#" class="acc-btn"><i class="fa-solid fa-user"></i>Account<span
                        class="fas fa-caret-down second"></a>
                <ul class="acc-show">
                    <li><a href="">Cart <span class="fa-solid fa-caret-right"></span></a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div class="main" style = "position:absolute; left: 20px; top:80px;" >
        <h3>There's always a way of living</h3> 
         <hr>
         
           
       <%
// Get the categoryId from the query parameter
String categoryIdParam = request.getParameter("categoryId");
if (categoryIdParam != null) {
    int categoryId = Integer.parseInt(categoryIdParam);
    
    ItemBean itemBean = new ItemBean();
    ArrayList<ItemBean> categoryItems = itemBean.itembyid(categoryId);

    out.println("<div class='row'>"); // Add a row to contain the cards

    for (ItemBean ib : categoryItems) {
        out.print("<div class='col-lg-3 col-md-6 items'>"); // Adjust column width for horizontal display
        out.print("<div class='card text-center' style='align-items: center;'>"); // Use a card structure and center the content
        out.println("<img src='" + ib.getImage() + "' class='card-img-top' alt='Image' style='width: 150px;'>"); // Set image width
        out.print("<div class='card-body'>"); // Set card and card body width
        out.print("<h5 class='card-title' style='font-size: 16px;'>" + ib.getItemName() + "</h5>"); // Smaller font size
        out.println("<p class='card-text' style='font-size: 14px;'>" + ib.getDescription() + "</p>"); // Smaller font size
        out.print("<p class='card-text' style='font-size: 14px;'>Rs. " + ib.getPrice() + "</p>"); // Smaller font size
        out.println("<a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>"); // Add the "Buy Now" button
        out.print("</div>");
        out.println("</div>");
        out.print("</div>");
    }

    out.println("</div>"); // Close the row
// Close the row


} else {
    out.println("null");
}
%>
                </footer>
                
    <script>
        $('.btn-open').click(function () {
            $('.btn-close').toggleClass("show");
            $(this).toggleClass("click");
            $('nav').toggleClass("show");
        });
        $('.btn-close').click(function () {
            $(this).toggleClass("click");
            $(this).toggleClass("show");
            $('nav').toggleClass("show");
        });
        $('.cat-btn').click(function () {
            $('nav ul .cat-show').toggleClass("show");
            $('nav ul .first').toggleClass("rotate");
        });
        $('.acc-btn').click(function () {
            $('nav ul .acc-show').toggleClass("show");
            $('nav ul .second').toggleClass("rotate");

        });
    </script>

    
    <!--<script src="main.js"></script>-->
</body>

</html>