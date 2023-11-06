<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="registration.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
    <section class="container">
        <div class="form login">
            <div class="form-content">
                <header>Registration</header>
                <form action="RegistrationServlet" method="post">
                    <div class="field input-field">
                        <input type="text" placeholder="Username" class="input" name="name" required>
                    </div>
                    <div class="field input-field">
                        <input type="email" placeholder="Email" class="input" name="email" required>
                    </div>
                    <div class="field input-field">
                        <input type="password" placeholder="Password" class="password" name="password" required>
                    </div>
                    <div class="field input-field">
                        <input type="password" placeholder="Re-enter password" class="password" name="confirmPassword" required>
                    </div>

                    <div class="check-box">
                        <input type="checkbox" class="checksquare" required>
                        <label class="terms">I accept the <a href="#">Terms & Conditions</a></label>
                    </div>

                    <div class="field button-field">
                        <button type="submit">Register</button>
                    </div>
                </form>
                <div class="form-link">
                    <span>Already have an account? <a href="login.jsp" class="signup-link">Login Here</a>
                    </span>
                </div>
            </div>
        </div>
    </section>
</body>

</html>
