<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Orders Page</title>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<style>
 /* Reset and body styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f9fc;
            color: #333;
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        /* Sidebar styling */
        .navbar {
            width: 240px;
            background-color: #2c3e50;
            color: white;
            padding: 20px;
            position: fixed;
            height: 100vh;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .navbar h1 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 25px;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .navbar ul {
            list-style-type: none;
            padding: 0;
        }

        .navbar ul li {
            margin: 15px 0;
        }

        .navbar ul li a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            border-radius: 4px;
            transition: background 0.3s, transform 0.3s;
            font-size: 16px;
        }

        .navbar ul li a:hover {
            background-color: #34495e;
            transform: translateX(5px);
        }

        .navbar ul li a i {
            margin-right: 12px;
            font-size: 20px;
            color: #f7f9f9;
            transition: color 0.3s;
        }

        .navbar ul li a:hover i {
            color: #c0d9e7;
        }

    
    /* Main container styling */
    .main-container {
        margin-left: 240px;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        width: calc(100% - 240px);
    }

    /* Form container styling */
    .form-container {
        background: #ffffff;
        padding: 1.5rem;
        width: 100%;
        max-width: 360px; /* Reduced size of form container */
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        transition: all 0.3s ease;
    }

    /* Table styling */
    table {
        width: 100%;
    }

    td {
        padding: 0.7rem 0; /* Adjusted spacing */
    }

    /* Input styling */
    input[type="text"],
    input[type="email"],
    input[type="number"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 0.9rem; /* Slightly smaller font */
        transition: border 0.3s;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="number"]:focus {
        border-color: #339900;
    }

    /* Button styling */
    .btn-primary {
        display: inline-block;
        width: 100%;
        padding: 10px; /* Reduced padding */
        background: #006b99;
        color: #ffffff;
        font-size: 1rem;
        font-weight: bold;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    .btn-primary:hover {
        background: #006b99;
    }

    /* Heading styling */
    h2 {
        text-align: center;
        font-size: 1.3rem; /* Adjusted font size */
        color: #006b99;
        margin-bottom: 1rem;
    }
</style>
</head>
<body>
<!-- Sidebar Navbar -->
    <div class="navbar">
        <h1>ONECAUSE</h1>
        <ul>
            <li><a href="donorhome"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="donorprofile"><i class="fas fa-user"></i> Profile</a></li>
             <li> <a href="adddonation"> <i class="fas fa-donate"></i>Make a Donation</a></li>
            <li><a href="viewalldonations"><i class="fas fa-hand-holding-heart"></i> My Donations</a></li>
            <li><a href="orders"><i class="fas fa-money-bill-alt"></i> Make a Payment</a></li>
            <li><a href="logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <!-- Centered Form -->
    <div class="main-container">
        <div class="form-container">
            <h2>Make A Payment</h2>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" id="name" required /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" name="email" id="email" required /></td>
                </tr>
                <tr>
                    <td>Amount:</td>
                    <td><input type="number" name="amount" id="amount" required /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button id="rzp-button1" class="btn-primary">Proceed To Pay</button>
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <script>
        async function createOrder() {
            const response = await fetch("http://localhost:2003/createOrder", {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    name: document.getElementById('name').value,
                    email: document.getElementById('email').value,
                    amount: document.getElementById('amount').value
                })
            });
            const order = await response.json();
            return order;
        }

        document.getElementById('rzp-button1').onclick = async function(e) {
            const order = await createOrder();

            var options = {
                "key": "rzp_test_YoyjIpZp6LvIF9",
                "amount": order.amount,
                "currency": "INR",
                "name": "KOLISETTY VENKATA NAGA SOWJANYA LAKSHMI",
                "description": "Order for Test",
                "order_id": order.razorpayOrderId,
                "reciept": order.email,
                "callback_url": "http://localhost:2003/paymentCallback",
                "prefill": {
                    "name": order.name,
                    "email": order.email
                },
                "theme": {
                    "color": "#339900"
                }
            };

            var rzp1 = new Razorpay(options);
            rzp1.open();
            e.preventDefault();
        }
    </script>
</body>
</html>
