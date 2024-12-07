<%@page import="com.klef.jfsd.springboot.model.Donor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
 Donor d = (Donor) session.getAttribute("donor");
 if (d == null) {
     response.sendRedirect("donorsessionexpiry.jsp");
     return;
 }
%> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile - SDP Project</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <style>
        /* Combined reset and shared body styling */
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

        /* Main content styling */
        .content {
            margin-left: 260px;
            padding: 30px;
            width: calc(100% - 260px);
            display: flex;
            flex-direction: column;
            align-items: center;
            overflow-y: auto;
        }

        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }

        h3 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            margin-bottom: 20px;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="tel"],
        input[type="password"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #2c3e50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            margin: 5px;
            transition: background 0.3s;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #2d7aa8;
        }

        h4 {
            text-align: center;
            color: red;
        }

        /* Contact Us Button Styling */
        .contact-us {
            position: absolute;
            bottom: 20px;
            right: 20px;
            display: flex;
            align-items: center;
            background-color: #ffffff;
            padding: 10px 20px;
            border-radius: 50px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
            cursor: pointer;
            transition: box-shadow 0.3s;
            color: #333;
            font-weight: bold;
        }

        .contact-us img {
            border-radius: 50%;
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }

        .contact-us:hover {
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.25);
        }
    </style>
</head>
<body>
    

    <!-- Main Content -->
    <div class="content">
        <h4 align="center">
            <c:out value="${message}"></c:out>
        </h4>

        <h3><u>Update Profile</u></h3>
        <div class="form-container">
            <form method="post" action="updatedonorprofile">
                <table>
                    <tr>
                        <td><label for="did">Donor ID</label></td>
                        <td><input type="number" id="did" name="did" readonly value="<%= d.getId() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="name">Enter Name</label></td>
                        <td><input type="text" id="name" name="name" value="<%= d.getName() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="gender" value="MALE" <%= d.getGender().equals("MALE") ? "checked" : "" %> required/>
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="gender" value="FEMALE" <%= d.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="gender" value="OTHERS" <%= d.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="dob">Enter Date of Birth</label></td>
                        <td><input type="date" id="dob" name="dob" value="<%= d.getDateofbirth() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="email">Enter Email ID</label></td>
                        <td><input type="email" id="email" name="email" readonly value="<%= d.getEmail() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="pwd">Enter Password</label></td>
                        <td><input type="password" id="pwd" name="pwd" value="<%= d.getPassword() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="contact">Enter Contact</label></td>
                        <td><input type="tel" id="contact" name="contact" value="<%=d.getContact() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="address">Enter Address</label></td>
                        <td><textarea id="address" name="address" rows="3" required><%= d.getAddress() %></textarea></td>
                    </tr>
                </table>
                <div class="button-container">
                    <input type="submit" value="Update"/>
                    <input type="reset" value="Cancel"/>
                </div>
            </form>
        </div>
    </div>

    <!-- Contact Us Button -->
    <a href="contactus" class="contact-us">
        <img src="https://cdn-icons-png.flaticon.com/512/3177/3177440.png" alt="contact">
        <span>Contact Us</span>
    </a>
</body>
</html>
