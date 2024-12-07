<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Customer c = (Customer) session.getAttribute("customer");
    if (c == null) {
        response.sendRedirect("customersessionexpiry");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile - Customer</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Add your CSS styles similar to the original design */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f9fc;
            color: #333;
        }
        .navbar {
            width: 240px;
            background-color: #2c3e50;
            color: white;
            padding: 20px;
            position: fixed;
            height: 100vh;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .content {
            margin-left: 260px;
            padding: 30px;
        }
        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }
        table {
            width: 100%;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .button-container {
            text-align: center;
        }
        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            background-color: #2c3e50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 5px;
        }
    </style>
</head>
<body>
    <%@ include file="customernavbar.jsp" %>
    <div class="content">
        <h3><u>Update Profile</u></h3>
        <div class="form-container">
            <form method="post" action="updatecustomerprofile">
                <table>
                    <tr>
                        <td><label for="name">Enter Name</label></td>
                        <td><input type="text" id="name" name="name" value="<%= c.getName() %>" required /></td>
                    </tr>
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="gender" value="MALE" <%= c.getGender().equals("MALE") ? "checked" : "" %> required />
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="gender" value="FEMALE" <%= c.getGender().equals("FEMALE") ? "checked" : "" %> required />
                            <label for="female">Female</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="email">Enter Email ID</label></td>
                        <td><input type="email" id="email" name="email" readonly value="<%= c.getEmail() %>" required /></td>
                    </tr>
                    <tr>
                        <td><label for="password">Enter Password</label></td>
                        <td><input type="password" id="password" name="password" value="<%= c.getPassword() %>" required /></td>
                    </tr>
                    <tr>
                        <td><label for="address">Enter Address</label></td>
                        <td><textarea id="address" name="address" required><%= c.getAddress() %></textarea></td>
                    </tr>
                    <tr>
                        <td><label for="contactno">Enter Contact Number</label></td>
                        <td><input type="tel" id="contactno" name="contactno" value="<%= c.getContactno() %>" required /></td>
                    </tr>
                    <tr>
                        <td><label for="yearlyincome">Enter Yearly Income</label></td>
                        <td><input type="text" id="yearlyincome" name="yearlyincome" value="<%= c.getYearlyincome() %>" required /></td>
                    </tr>
                </table>
                <div class="button-container">
                    <input type="submit" value="Update" />
                    <input type="reset" value="Clear" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>
