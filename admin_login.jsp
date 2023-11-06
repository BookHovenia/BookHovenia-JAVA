<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="admin.css">
</head>
<body>
    <div class="header">
        Welcome to BOOK HOVENIA:: Admin Panel
    </div>
    <div class="wrapper">
        <form action="login" method="post">
            <h2>Login</h2>
            <div class="input-field">
                <input type="text" name="email" required>
                <label>Enter your email</label>
            </div>
            <div class="input-field">
                <input type="password" name="password" required>
                <label>Enter your password</label>
            </div>
            <button type="submit">Log In</button>
        </form>
    </div>
</body>
</html>
