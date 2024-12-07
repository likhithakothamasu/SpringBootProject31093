<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <title>Annapoorna Seva</title>
    <style>
        /* Global Styles */
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
    background-image: url('${pageContext.request.contextPath}/images/home1.png'); /* Change to your desired image */
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

        /* Main Section */
        .main-section {
            background-color: #d9f2ff;
            padding: 50px 20px;
            text-align: center;
        }

        .main-section h1 {
            font-size: 48px;
            color: #003366;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .main-section p {
    font-size: 18px;
    color: #333;
    line-height: 1.6;
    max-width: 800px;
    margin: 0 auto;
    text-align: justify;  /* Aligns text evenly on both sides */
    padding: 20px;  /* Adds space inside the element */
}

        .cta-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 25px;
            background-color: #0073e6;
            color: white;
            font-size: 18px;
            text-decoration: none;
            border-radius: 5px;
        }

        .cta-btn:hover {
            background-color: #005bb5;
        }

        /* Features Section */
        .features {
            display: flex;
            justify-content: space-between;
            margin-top: 50px;
            gap: 20px;
            flex-wrap: wrap;
        }

        .feature-box {
            background-color: white;
            border: 1px solid #99ccff;
            padding: 30px;
            border-radius: 10px;
            flex: 1;
            text-align: center;
            margin-bottom: 20px;
        }

        .feature-box h3 {
            font-size: 24px;
            color: #003366;
            margin-bottom: 15px;
        }

        .feature-box p {
            font-size: 16px;
            color: #666;
        }

        .feature-box img {
            width: 50px;
            margin-bottom: 15px;
        }

        /* Medical Crowdfunding Section */
        .container {
            text-align: center;
            padding: 50px 20px;
            background-color: #e6f2ff;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            padding: 40px 0;
        }

        .grid-item {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .grid-item .icon {
            color: #1e90ff;
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        /* Fundraisers Section */
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding-top: 30px;
        }

        .card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: left;
            position: relative;
        }

        .card img {
            width: 100%;
            height: 200px;
            border-radius: 10px;
            object-fit: cover;
        }

        .card h3 {
            font-size: 1.1rem;
            color: #002366;
            margin-top: 15px;
        }

        .raised-amount {
            font-weight: bold;
            font-size: 1.2rem;
            color: #1e90ff;
            margin: 10px 0;
        }

        .progress {
            width: 100%;
            height: 8px;
            background-color: #e0e0e0;
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 10px;
        }

        .progress-bar {
            height: 8px;
            background-color: #1e90ff;
            border-radius: 10px;
        }

        .last-donation {
            color: #aaa;
            font-size: 0.9rem;
        }

        .card-footer {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }

        .days-left i,
        .supporters i {
            margin-right: 5px;
            color: #4682b4;
        }

        .supporters i {
            color: #1e90ff;
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            .top-bar,
            .header,
            .features {
                flex-direction: column;
                text-align: center;
            }

            nav a {
                margin: 10px 0;
            }

            .features {
                gap: 30px;
            }

            .section-below {
                flex-direction: column;
                gap: 20px;
            }
        }
        .faq-container {
    width: 80%;
    max-width: 900px;
    margin: 50px auto;
    background-color: white;
    padding: 20px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #005b99;
    font-size: 36px;
    margin-bottom: 20px;
}

.faq-item {
    border-top: 1px solid #ccc;
    margin-top: 10px;
}

.faq-question {
    font-size: 18px;
    font-weight: bold;
    padding: 15px;
    cursor: pointer;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: #005b99;
}

.faq-answer {
    display: none;
    padding: 15px;
    font-size: 16px;
    color: #333;
    background-color: #e0efff;
}

.plus {
    font-size: 24px;
    color: #005b99;
    transition: transform 0.3s ease;
}

.contact-button {
    margin-top: 20px;
    display: block;
    width: 100%;
    padding: 15px;
    font-size: 16px;
    background-color: #005b99;
    color: white;
    border: none;
    cursor: pointer;
    text-align: center;
    transition: background-color 0.3s ease;
}

.contact-button:hover {
    background-color: #003d66;
}
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        
         .header1 {
            text-align: center;
            padding: 30px;
            background-color: #fff;
        }

        .header1 h1 {
            font-size: 32px;
            color: #006b8e;
        }

        .header1 p {
            font-size: 16px;
            color: #333;
        }

        .header1 button {
            background-color: #004080;
            color: white;
            padding: 12px 25px;
            border: none;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .header1 button:hover {  
            background-color: #004080;
        }

        .footer {
            background-color:  #ADD8E6;
            padding: 40px;
            color: white;
        }

        .footer .footer-content {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .footer .footer-content div {
            margin: 10px;
        }

        .footer h3 {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .footer ul {
            list-style-type: none;
        }

        .footer ul li {
            margin-bottom: 8px;
        }

        .footer ul li a {
            color: white;
            text-decoration: none;
        }

        .footer ul li a:hover {
            text-decoration: underline;
        }

        .social-media {
            display: flex;
            align-items: center;
            margin-top: 20px;
        }

        .social-media a {
            margin-right: 15px;
        }

        .social-media img {
            width: 30px;
            height: 30px;
        }

        .contact-info {
            font-size: 16px;
            margin-top: 20px;
        }

        .contact-info span {
            display: block;
            margin-bottom: 5px;
        }

        .payment-methods {
            margin-top: 30px;
            display: flex;
            align-items: center;
        }

        .payment-methods img {
            width: 50px;
            margin-right: 10px;
        }

        .footer-bottom {
            margin-top: 30px;
            font-size: 14px;
            text-align: center;
        }

        @media (max-width: 768px) {
            .footer .footer-content {
                flex-direction: column;
                align-items: center;
            }

            .footer ul li {
                text-align: center;
            }
            .footer p{
            background-color: #005f99; /* Dark blue footer */
            color: white;
            text-align: center;
            padding: 20px;
            }
        }
        
        
    </style>
</head>

<body>

    <!-- Top Bar -->
    <div class="top-bar">
    <marquee>
        <div class="contact-info">
            <i class="fas fa-phone"></i>
            
            <span>9991234888 / 98071055666</span>
            <a href="mailto:annapoornaseva@gmail.com"><i class="fas fa-envelope"></i> annapoornaseva@gmail.com</a>
            
        </div>
        </marquee>
    </div>

    <!-- Header Section with Navigation -->
    <div class="header">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/images/LOGO.png" alt="AS Logo">
            <h1>Annapoorna Seva</h1>
        </div>
        <nav>
        <div class="nav-links">
            <a href="/">Home</a>

            <!-- Dropdown Menu for "Reduce Food Wastage" -->
          <!--   <div class="dropdown">
                <a href="#" class="dropbtn">Tips</a>
                <div class="dropdown-content">
                    <a href="reducefoodwastage.html">Reduce Food Wastage</a>
                    <a href="improvefoodsecurity.html">Improve Food Security</a>
                </div>
            </div> --> 

            <a href="adddonation">Donate</a> 
            <a href="contactus">Contact</a>
            <a href="aboutus">About</a>
            <div class="dropdown">
                <a href="#" class="dropbtn">Login</a>
                <div class="dropdown-content">
                    <a href="adminlogin">Admin</a>
                    <a href="donorlogin">Donor</a>
                    <a href="supplierlogin">Supplier</a>
                    <a href="customerlogin">Customer</a>
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
            <a href="reducefoodwastage">
              <button class="shop-now-btn">Explore More</button>
            </a>
            
        </div>
    </section>

    <!-- Main Section -->
    <section class="main-section">
        <h1>Welcome to Annapoorna Seva</h1>
        <p>Annapoorna Seva is a noble initiative focused on eliminating hunger by providing nutritious meals to those in need. Rooted in the belief that food is a fundamental right, this service aims to bridge the gap between food donors and recipients. Individuals, organizations, and communities come together to donate food, either in the form of cooked meals or raw ingredients, which are then distributed to the underprivileged, ensuring no one goes hungry.

The initiative encourages generous donations from those with surplus food or resources, fostering a spirit of care and compassion. Annapoorna Seva not only feeds the hungry but also promotes the values of sharing and sustainability by reducing food waste. Through collaborative efforts, the initiative creates a platform for donors to contribute meaningfully, while those in need receive the basic sustenance necessary for a healthier life and future.</p>
        <a href="#" class="cta-btn">Support a Cause</a>

        <!-- Features Section -->
        <div class="features">
            <div class="feature-box">
                <img src="${pageContext.request.contextPath}/images/home2.png" alt="Image1">
                <h3>Community Driven</h3>
                <p>We take pride in supporting local causes, giving back to the community one meal at a time.</p>
            </div>
            <div class="feature-box">
                <img src="${pageContext.request.contextPath}/images/home2.png" alt="Icon 2">
                <h3>Family Friendly</h3>
                <p>Bring your family to enjoy a meal and join in the fun while contributing to noble causes.</p>
            </div>
            <div class="feature-box">
                <img src="${pageContext.request.contextPath}/images/home2.png" alt="Icon 3">
                <h3>Deliciously Charitable</h3>
                <p>Every meal you enjoy helps someone in need, making dining with us a fulfilling experience.</p>
            </div>
        </div>
    </section>

    <!-- Medical Crowdfunding Section -->
    <div class="container">
        <h1>Crowdfunding Initiatives</h1>
        <div class="grid">
            <div class="grid-item">
                <i class="fas fa-heartbeat icon"></i>
                <h3> Meal Sponsorship </h3>
                <p>Your donations can help save lives in times of critical need.</p>
            </div>
            <div class="grid-item">
                <i class="fas fa-hands-helping icon"></i>
                <h3> Food Pantry and Food Bank</h3>
                <p>Help patients continue their treatment without financial stress.</p>
            </div>
        </div>
        <div class="grid">
            <div class="grid-item">
                <i class="fas fa-heartbeat icon"></i>
                <h3> Holiday Meal Campaigns </h3>
                <p>Your donations can help save lives in times of critical need.</p>
            </div>
            <div class="grid-item">
                <i class="fas fa-hands-helping icon"></i>
                <h3> School Meal Program</h3>
                <p>Help patients continue their treatment without financial stress.</p>
            </div>
        </div>
    </div>

    <!-- Fundraisers Section -->
    <div class="container">
        <h3>Our Fundraisers</h3>
        <div class="card-container">
            <div class="card">
                <img src="${pageContext.request.contextPath}/images/home3.png" alt="Fundraiser Image">
                <h3>Cooked Meal Donations</h3>
                <div class="raised-amount">$12,000 raised</div>
                <div class="progress">
                    <div class="progress-bar" style="width: 70%;"></div>
                </div>
                <p class="last-donation">Last donation 9 minutes ago</p>
                <div class="card-footer">
                    <div class="days-left"><i class="fas fa-clock"></i> 10 Days Left</div>
                    <div class="supporters"><i class="fas fa-user-friends"></i> 67 Supporters</div>
                </div>
            </div>
            <div class="card">
                <img src="${pageContext.request.contextPath}/images/home4.png" alt="Fundraiser Image">
                <h3>Grocery Donations</h3>
                <div class="raised-amount">$31,000 raised</div>
                <div class="progress">
                    <div class="progress-bar" style="width: 70%;"></div>
                </div>
                <p class="last-donation">Last donation 2 minutes ago</p>
                <div class="card-footer">
                    <div class="days-left"><i class="fas fa-clock"></i> 10 Days Left</div>
                    <div class="supporters"><i class="fas fa-user-friends"></i> 102 Supporters</div>
                </div>
            </div>
            <div class="card">
                <img src="${pageContext.request.contextPath}/images/home5.png" alt="Fundraiser Image">
                <h3>Staple Items and Dry Goods</h3>
                <div class="raised-amount">$7,000 raised</div>
                <div class="progress">
                    <div class="progress-bar" style="width: 70%;"></div>
                </div>
                <p class="last-donation">Last donation 30 minutes ago</p>
                <div class="card-footer">
                    <div class="days-left"><i class="fas fa-clock"></i> 10 Days Left</div>
                    <div class="supporters"><i class="fas fa-user-friends"></i> 65 Supporters</div>
                </div>
            </div>
            <div class="card">
                <img src="${pageContext.request.contextPath}/images/home6.png" alt="Fundraiser Image">
                <h3>Corporate Food Donations</h3>
                <div class="raised-amount">$98,000 raised</div>
                <div class="progress">
                    <div class="progress-bar" style="width: 70%;"></div>
                </div>
                <p class="last-donation">Last donation 1 minute ago</p>
                <div class="card-footer">
                    <div class="days-left"><i class="fas fa-clock"></i> 10 Days Left</div>
                    <div class="supporters"><i class="fas fa-user-friends"></i> 240 Supporters</div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="faq-container">
        <h1>FAQ</h1>

        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(0)">
                What are the most common causes of food waste? <span class="plus">+</span>
            </div>
            <div class="faq-answer" id="faq-answer-0">
                Over-purchasing food,Improper food storage,Confusion over expiration and "best before" dates,Over-preparation of meals at home or in restaurants,Inefficient supply chain management in food industries.
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(1)">
                How can individuals reduce food waste at home? <span class="plus">+</span>
            </div>
            <div class="faq-answer" id="faq-answer-1">
                Plan meals in advance,Create shopping lists and stick to them,Store food properly to extend its shelf life,Use leftovers creatively,Compost food scraps that cannot be eaten.
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(2)">
                How can technology help reduce food waste? <span class="plus">+</span>
            </div>
            <div class="faq-answer" id="faq-answer-2">
                Apps that help consumers manage food expiration dates,Data analytics for businesses to optimize supply chains and minimize excess inventory,Platforms connecting surplus food to food donation networks,Smart storage solutions to preserve food for longer durations.
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(3)">
                What is the environmental impact of food waste? <span class="plus">+</span>
            </div>
            <div class="faq-answer" id="faq-answer-3">
                Food waste contributes to greenhouse gas emissions when it decomposes in landfills,Wastes the resources (water, energy, labor) used to produce, transport, and store food,Contributes to deforestation and biodiversity loss due to unnecessary agricultural expansion
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(4)">
                What role do businesses and restaurants play in reducing food waste? <span class="plus">+</span>
            </div>
            <div class="faq-answer" id="faq-answer-4">
                Implement portion control and offer different meal sizes,Donate surplus food to food banks and charities,Educate staff and customers about reducing food waste,Use technology for better inventory management and demand forecasting.
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer(5)">
                What is the 'ugly food' movement? <span class="plus">+</span>
            </div>
            <div class="faq-answer" id="faq-answer-5">
                A movement encouraging the sale and consumption of imperfect-looking but perfectly edible fruits and vegetables that would otherwise be discarded by retailers.
            </div>
        </div>

<a href="contactus">
              <button class="contact-button">Contact Us for More Information</button>
            </a>
        
    </div>
    
    <div class="header1">
        <h1>Gift Smiles with Monthly Giving</h1>
        <p>6,619 Lives Have Been Saved With Monthly Donations From 4,21,908 Donors. Save Countless Lives By Giving Monthly.</p><br>
        <a href="adddonation">
              <button>Start Monthly Giving</button>
            </a>
        
        
    </div>

    <!-- Footer Section -->
    <footer class="footer">
        <div class="footer-content">
            <!-- Social Media Section -->
            <div class="social">
                <h3>Annapoorna Seva</h3>
                <div class="social-media">
                    <a href="#"><img src="https://img.icons8.com/fluent/48/000000/facebook-new.png" alt="Facebook"></a>
                    <a href="#"><img src="https://img.icons8.com/fluent/48/000000/twitter.png" alt="Twitter"></a>
                    <a href="#"><img src="https://img.icons8.com/fluent/48/000000/linkedin.png" alt="LinkedIn"></a>
                    <a href="#"><img src="https://img.icons8.com/fluent/48/000000/youtube-play.png" alt="YouTube"></a>
                    <a href="#"><img src="https://img.icons8.com/fluent/48/000000/instagram-new.png" alt="Instagram"></a>
                    <a href="#"><img src="https://img.icons8.com/fluent/48/000000/whatsapp.png" alt="WhatsApp"></a>
                </div>
                <div class="contact-info">
                    <span>2.5M+ Followers</span>
                    <span>Email: info@as.org</span>
                    <span>Contact No: +91 9930088522</span>
                </div>
            </div>

            <!-- Causes Section -->
            <div class="causes">
                <h3>Causes</h3>
                <ul>
                    <li><a href="#">Overproduction</a></li>
                    <li><a href="#">Poor Storage Practices</a></li>
                    <li><a href="#">Consumer Behavior</a></li>
                    <li><a href="#">Imperfect Produce</a></li>
                    <li><a href="#">Plate Waste</a></li>
                    <li><a href="#">Processing Losses</a></li>
                    <li><a href="#">Lack of Awareness</a></li>
                </ul>
            </div>

            <!-- How it Works Section -->
            <div class="how-it-works">
                <h3>How it works?</h3>
                <ul>
                    <li><a href="#">Food Rescue Platforms</a></li>
                    <li><a href="#">Composting Systems</a></li>
                    <li><a href="#">Smart Fridges</a></li>
                    <li><a href="#">Food Donation Apps</a></li>
                    <li><a href="#">Portion Control Devices</a></li>
                    <li><a href="#">Shelf-Life Extension Technology</a></li>
                    <li><a href="#">AI-Driven Inventory Management</a></li>
                    <li><a href="#">Food Sharing Communities</a></li>
                </ul>
            </div>








            <!-- About Us Section -->
            <div class="about-us">
                <h3>About Us</h3>
                <ul>
                    <li><a href="#">Team AS</a></li>
                    <li><a href="#">In The News</a></li>
                    <li><a href="#">Web Stories</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">AS Blog</a></li>
                    <li><a href="#">Success Stories</a></li>
                    <li><a href="#">Is AS Genuine?</a></li>
                </ul>
            </div>

            <!-- Support Section -->
            <div class="support">
                <h3>Support</h3>
                <ul>
                    <li><a href="#">Reduce Food Wastage</a></li>
                    <li><a href="#">FAQs & Help Center</a></li>
                    <li><a href="#">Are AS Campaigns Genuine?</a></li>
                    <li><a href="#">Fundraiser Video</a></li>
                    <li><a href="#">Trust & Safety</a></li>
                    <li><a href="#">Plans & Pricing</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
        </div>

        <!-- Payment Methods Section -->
        <div class="payment-methods">
            <img src="https://img.icons8.com/color/48/000000/visa.png" alt="Visa">
            <img src="https://img.icons8.com/color/48/000000/mastercard-logo.png" alt="MasterCard">
            <img src="https://img.icons8.com/color/48/000000/rupay.png" alt="RuPay">
            <img src="https://img.icons8.com/color/48/000000/lock.png" alt="Secure">
        </div>

        <!-- Footer Bottom Text -->
        <div class="footer-bottom">
            <p>&copy; 2024 Annapoorna Seva. All rights reserved.</p>
        </div>
    </footer>
    
</body>

</html>
<script>
function toggleAnswer(index) {
    const answer = document.getElementById(`faq-answer-${index}`);
    const plusIcon = answer.previousElementSibling.querySelector('.plus');

    // Toggle the display of the answer
    if (answer.style.display === 'block') {
        answer.style.display = 'none';
        plusIcon.style.transform = 'rotate(0deg)';
    } else {
        answer.style.display = 'block';
        plusIcon.style.transform = 'rotate(45deg)';
    }
}
</script>
