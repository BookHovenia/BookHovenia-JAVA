<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>BOOK HOVENIA | Online Book Store</title>
    <link rel="stylesheet" href="confirmation.css">
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
       
            
        </div>
    </div>

    
    <nav class="sidebar">
        <header>Book Hovenia</header>
        <ul>
            <li><a href="homepage.html"><i class="fa-solid fa-house"></i>Home</a>
            </li>
            <li><a href="aboutus.html"><i class="fa-solid fa-circle-info"></i>About Us</a></li>
            <li><a href="#" class="cat-btn"><i class="fa-solid fa-book"></i>Categories<span
                        class="fas fa-caret-down first"></span></a>
                <ul class="cat-show">
                    <li><a href="Coding.jsp">Coding <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="History.jsp">History <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="Finance.jsp">Finance <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="Fantasy.jsp">Fantasy <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="Romance.jsp">Romance <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="Selfhelp.jsp">Self Help <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="Crime&thriller.jsp">Crime & Thriller <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="Biography.jsp">Biography<span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="Politics.jsp">Politics <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="Horror.jsp">Horror <span class="fa-solid fa-caret-right"></span></a></li>
                </ul>
            </li>
            <li><a href="#" class="acc-btn"><i class="fa-solid fa-user"></i>Account<span
                        class="fas fa-caret-down second"></a>
                <ul class="acc-show">
                    <li><a href="">Cart <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="">Orders <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="">Sign In <span class="fa-solid fa-caret-right"></span></a></li>
                </ul>
            </li>
        </ul>
    </nav>

    <div class="main" style = "position:absolute; left: 20px; top:80px;" >
        <div class="confirm"><b>Order confirmed🥳🥳</b></div>

        <br><br>Your order has been placed successfully
            <p>Thank you for shopping with us</p>
        <br>    You will get tracking details via your registered email once the order is shipped
        <br><br>
        <button class="button"><a href="homepage.jsp">Go to Home</a></button>

    </div>

    <footer class="footer" style = "position:absolute; left: 0px; right:0px; top:550px;">
        <div class="container">
            <div class="footer-top">
                <div class="row">
                    <div class="footer-col">
                        <h4>Book Hovenia</h4>
                        <ul>
                            <li><a href="aboutus.jsp">About us</a></li>
                            <li><a href="contactus.jsp">Contact us</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>My Account</h4>
                        <ul>
                            <li><a href="#">Sign In</a></li>
                            <li><a href="#">Order History</a></li>
                            <li><a href="#">Track Order</a></li>
                            <li><a href="#">View Cart</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>Get Help</h4>
                        <ul>
                            <li><a href="#">Payment Options</a></li>
                            <li><a href="#">Return Policy</a></li>
                            <li><a href="#">Shipping Policy</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>Follow us on</h4>
                        <div class="social-links">
                            <a href=""><i class="fab fa-facebook-f"></i></a>
                            <a href=""><i class="fab fa-instagram"></i></a>
                            <a href=""><i class="fab fa-pinterest"></i></a>
                            </ul>
                        </div>
                    </div>
                    <div class="get-updates-box">
                        <div class="get-updates-text">
                            <p>Get updates on the latest releases</p>
                        </div>

                        <div class="email-box">
                            <input type="email" placeholder="Enter email address">
                            <button>Subscribe</button>
                        </div>

                    </div>
                </div>
            </div>
            <hr class="footer-breaker">
            <div class="footer-bottom">
                <div class="footer-bottom-left">
                    <p class="copyright"><h4><strong><i class="fa-regular fa-copyright fa-xl"></i>2023 Book Hovenia | All rights reserved</strong></h4></p>
                </div>
                <div class="footer-bottom-right">
                
                    <figure class="payment-methods">
                        <img width="45" height="45" src="https://img.icons8.com/color/48/visa.png" alt="visa"/>
            <img width="45" height="45" src="https://img.icons8.com/color/48/mastercard-logo.png" alt="mastercard-logo"/>
            <img width="45" height="45" src="https://img.icons8.com/color/48/bhim.png" alt="bhim"/>
            <img width="50" height="45" src="razorpay.png" alt="razorpay"/>
        <img width="45" height="45" src="https://img.icons8.com/color/48/paytm.png" alt="paytm"/>
        <img width="45" height="45" src="https://img.icons8.com/color/48/cash-in-hand.png" alt="cash-in-hand"/>
    
                    </figure>

                </div>
            </div>
        </div>

    </footer>
    </body>
    </html>