<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column; /* Stack elements vertically */
            align-items: center;
            background: linear-gradient(135deg, #b3e5fc, #81d4fa); /* Light Blue Background */
            min-height: 100vh;
        }

        h1 {
            font-size: 48px;
            margin: 40px 0;
            color: #1e88e5; /* Deep Blue for Heading */
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .about-section {
            display: flex;
            align-items: center;
            width: 80%;
            max-width: 1200px;
            background-color: #ffffff; /* White Background for the Section */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 40px;
            border-radius: 10px;
            margin-bottom: 20px; /* Spacing between cards */
        }

        .image-container {
            flex: 1;
            margin-right: 30px;
        }

        .image-container img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Subtle shadow for the image */
        }

        .text-container {
            flex: 1;
        }

        p {
            font-size: 18px;
            line-height: 1.8;
            color: #37474f; /* Soft blue-gray color for text */
        }

        @media (max-width: 768px) {
            .about-section {
                flex-direction: column;
                text-align: center;
            }
            .image-container {
                margin-right: 0;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>

    <h1>About Us</h1> <!-- Page Heading -->

    <div class="about-section">
        <div class="image-container">
            <img src="images/aboutus2.png" alt="Person working with frame">
        </div>
        <div class="text-container">
            <h2>Team Lead</h2>
            <p>Department of Computer Science and Engineering<br>Koneru Lakshmaiah Education Foundation<br>Vaddeswaram, A.P., India</p>
        </div>
    </div>

    <div class="about-section">
        <div class="image-container">
            <img src="images/aboutus4.png" alt="Person">
        </div>
        <div class="text-container">
            <h2>Developer</h2>
            <p>Department of Computer Science and Engineering<br>Koneru Lakshmaiah Education Foundation<br>Vaddeswaram, A.P., India</p>
        </div>
    </div>

    <div class="about-section">
        <div class="image-container">
            <img src="images/aboutus3.png" alt="Person working with frame">
        </div>
        <div class="text-container">
            <h2>Developer</h2>
            <p>Department of Computer Science and Engineering<br>Koneru Lakshmaiah Education Foundation<br>Vaddeswaram, A.P., India</p>
        </div>
    </div>

</body>
</html>
