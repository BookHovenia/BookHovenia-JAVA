<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="contactus.css">
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://kit.font-awesome.com/a076d05399.js"></script>
    <script src="8a.js" defer></script>
</head>
<body>
    <section class="contact-us">
        <div class="contact-info">
            <h1>Contact Us</h1>
            <p><strong>Email:</strong> sealdah@gmail.com</p>
            <p><strong>Phone:</strong> +1 (123) 456-7890</p>
            <p><strong>Address:</strong> Sealdah Station</p>
        </div>
        <form class="contact-form" action="ContactUsServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="4" required></textarea>

            <button type="submit">Send Message</button>
        </form>
    </section>
    <footer class="footer">
        <div class="container">
            <div class="footer-top">
                <div class="row">
                    <div class="footer-col">
                        <h4>Book Hovenia</h4>
                        <ul>
                            <li><a href="aboutus.html">About us</a></li>
                            <li><a href="contactus.html">Contact us</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="terms.html">Terms & Conditions</a></li>
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
                            <p style="color: black;">Get updates on the latest releases</p>
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
                    <p class="copyright" style="color: black;">© 2023 Book Hovenia | All rights reserved</p>

                </div>
                <div class="footer-bottom-right">
                    <span class="payment" style="color: black;">We accept payments via</span>

                    <figure class="payment-methods">
                        <img src="">
                    </figure>

                </div>
            </div>
        </div>

    </footer>


   
</body>
</html>
