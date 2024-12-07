<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    Customer c = (Customer) session.getAttribute("customer");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
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
            top: 0;
            left: 0;
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

        /* Profile container styling */
        .profile-container {
            position: absolute;
            top: 20px;
            right: 20px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .profile-container img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 2px solid #ddd;
        }

        .profile-container span {
            font-size: 16px;
            color: #34495e;
            font-weight: bold;
        }

        /* Main content styling */
        .content-container {
            margin-left: 260px;
            display: flex;
            justify-content: center;
            align-items: center;
            width: calc(100% - 260px);
            padding: 20px;
            height: 100vh;
        }

        .form-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.15);
            padding: 30px;
            max-width: 500px;
            width: 100%;
            border-left: 5px solid #3498db;
        }

        .form-container h3 {
            text-align: center;
            font-size: 26px;
            color: #34495e;
            margin-bottom: 25px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table td {
            padding: 10px;
            vertical-align: top;
            border-bottom: 1px solid #ddd;
        }

        label {
            font-weight: bold;
            color: #555;
            font-size: 15px;
        }

        /* Input and Textarea styling */
        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            transition: border 0.3s;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        textarea:focus {
            border-color: #3498db;
            outline: none;
        }

        textarea {
            resize: vertical;
            height: 100px;
        }

        /* Button styling */
        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 12px 30px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
            margin: 0 10px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #e74c3c;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .navbar {
                width: 180px;
                padding: 10px;
            }
            
            .content-container {
                margin-left: 200px;
            }

            .form-container {
                padding: 20px;
            }

            input[type="submit"],
            input[type="reset"] {
                padding: 10px 20px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <%@include file="customernavbar.jsp" %>
    
   <!-- Profile Dropdown -->
    <div class="profile-container">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDGQO5-8CPA9Hzl5_wLkAf6VtlMw52q7IwRw&s" alt="Profile Picture">
        <span>Welcome, <%= c.getName() %></span>
    </div> 

    <div class="content-container">
        <div class="form-container">
            <h3>Contact Us</h3>
            <form method="post" action="sendemail">
                <table>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" id="name" name="name" required/></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email ID</label></td>
                        <td><input type="email" id="email" name="email" required/></td>
                    </tr>
                    <tr>
                        <td><label for="subject">Subject</label></td>
                        <td><input type="text" id="subject" name="subject" required/></td>
                    </tr>
                    <tr>
                        <td><label for="message">Message</label></td>
                        <td><textarea id="message" name="message" required></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Send"/>
                            <input type="reset" value="Clear"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
