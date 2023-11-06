<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="payment.css">
    <style>
        /* Center the form in the middle of the screen */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: white;
            border: 1px solid #3498db;
            padding: 40px; /* Adjust the padding to increase the height */
            max-width: 800px; /* Increased the max-width for two columns */
            width: 100%;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            display: flex; /* Make it a flex container */
            justify-content: space-between; /* Place children (payment and shipping) with space in between */
        }

        .payment-container {
            flex: 1; /* Takes up 50% of the available space */
        }

        .shipping-container {
            flex: 1; /* Takes up 50% of the available space */
            padding: 20px; /* Add some padding to separate shipping details */
        }
    </style>
</head>
<body>

    <div class="form-container">
        <div class="payment-container">
            <header class="header">
                <h1>Checkout</h1>
            </header>

            <fieldset>
                <legend>Payment Method</legend>
                <div class="form__radio"> <img src="cod.png" alt="COD Logo" style=" border: 2px solid blue; border-radius: 50px;   max-width: 20px;  max-height: 30px;  margin-right: 5px; font-size: 25px;"> <label for="COD"><b>Cash on Delivery (COD)</b></label> <input checked id="COD" name="payment-method" type="radio" /> </div> <div class="form__radio"> <img src="cc.jpg" alt="Credit Card Logo" style=" border: 2px solid blue; border-radius: 50px;   max-width: 20px;  max-height: 30px;  margin-right: 5px; margin-top: 10px;"> <label for="creditCard"><b>Credit Card</b></label> <input id="creditCard" name="payment-method" type="radio" disabled /> </div> <div class="form__radio"> <img src="pp.png" alt="PayPal Logo" style=" border: 2px solid blue; border-radius: 50px;   max-width: 30px;  max-height: 30px;  margin-right: 5px; margin-top: 10px;"> <label for="paypal"><b>PayPal</b></label> <input id="paypal" name="payment-method" type="radio" disabled /> </div> <!-- Add more payment options as needed --> </fieldset> <br><br>
            </fieldset>

            <br><br>
            <button class="button button--full" type="button" id="buyNowButton" style="margin-right: 2px; margin-left: 2px; margin-bottom: 2px; font-size: 1rem; padding: 8px 15px;">Buy Now</button>
            
        </div>

        <div class="shipping-container">
        <p><b>Review your shipping details and make a payment.</b></p>
            <table border="2">
                <tr>
                    <td>First Name:</td>
                    <td><%= request.getParameter("firstname") %></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><%= request.getParameter("lastName") %></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><%= request.getParameter("address") %></td>
                </tr>
                <tr>
                    <td>Country:</td>
                    <td><%= request.getParameter("country") %></td>
                </tr>
                <tr>
                    <td>Ph no.:</td>
                    <td><%= request.getParameter("phoneNumber") %></td>
                </tr>
                <tr>
                    <td>Pincode:</td>
                    <td><%= request.getParameter("zipCode") %></td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><%= request.getParameter("city") %></td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td><%= request.getParameter("state") %></td>
                </tr>
            </table>
        </div>
    </div>

      <script>
        document.getElementById('buyNowButton').addEventListener('click', function() {
            Swal.fire({
                title: 'Do you want to continue?',
                showDenyButton: true,
                showCancelButton: true,
                confirmButtonText: 'Confirm',
                denyButtonText: 'Check again',
            }).then((result) => {
                if (result.isConfirmed) {
                	  Swal.fire('Order successful!', '', 'success').then(() => {
                    // Redirect to the home page after saving
                    window.location.href = 'homepage.jsp';
                	  });
                } else if (result.isDenied) {
                    Swal.fire('Error', '', 'info');
                }
            });
        });
    </script>
</body>
</html>
