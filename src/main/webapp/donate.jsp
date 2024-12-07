<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donation Form</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: url('${pageContext.request.contextPath}/images/donate1.png') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
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

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            backdrop-filter: blur(8px);
            z-index: -1;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            z-index: 1;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .form-group input, .form-group select {
            width: 48%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group input[type="date"] {
            padding: 8px 10px;
        }

        .tree-count, .total-amount {
            display: flex;
            justify-content: space-between;
        }

        .tree-count input, .total-amount input {
            width: 48%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .special-request {
            margin: 20px 0;
            display: flex;
            align-items: center;
        }

        .special-request label {
            margin-left: 10px;
        }

        .net-amount {
            margin-bottom: 20px;
        }

        .net-amount input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .submit-btn {
            text-align: center;
        }

        .submit-btn button {
            padding: 10px 30px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .submit-btn button:hover {
            background-color: #0056b3;
        }

        .extra-options {
            display: none;
            margin-left: 20px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 15px;
        }

        .extra-options label {
            display: block;
            margin-bottom: 10px;
        }

        .backdrop-filter {
            backdrop-filter: blur(10px);
        }
    </style>
</head>
<body>
    
    <br><br>

    <div class="overlay"></div>

    <div class="card">
        <h2>Donation Form</h2>
        <form id="donationForm">
            <div class="form-group">
                <input type="text" id="donorName" placeholder="Donor Name" required>
                <input type="email" id="donorEmail" placeholder="Donor Email" required>
            </div>
            <div class="form-group">
                <input type="text" id="donorMobile" placeholder="Donor Mob No" required>
                <input type="date" id="donationDate" value="2024-10-03" required>
            </div>
            <div class="form-group">
                <input type="text" id="instagramId" placeholder="Instagram ID (Optional)">
                <input type="text" id="parcelName" placeholder="Name of Parcel" required>
            </div>
            <div class="tree-count">
                <input type="number" id="treeCount" value="10" placeholder="Tree Count" required>
                <input type="number" id="totalAmount" value="550" placeholder="Total Amount" required>
            </div>
            <div class="special-request">
            <input type="checkbox" id="specialRequest" onchange="toggleSpecialRequests()">
                <label for="specialRequest">Any Special Request?</label>
                
            </div>
            <div class="extra-options" id="extraOptions">
                <label><input type="checkbox"> Would you like us to make a video of your donation with your message?</label>
                <label><input type="checkbox"> Add your photo to the food parcel?</label>
                <label><input type="checkbox"> Do you want 80G Tax Exemption on your donation?</label>
            </div>
            <div class="net-amount">
                <input type="number" id="netAmount" value="550" placeholder="Net Amount" readonly>
            </div>
            <div class="submit-btn">
                <button type="submit">DONATE NOW</button>
            </div>
        </form>
    </div>

    <script>
        // Handle form submission
        document.getElementById("donationForm").addEventListener("submit", function(event) {
            event.preventDefault();
            alert("Donation Submitted Successfully!");
        });

        // Toggle visibility of special request options
        function toggleSpecialRequests() {
            const extraOptions = document.getElementById("extraOptions");
            if (document.getElementById("specialRequest").checked) {
                extraOptions.style.display = "block";
            } else {
                extraOptions.style.display = "none";
            }
        }
    </script>

</body>
</html>
