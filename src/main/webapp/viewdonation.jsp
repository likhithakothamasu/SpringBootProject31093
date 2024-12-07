<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donation Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <style>
        /* Reset styles */
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
            padding-left: 240px; /* Space for sidebar */
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

        /* Main content layout */
        .content {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            margin-left: auto;
            width: 100%;
        }

        /* Header styles */
        h3 {
            color: #34495e;
            margin-bottom: 20px;
            font-size: 1.8em;
            font-weight: bold;
            text-decoration: underline;
        }

        .donation-card {
            width: 100%;
            max-width: 600px;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-top: 20px;
        }

        .donation-card table {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #3498db;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            font-size: 1em;
            border-bottom: 1px solid #ddd;
        }

        th {
            font-weight: bold;
            color: #2c3e50;
        }

        td {
            color: #333;
        }

        /* Back link styling */
        .back-link {
            display: block;
            margin-top: 20px;
            font-weight: bold;
            color: #3498db;
            text-decoration: none;
            transition: color 0.3s;
        }

        .back-link:hover {
            color: #2d7aa8;
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
            <li><a href="viewalldonations"><i class="fas fa-hand-holding-heart"></i> My Donations</a></li>
            <li><a href="orders"><i class="fas fa-money-bill-alt"></i> Make a Payment</a></li>
            <li><a href="#"><i class="fas fa-search"></i> Track Donations</a></li>
            <li><a href="logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <!-- Main Content Area -->
    <div class="content">
        <h3>Donation Details</h3>

        <div class="donation-card">
            <table>
                <tr><th>ID</th><td><c:out value="${donation.id}" /></td></tr>
                <tr><th>First Name</th><td><c:out value="${donation.firstName}" /></td></tr>
                <tr><th>Last Name</th><td><c:out value="${donation.lastName}" /></td></tr>
                <tr><th>Email</th><td><c:out value="${donation.email}" /></td></tr>
                <tr><th>Phone Number</th><td><c:out value="${donation.phoneNumber}" /></td></tr>
                <tr><th>Street Address</th><td><c:out value="${donation.streetAddress}" /></td></tr>
                <tr><th>City</th><td><c:out value="${donation.city}" /></td></tr>
                <tr><th>State</th><td><c:out value="${donation.state}" /></td></tr>
                <tr><th>Country</th><td><c:out value="${donation.country}" /></td></tr>
                <tr><th>Expiry Date</th><td><c:out value="${donation.expiry}" /></td></tr>
                <tr><th>Type (Cooked/Raw)</th><td><c:out value="${donation.cookedRaw}" /></td></tr>
            </table>
        </div>

        <a href="viewalldonations" class="back-link">Back to Donations List</a>
    </div>
</body>
</html>
