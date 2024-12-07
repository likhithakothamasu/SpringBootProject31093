<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Track Your Order</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f2ff; /* Light Blue */
            color: #004080; /* Dark Blue */
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #ffffff; /* White */
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h1 {
            color: #003366; /* Navy Blue */
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #003366;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccccff; /* Light Blue Border */
            border-radius: 4px;
        }
        .btn {
            background-color: #0059b3; /* Blue Button */
            color: #ffffff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #004080;
        }
        .order-status {
            margin-top: 20px;
            padding: 15px;
            background: #cce0ff; /* Very Light Blue */
            border: 1px solid #004080;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Track Your Order</h1>
        <form action="/orderstatus" method="get">
            <div class="form-group">
                <label for="orderId">Order ID:</label>
                <input type="text" id="orderId" name="orderId" required>
            </div>
            <button type="submit" class="btn">Track Order</button>
        </form>

        <c:if test="${not empty tracking}">
    <div class="order-status">
        <strong>Status:</strong> ${tracking.status}
    </div>
</c:if>

    </div>
</body>
</html>
