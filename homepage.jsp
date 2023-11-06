<%@page import="bean_user.CategoryBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean_user.ItemBean"%>
<%@page import="user_servlet.SearchServlet"%>
<%@page import="user_servlet.LogoutServlet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Online Book Store</title>
    <link rel="stylesheet" href="homepage.css">
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
    <script type="text/javascript" src="<c:url value='js/homepage.js'/>"></script>
</head>

<body>
    <div class="header">
        <div class="left-sec">
            <div class="btn-open">
                <i class="fa-solid fa-bars"></i>
            </div>
            <div class="btn-close">
                <i class="fa-solid fa-close"></i>
            </div>

            <div class="logo">
                BOOK HOVENIA
            </div>
        </div>
<div class="mid-sec">
    <form action="SearchServlet" method="post"> <!-- Specify the action and method for the form -->
        <input class="book-search-bar" type="text" name="searchQuery" placeholder="Search for books">

        <button type="submit" class="book-search-btn"> <!-- Use type="submit" to trigger the form submission -->
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
        
    </form>
</div>
      <div class="right-sec">
    <div class="profile-icon-box">
        <i class="fa-solid fa-user fa-xl"></i>
            <div class="sign-out-option" >
            <a href="LogoutServlet"> Sign out</a>
            </div>
    </div>
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
    out.println("<a onclick='showCategoryItems(" + cb.getCategoryId() + ", \"" + cb.getCategoryName() + ".jsp\")' style='margin-bottom:10px' class='nav-link active' id='v-pills-home-tab' data-toggle='pill' href='#v-pills-home' role='tab' aria-controls='v-pills-home' aria-selected='true'>" + cb.getCategoryName() + "</a>");
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
            <li><a href="contactus.jsp" class="acc-btn"><i class="fa-solid fa-user"></i>Feedback<span></a>

            </li>
        </ul>
    </nav>
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


                <div class="category-content">
                    <div class="name">Romance</div>
                </div>
            </div>
        </div>
    </div>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="carousel/slide1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="carousel/slide2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="carousel/slide3.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <div class="book-category">
        <div class="category-name">
            <h2>Best Sellers</h2>
        </div>
    </div>

    <div class="book-slider-content">
        <div class="book-wrapper">
           
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="best sellers/book1.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">
                    <div class="name">It Starts with Us</div>
                    <div class="author">Colleen Hoover</div>
                    <div class="price">₹219</div>
                     <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="best sellers/book2.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">It Ends with Us</div>
                    <div class="author">Colleen Hoover</div>
                    <div class="price">₹259</div>
                   <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="best sellers/book3.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">Hindus in Hindu Rashtra</div>
                    <div class="author">Anand Ranganathan</div>
                    <div class="price">₹259</div>
                  <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="best sellers/book4.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">Atomic Habits</div>
                    <div class="author">James Clear</div>
                    <div class="price">₹259</div>
                   <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="best sellers/book5.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Psychology of Money</div>
                    <div class="author">Morgan Housel</div>
                    <div class="price">₹264</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="best sellers/book6.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Power of your Subconscious Mind</div>
                    <div class="author">Joseph Murphy</div>
                    <div class="price">₹145</div>
                     <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="best sellers/book7.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">How to Win Friends & Influence People</div>
                    <div class="author">Dale Carnegie</div>
                    <div class="price">₹178</div>
                   <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="best sellers/book8.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">Wings of Fire</div>
                    <div class="author">APJ Abdul Kalam with Arun Tiwari</div>
                    <div class="price">₹340</div>
                   <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
           

        </div>
    </div>
    <div class="book-category">
        <div class="category-name">
            <h2>Crime & Thriller</h2>
        </div>
        <div class="view-option">
            <h4><a href="" class="">View More <span>&#10095;</span></a></h4>
        </div>
    </div>
    <div class="book-slider-content">
        <div class="book-wrapper">
           
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Crime & Thriller/book1.webp" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">
                    <div class="name">The Silent Patient</div>
                    <div class="author">Alex Michaelids</div>
                    <div class="price">₹206</div>
                     <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Crime & Thriller/book2.webp" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Girl on the Train</div>
                    <div class="author">Paula Hawkins</div>
                    <div class="price">₹339</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Crime & Thriller/book3.webp" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">Gone Girl</div>
                    <div class="author">Gillian Flynn</div>
                    <div class="price">₹285</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Crime & Thriller/book4.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Interview</div>
                    <div class="author">C.M. Ewan</div>
                    <div class="price">₹252</div>
                     <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Crime & Thriller/book5.webp" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">And Then There Were None</div>
                    <div class="author">Agatha Christie</div>
                    <div class="price">₹264</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Crime & Thriller/book6.webp" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Girl in Room 105</div>
                    <div class="author">Chetan Bhagat</div>
                    <div class="price">₹166</div>
                     <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Crime & Thriller/book7.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Da Vinci Code</div>
                    <div class="author">Dan Brown</div>
                    <div class="price">₹310</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Crime & Thriller/book8.webp" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Calcutta Conundrum</div>
                    <div class="author">Soumon Chatterjee</div>
                    <div class="price">₹100</div>
                     <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
           
        </div>
    </div>
    <div class="book-category">
        <div class="category-name">
            <h2>Romance</h2>
        </div>
        <div class="view-option">
            <h4><a href="" class="">View More <span>&#10095;</span></a></h4>
        </div>
    </div>
    <div class="book-slider-content">
        <div class="book-wrapper">
            
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Romance/book1.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">Here There and Everywhere</div>
                    <div class="author">Sudha Murty</div>
                    <div class="price">₹167</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Romance/book2.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Wrong Wife</div>
                    <div class="author">Maya Alden</div>
                    <div class="price">₹248</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Romance/book3.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The God of Small Things</div>
                    <div class="author">Arundhati Roy</div>
                    <div class="price">₹354</div>
                  <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Romance/book4.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">Pride & Prejudice</div>
                    <div class="author">Jane Austen</div>
                    <div class="price">₹139</div>
                  <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Romance/book5.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Love Hypothesis</div>
                    <div class="author">Ali Hazelwood</div>
                    <div class="price">₹194</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Romance/book6.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">The Fault in Our Stars</div>
                    <div class="author">John Green</div>
                    <div class="price">₹255</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Romance/book7.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">Book Lovers</div>
                    <div class="author">Emily Henry</div>
                    <div class="price">₹1775</div>
                     <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
            <div class="book-content">
                <div class="image-content">
                    <span class="overlay"></span>
                    <div class="card-image">
                        <img src="Romance/book8.jpg" alt="" class="card-img">
                    </div>
                </div>
                <div class="card-content">

                    <div class="name">Twilight, Book 1: Twilight</div>
                    <div class="author">Stephenie Meyer</div>
                    <div class="price">₹390</div>
                    <a href='buynow.jsp' class='btn btn-primary' style='background-color:turquoise; color:black'>Buy Now</a>
                </div>
            </div>
         

        </div>
    </div>
    <footer class="footer">
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
                    <p class="copyright">© 2023 Book Hovenia | All rights reserved</p>
                </div>
                <div class="footer-bottom-right">
                    <span class="payment">We accept payments via</span>
                    <figure class="payment-methods">
                        <img src="">
                    </figure>

                </div>
            </div>
        </div>

    </footer>

</body>

</html>
