<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot - Customer Dashboard</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    
    <!-- Sidebar Navbar -->
    <div class="navbar">
        <h1>ONECAUSE</h1>
        <ul>
            <li><a href="customerhome"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="customerprofile"><i class="fas fa-user"></i> Profile</a></li>
            <li><a href="#"><i class="fas fa-shopping-cart"></i> My Orders</a></li>
            <li><a href="#"><i class="fas fa-search"></i> Track Orders</a></li>
            <li><a href="logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>

    <%-- <!-- Profile Dropdown -->
    <div class="profile-container">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDGQO5-8CPA9Hzl5_wLkAf6VtlMw52q7IwRw&s" alt="Profile Picture">
        <div class="dropdown">
            <span>Welcome, <%= c.getName() %></span>
            <div class="dropdown-content">
                <a href="updatecustomer">Update Profile</a>
                <a href="#">Change Password</a>
            </div>
        </div>
    </div> --%>
</body>
</html>
