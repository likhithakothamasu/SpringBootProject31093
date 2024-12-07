<%@ page import="com.klef.jfsd.springboot.model.Donor" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    Donor d = (Donor) session.getAttribute("donor");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Donation</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <style>
        /* Global styling */
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
            transition: background 0.3s;
            font-size: 16px;
        }

        .navbar ul li a:hover {
            background-color: #34495e;
        }

        .navbar ul li a i {
            margin-right: 12px;
        }

        /* Profile dropdown styling */
        .profile-container {
            position: absolute;
            top: 20px;
            right: 20px;
            display: flex;
            align-items: center;
            color: #333;
        }

        .profile-container img {
            border-radius: 50%;
            width: 40px;
            height: 40px;
            margin-right: 10px;
            border: 2px solid #2c3e50;
        }

        /* Main content styling */
        .content {
            margin-left: 260px;
            padding: 30px;
            width: calc(100% - 260px);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Form container */
        .form-container {
            background-color: rgba(0, 51, 102, 0.85);
            padding: 20px;
            border-radius: 10px;
            width: 600px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        /* Form title */
        h2 {
            font-size: 2rem;
            color: #ffffff;
            margin-bottom: 25px;
            font-weight: 700;
            letter-spacing: 1.2px;
        }

        /* Styling for input groups */
        .input-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            gap: 10px;
        }

        .form-control {
            width: 48%;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            color: #333;
            background-color: #f2f2f2;
        }

        /* Full-width input fields */
        .form-control-full {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            color: #333;
            background-color: #f2f2f2;
        }
        .file-input-container {
        display: flex;
        align-items: center;
        justify-content: center;
        position: relative;
        width: 100%;
        border: 2px dashed #d9eaff;
        border-radius: 5px;
        padding: 10px;
        background-color: #f2f2f2;
        transition: border-color 0.3s, background-color 0.3s;
    }

    .file-input-container:hover {
        border-color: #0059b3;
        background-color: #e6f0ff;
    }

    .file-input-label {
        color: #333;
        font-size: 0.9rem;
        font-weight: bold;
        cursor: pointer;
        text-align: center;
    }

    .file-input {
        position: absolute;
        width: 100%;
        height: 100%;
        opacity: 0;
        cursor: pointer;
    }

    /* Adding some margin for visual spacing */
    .file-input-container + .submit-btn {
        margin-top: 15px;
    }
        /* Submit button */
        .submit-btn {
            background-color: #0059b3;
            color: #ffffff;
            padding: 14px;
            width: 100%;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.3s;
        }

        .submit-btn:hover {
            background-color: #0073e6;
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
            color: #333;
            font-weight: bold;
        }

        .contact-us img {
            border-radius: 50%;
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }

        /* Footer text */
        .footer-text {
            margin-top: 20px;
            font-size: 0.8rem;
            color: #d9eaff;
        }
    </style>
</head>
<body>
    
    <!-- Main Content - Add Donation Form -->
    <div class="content">
        <div class="form-container">
            <h2>Make a Donation</h2>
            <form action="insertdonation" method="post">
            	
                <div class="input-group">
                    <input type="text" name="firstName" placeholder="First Name" class="form-control" required>
                    <input type="text" name="lastName" placeholder="Last Name" class="form-control" required>
                </div>
                <div class="input-group">
                <input 
            type="email" 
            id="email" 
            name="email" 
            placeholder="Email"
            required 
            pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" 
            title="Enter a valid email address, e.g., example@example.com." 
            class="form-control"
        />
        <input 
            type="tel" 
            id="phoneNumber" 
            name="phoneNumber" 
            required 
             placeholder="Phone Number"
            pattern="[0-9]{10}" 
            title="Enter a valid 10-digit contact number, e.g., 9876543210." 
            class="form-control"
        />
                </div>
                <div class="input-group">
                    <input type="text" name="streetAddress" placeholder="Street Address" class="form-control-full" required>
                </div>
                <div class="input-group">
                    <input type="text" name="city" placeholder="City" class="form-control" required>
                    <input type="text" name="state" placeholder="State" class="form-control" required>
                </div>
                <div class="input-group">
                    <select name="country" class="form-control" required>
                        <option value="" disabled selected>Select Country</option>
                        <option value="India">India</option>
                        <option value="USA">USA</option>
                        <option value="Canada">Canada</option>
                    </select>
                    <input type="number" name="donorid" placeholder="DonorId - No Login enter 0" class="form-control" required>
                </div>
                <div class="input-group">
                <input type="date" name="expiryDate" class="form-control" required>
                        <select name="cookedRaw" class="form-control" required>
                        <option value="" disabled selected>Cooked/Raw</option>
                        <option value="Cooked">Cooked</option>
                        <option value="Raw">Raw</option>
                    </select>
                </div>
                <div class="input-group">
                <textarea name="queries" placeholder="Any Queries..." class="form-control-full"></textarea>
				</div>
                <button type="submit" class="submit-btn">Submit Donation</button>
            </form>
            <div class="footer-text">
                ©2024 Donation Form. All Rights Reserved | AnnapoornaSeva
            </div>
        </div>
    </div>
</body>
</html>
