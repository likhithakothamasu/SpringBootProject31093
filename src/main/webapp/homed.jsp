<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
/* Reset default margins and paddings */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* General body styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f8ff;
    color: #002147;
}

/* Navbar styling */
.navbar {
    background-color: #1e3a8a;
    display: flex;
    align-items: center;
    padding: 10px 20px;
}

.navbar a {
    color: #ffffff;
    text-decoration: none;
    padding: 10px 15px;
    font-weight: bold;
    transition: background-color 0.3s;
}

.navbar a:hover {
    background-color: #3b82f6;
    border-radius: 5px;
}

/* Navbar logo */
.navbar .logo {
    font-size: 24px;
    font-weight: bold;
    color: #ffffff;
    margin-right: auto;
}

/* Navbar links styling */
.navbar .nav-links {
    display: flex;
    gap: 15px;
}

/* Main content */
main {
    padding: 20px;
    text-align: center;
}

/* Headings */
h1, h2, h3 {
    color: #1e40af;
}

h1 {
    font-size: 36px;
    margin-bottom: 20px;
}

h2, h3 {
    font-size: 24px;
    margin-bottom: 10px;
}

/* Buttons */
button {
    background-color: #3b82f6;
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #1e3a8a;
}

/* Footer */
footer {
    background-color: #1e40af;
    color: #ffffff;
    text-align: center;
    padding: 10px 0;
    position: fixed;
    bottom: 0;
    width: 100%;
}

/* Responsive */
@media (max-width: 768px) {
    .navbar {
        flex-direction: column;
    }

    .nav-links {
        flex-direction: column;
        gap: 10px;
    }
}

</style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
</body>
</html>