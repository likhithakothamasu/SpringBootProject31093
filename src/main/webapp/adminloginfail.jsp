<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Login Fail</title>
<link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
<style>
    /* Background and Font */
    body {
        background-color: #e0f7fa; /* Light blue background */
        font-family: Arial, sans-serif;
        color: #333;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    /* Centered Container */
    .container {
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        padding: 30px;
        text-align: center;
        max-width: 400px;
        width: 100%;
    }

    /* Message Styling */
    .message {
        font-size: 1.2em;
        color: #0277bd; /* Deep blue for message text */
        margin-bottom: 20px;
    }

    /* Button Styling */
    .retry-button {
        display: inline-block;
        background-color: #0288d1; /* Medium blue for button */
        color: #ffffff;
        text-decoration: none;
        font-size: 1em;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .retry-button:hover {
        background-color: #01579b; /* Darker blue on hover */
    }
</style>
</head>
<body>
    <div class="container">
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="adminlogin" class="retry-button">Try Again</a>
    </div>
</body>
</html>
