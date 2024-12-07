<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Impact of Surplus Food</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        /* Navbar styling */
        .navbar {
            background-color: #2f665f;
            padding: 10px 20px;
            display: flex;
            justify-content: space-around;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px;
            font-weight: bold;
        }

        .navbar a:hover {
            background-color: #1e4b42;
            border-radius: 5px;
        }

        .active {
            background-color: #19594d;
            border-radius: 5px;
        }

        /* Content section styling */
        .content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 40px;
            background-color: white;
            margin: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .content .text {
            flex: 2;
            padding-right: 40px;
        }

        .content .text h2 {
            font-size: 2rem;
            color: #2f3a4a;
            margin-bottom: 20px;
        }

        .content .text p {
            font-size: 1.1rem;
            color: #4f5a6a;
            line-height: 1.6;
        }

        .content .image {
            flex: 1;
        }

        .content .image img {
            width: 100%;
            border-radius: 8px;
        }

        /* Footer styling */
        footer {
            background-color: #2f665f;
            color: white;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="#">What is Food Waste?</a>
        <a href="#" class="active">What is the Impact?</a>
        <a href="#">Where Does Surplus Food Occur?</a>
        <a href="#">Which Foods are Surplus?</a>
        <a href="#">What Causes Surplus Food?</a>
    </div>

    <!-- Content Section -->
    <section class="content">
        <div class="text">
            <h2>What is the Impact of Surplus Food?</h2>
            <p>
                Food that is produced but never eaten still requires enormous resources to grow, harvest, 
                transport, cool, cook, or otherwise prepare—even when it’s disposed of. It’s an imprudent use of our food supply chain, 
                and it has enormous impacts across our climate and natural resources, food insecurity, and the economy.
            </p>
        </div>
        <div class="image">
            <img src="home1.png" alt="Surplus Food Impact Image">
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>© 2024 ReFED. All rights reserved.</p>
    </footer>

</body>
</html>
