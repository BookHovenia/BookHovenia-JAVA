<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <section class="container">
        <div class="form login">
            <div class="form-content">
                <header>Login</header>
                <form action="LoginServlet" method="post"> <!-- Specify action and method -->
                    <div class="field input-field">
                        <input type="email" placeholder="Enter your email" class="input" name="email">
                    </div>
                    <div class="field input-field">
                        <input type="password" placeholder="Enter your password" class="password" name="password">
                        <i class='bx bxs-hide eye-icon'></i>
                    </div>
                    <div class="form-link">
                        <a href="#" class="forgot-pass">Forgot password?</a>
                    </div>
                    <div class="field button-field">
                        <button type="submit">Login</button> <!-- Add type="submit" to the button -->
                    </div>
                </form>
                <div class="form-link">
                    <span>Don't have an account? <a href="registration.jsp" class="signup-link">Register</a>
                    </span>
                </div>
            </div>
        </div>
    </section>
</body>

</html>
