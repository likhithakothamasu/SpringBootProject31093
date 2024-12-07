<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AS-Reduce Food Wastage</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #e6f7ff; /* Light blue background */
            margin: 0;
            padding: 0;
        }

        .image-container {
            width: 100%;
            max-width: 1200px; /* Set max-width for large images */
            margin: 0 auto; /* Center the image */
            overflow: hidden; /* Ensure overflow is managed */
        }

        .image-container img {
            width: 100%; /* Make the image responsive */
            height: auto; /* Maintain the aspect ratio */
            object-fit: cover; /* Ensures image covers the container nicely */
            border-radius: 10px; /* Optional: Rounded corners */
        }

        header {
            background-color: white;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .logo {
            display: inline-block;
            vertical-align: middle;
        }

        nav {
            display: inline-block;
            float: right;
        }

        nav ul {
            list-style-type: none;
        }

        nav ul li {
            display: inline-block;
            margin: 0 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: #005f99; /* Dark blue */
            font-weight: bold;
        }

        .hero {
            background-image: linear-gradient(to bottom right, rgba(47, 102, 95, 0.6), rgba(51, 153, 255, 0.6)), url('/images/reducefoodwastage.png');
            background-size: cover;
            background-position: center;
            height: 70vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
            padding: 0 20px;
        }

        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: white; /* White for better contrast */
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            color: #f0f8ff; /* Lighter blue for the paragraph */
        }

        .hero button {
            padding: 10px 20px;
            background-color: #3399ff; /* Button with medium blue */
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
        }

        .hero button:hover {
            background-color: #005f99; /* Darker blue on hover */
        }

        footer {
            background-color: #005f99; /* Dark blue footer */
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <div class="logo">
            <h1><span style="color: #3399ff;">Annapoorna</span><span style="color: #005f99;">Seva</span></h1>
        </div>
        <nav>
            <ul>
                <li><a href="#">What is food waste?</a></li>
                <li><a href="#">What is the impact?</a></li>
                <li><a href="#">Where does surplus food occur?</a></li>
                <li><a href="#">Which food are surplus?</a></li>
                <li><a href="#">What causes food surplus?</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div>
            <h1>We're advancing data-driven solutions to fight food waste.</h1>
            <p>AS is working across the food system to cut food loss and waste in support of national and international goals.</p>
            <a href="aboutfoodwastage">
              <button>About Food Waste</button>
            </a>
            <a href="findsolutions">
              <button>Find Solutions</button>
            </a>
        </div>
    </section>

    <!-- Image Section -->
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage1.png" alt="A large dimension image">
    </div>
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage2.png" alt="A large dimension image">
    </div>
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage3.png" alt="A large dimension image">
    </div>
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage5.png" alt="A large dimension image">
    </div>
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage6.png" alt="A large dimension image">
    </div>
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage7.png" alt="A large dimension image">
    </div>
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage8.png" alt="A large dimension image">
    </div>
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage9.png" alt="A large dimension image">
    </div>
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage10.png" alt="A large dimension image">
    </div>
    <br><br>
    <div class="image-container">
        <img src="/images/reducefoodwastage11.png" alt="A large dimension image">
    </div>
    <br><br>

    <!-- Footer Section -->
    <footer>
        <p> 2024 AnnapoornaSeva. All rights reserved.</p>
    </footer>

</body>
</html>
