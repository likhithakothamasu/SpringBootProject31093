<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donation Home</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <style>
         body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333;
            background-color: #f0f8ff;
        }

        h1, h3 {
            color: #002366;
        }
           
        /* Top Bar */
.top-bar {
    background-color: #004080;
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0px 5px;
    font-size: 14px;
}

.top-bar div {
    display: flex;
    align-items: center;
    gap: 15px;
}

.top-bar div i {
    margin-right: 8px;
}

.contact-info a {
    color: white;
    text-decoration: none;
}

/* Header with Logo and Navigation */
.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    background-color: #cce5ff;
    border-bottom: 1px solid #99ccff;
}

.logo {
    display: flex;
    align-items: center;
}

.logo img {
    height: 70px;
}

.logo h1 {
    margin-left: 20px;
    margin: 0 20px;
    font-size: 28px;
    color: #003366;
    font-family: 'Arial', sans-serif;
}

/* Navbar */
nav {
    flex-grow: 1;
    display: flex;
    justify-content: center; /* Center the links */
    align-items: center;
    padding: 4; /* Ensure no extra padding */
}

/* Links in the Navbar */
nav a {
    color: #003366; /* Changed to blue */
    text-decoration: none;
    margin: 0 20px;
    font-size: 18px;
    font-weight: bold;
    font-family: 'Arial', sans-serif;
}

nav a:hover {
    color: #00aaff;
}

/* Dropdown Styling */
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
    z-index: 1;
}

.dropdown-content a {
    color: #003366;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    background-color: #e6f2ff;
}

.dropdown:hover .dropdown-content {
    display: block;
}

/* Search and Cart Icons */
.search-cart {
    display: flex;
    align-items: center;
}

.search-cart input[type="text"] {
    padding: 7px;
    border: 1px solid #99ccff;
    border-radius: 3px;
    background-color: #f9f9f9;
}

.search-cart i {
    margin-left: 15px;
    font-size: 20px;
    color: #003366;
    cursor: pointer;
}

.search-cart i:hover {
    color: #00aaff;
}

/* Alignment for Navigation Bar and Header */
.header, .top-bar {
    padding-left: 10px;
    padding-right: 10px;
    box-sizing: border-box;
}

           
        
        .hero-section {
    background-image: url('${pageContext.request.contextPath}/images/donations.png'); /* Change to your desired image */
    height: 100vh;
    background-position: center;
    background-size: cover;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}
.overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 51, 102, 0.6);
        }

        .hero-content {
            position: relative;
            z-index: 1;
            color: white;
            text-transform: uppercase;
        }

        .hero-content h1 {
            font-size: 60px;
            margin:15px 0;
            letter-spacing: 3px;
        }

        .hero-content p1 {
            font-size: 30px;
            margin: 15px 0;
        }
        
        .hero-content p2 {
            font-size: 50px;
            margin: 15px 0;
        }

        .divider {
            width: 120px;
            height: 3px;
            background-color: white;
            margin: 20px auto;
        }
        .shop-now-btn {
            margin-top: 30px;
            padding: 15px 30px;
            font-size: 1em;
            background-color: #00bfff;
            color: white;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            text-transform: uppercase;
        }

        .shop-now-btn:hover {
            background-color: #1e90ff;
        }
    </style>
</head>
<body>

    <!-- Header Section with Navigation -->
    <div class="header">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/images/LOGO.png" alt="AS Logo">
            <h1>Annapoorna Seva</h1>
        </div>
        <nav>
        <div class="nav-links">
            <a href="home.html">Home</a>

            <!-- Dropdown Menu for "Reduce Food Wastage" -->
          <!--   <div class="dropdown">
                <a href="#" class="dropbtn">Tips</a>
                <div class="dropdown-content">
                    <a href="reducefoodwastage.html">Reduce Food Wastage</a>
                    <a href="improvefoodsecurity.html">Improve Food Security</a>
                </div>
            </div> --> 

            <a href="donate">Donate</a> 
            <a href="contactus">Contact</a>
            <a href="aboutus">About</a>
            <div class="dropdown">
                <a href="#" class="dropbtn">Login</a>
                <div class="dropdown-content">
                    <a href="adminlogin">Admin</a>
                    <a href="signin">Donor</a>
                    <a href="signin">Supplier</a>
                </div>
            </div>
        </div>
        &nbsp; &nbsp;
        <!-- Search and Cart Section -->
        <div class="search-cart">
            <input type="text" placeholder="Search...">
            <i class="fas fa-search"></i>
            <i class="fas fa-shopping-cart"></i>
        </div>
    </nav>
        
    </div>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="overlay"></div>
        <div class="hero-content">
            <p1>WELCOME TO</p1><br>
            <p2>Annapoorna Seva</p2>
            <div class="divider"></div>
            <a href="donate">
              <button class="shop-now-btn">Donate</button>
            </a>
            
        </div>
    </section>

</body>
</html>
