<!DOCTYPE html>
<html lang="en">

<head>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- Fixed viewport meta tag -->
    <title>Document</title>
    <link rel="stylesheet" href="address.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            <img src="logo.png" height="60" width="70"> <!-- Added double quotes around attributes -->
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
            <li><a href="homepage.jsp"><i class="fa-solid fa-house"></i>Home</a></li>
            <li><a href="aboutus.jsp"><i class="fa-solid fa-circle-info"></i>About Us</a></li>
            <li><a href="#" class="cat-btn"><i class="fa-solid fa-book"></i>Categories<span
                        class="fas fa-caret-down first"></span></a>
                <ul class="cat-show">
                    <li><a href="coding.html">Coding <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="history.html">History <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="finance.html">Finance <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="fantasy.html">Fantasy <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="romance.html">Romance <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="selfhelp.html">Self Help <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="crime&thriller.html">Crime & Thriller <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="biography.html">Biography<span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="politics.html">Politics <span class="fa-solid fa-caret-right"></span></a></li>
                    <li><a href="horror.html">Horror <span class="fa-solid fa-caret-right"></span></a></li>
                </ul>
            </li>
            <li><a href="#" class="acc-btn"><i class="fa-solid fa-user"></i>Account<span class="fas fa-caret-down second"></a>                      
            </li>
        </ul>
    </nav>

       <div class="main" style="position: absolute; left: 20px; top: 80px;">
        <h1>Shipping</h1>
        <p>Please enter your shipping details.</p>
        <hr />

        <form action="ShippingServlet" method="post">
            <div class="form">
                <div class="fields fields--2">
                    <label class="field">
                        <span class="field__label" for="firstname">First name</span>
                        <input class="field__input" type="text" name="firstname" id="firstname" required>
                    </label>
    <label class="field">
        <span class="field__label" for="lastname">Last name</span>
        <input class="field__input" type="text" name="lastname" id="lastname" required>
    </label>
</div>
<label class="field">
    <span class="field__label" for="address">Address</span>
    <input class="field__input" type="text" name="address" id="address" required>
</label>
<label class="field">
    <span class="field__label" for="country">Country</span>
    <select class="field__input" name="country" id="country" required>
        <option value="country">Country</option>
        <option value="India">India</option>
    </select>
</label>
<label class="field">
    <span class="field__label" for="phoneNumber">Phone Number</span>
    <input class="field__input" type="text" name="phoneNumber" id="phoneNumber" required>
</label>
<div class="fields fields--3">
    <label class="field">
        <span class="field__label" for="zipcode">Zip code</span>
        <input class="field__input" type="text" name="zipcode" id="zipcode" required>
    </label>
    <label class="field">
        <span class="field__label" for="city">City</span>
        <input class="field__input" type="text" name="city" id="city" required>
    </label>
    <label class="field">
        <span class="field__label" for="state">State</span>
        <select class="field__input" name="state" id="state" required>
            <option value="1">State</option>
            <option value="2">Andhra Pradesh</option>
                          <option value="4">Assam</option>
                          <option value="5">Bihar</option>
                          <option value="6">Chhattisgarh</option>
                          <option value="7">Goa</option>
                          <option value="8">Gujarat</option>
                          <option value="9">Haryana</option>
                          <option value="10">Himachal Pradesh</option>
                          <option value="11">Jharkhand</option>
                          <option value="12">Karnataka</option>
                          <option value="13">Kerala</option>
                          <option value="14">Madhya Pradesh</option>
                          <option value="15">Maharashtra</option>
                          <option value="16">Manipur</option>
                          <option value="17">Meghalaya</option>
                          <option value="18">Mizoram</option>
                          <option value="19">Nagaland</option>
                          <option value="20">Odisha</option>
                          <option value="21">Punjab</option>
                          <option value="22">Rajasthan</option>
                          <option value="23">Sikkim</option>
                          <option value="24">Tamil Nadu</option>
                          <option value="25">Telangana</option>
                          <option value="26">Tripura</option>
                          <option value="27">Uttar Pradesh</option>
                          <option value="28">Uttarakhand</option>
                          <option value="29">West Bengal</option>
            </select>
          </label>
        </div>
        </div>
                <hr>
                <button type="submit" class="button">Continue</button>
            </div>
        </form>
    </div>

    

    <footer class="footer" style = "position:absolute; left: 0px; top:550px;">
        <div class="container">
            <div class="footer-top">
                <div class="row">
                    <div class="footer-col">
                        <h4>Book Hovenia</h4>
                        <ul>
                            <li><a href="aboutus.jsp">About us</a></li>
                            <li><a href="contactus.jsp">Contact us</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="terms.jsp">Terms & Conditions</a></li>
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