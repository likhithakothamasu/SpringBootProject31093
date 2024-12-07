<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Status</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f2ff;
            color: #004080;
            text-align: center;
            padding-top: 50px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h1 {
            color: #003366;
        }
        .status {
            background-color: #cce0ff;
            padding: 15px;
            border-radius: 4px;
            border: 1px solid #004080;
            margin-top: 20px;
        }
        .btn {
            margin-top: 20px;
            background-color: #0059b3;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #004080;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Order Status</h1>
        <div class="status">
            <p><strong>Order ID:</strong> ${orderId}</p>
            <p><strong>Message:</strong> ${message}</p>
        </div>
        <br>
        <a href="/tracking" class="btn">Track Another Order</a>
    </div>
</body>
</html>
