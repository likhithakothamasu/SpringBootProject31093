<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Donation</title>
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

        .navbar ul li a:hover i {
            color: #c0d9e7;
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
            color: #d9534f;
            margin-bottom: 20px;
            font-size: 1.8em;
            font-weight: bold;
            text-decoration: underline;
        }

        /* Card style for deletion confirmation */
        .confirmation-card {
            width: 100%;
            max-width: 500px;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
            margin-top: 20px;
        }

        .confirmation-card p {
            font-size: 1.2em;
            color: #333;
            margin-bottom: 20px;
        }

        /* Button styles */
        .btn-container {
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
            transition: background 0.3s;
        }

        .btn-danger {
            background-color: #d9534f;
            color: white;
        }

        .btn-danger:hover {
            background-color: #c9302c;
        }

        .btn-secondary {
            background-color: #3498db;
            color: white;
        }

        .btn-secondary:hover {
            background-color: #2d7aa8;
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
        <h3>Delete Donation Confirmation</h3>

        <div class="confirmation-card">
            <p>Are you sure you want to delete this donation?</p>
           <p><strong>ID:</strong> <c:out value="${donation.id}" /></p>
            <div class="btn-container">
                <!-- Confirm Delete Button -->
                <form action="deleteDonation" method="post">
                    <input type="number" name="id" value="${donation.id}">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>

                <!-- Cancel Button -->
                <a href="viewalldonations" class="btn btn-secondary">Cancel</a>
            </div>
        </div>
    </div>
</body>
</html>
