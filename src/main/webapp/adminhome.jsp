<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <!-- Include Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f8;
        }

        /* Sidebar styling */
        .sidebar {
            width: 250px;
            background-color: #2c3e50; /* Dark blue */
            color: white;
            height: 100%;
            position: fixed;
            display: flex;
            flex-direction: column;
        }

        .sidebar a {
            padding: 15px 20px;
            text-decoration: none;
            color: white;
            display: block;
            transition: background 0.3s;
        }

        .sidebar a:hover {
            background-color: #34495e; /* Slightly lighter blue hover */
        }

        .sidebar a.active {
            background-color: #34495e;
        }

        .sidebar a i {
            margin-right: 10px;
        }

        .profile {
            text-align: center;
            padding: 30px 0;
            border-bottom: 1px solid #34495e;
        }

        .profile img {
            width: 80px;
            border-radius: 50%;
        }

        .profile h3 {
            margin-top: 10px;
            color: white;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
            background-color: #ecf0f1;
            height: 100vh;
            overflow-y: auto;
        }

        .header {
            background-color: #2980b9;
            color: white;
            padding: 10px 20px;
        }

        .content-area {
            background-color: #ADD8E6;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        /* Dropdown for Student Operations */
        .dropdown-btn {
            padding: 15px 20px;
            background-color: #2c3e50;
            border: none;
            color: white;
            display: flex;
            align-items: center;
            cursor: pointer;
            width: 100%;
            text-align: left;
        }

        .dropdown-btn i {
            margin-right: 10px;
        }

        .dropdown-container {
            display: none;
            background-color: #34495e;
        }

        .dropdown-container a {
            padding-left: 40px;
        }

        .dropdown-btn:focus {
            outline: none;
        }

        /* Top Donations Section */
        .top-donations {
            display: flex;
            justify-content: space-between;
            margin-bottom: 30px;
        }

        .donor-card {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            width: 29%;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .donor-card img {
            width: 60px;
            height: 60px;
            object-fit: cover;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .donor-card h4 {
            margin: 10px 0;
            color: #2980b9;
        }

        .donor-card p {
            margin: 5px 0;
            color: #7f8c8d;
        }

        /* Total Donations Section */
        .total-donations {
            display: flex;
            justify-content: space-between;
        }

        .donation-card {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            width: 46%;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .donation-card h3 {
            color: #2980b9;
            margin-bottom: 10px;
        }

        .donation-card .amount {
            font-size: 36px;
            color: #e74c3c;
        }

        .donation-card .today {
            color: #f39c12;
        }

        /* News Section */
        .news-section {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .news-section table {
            width: 100%;
            border-collapse: collapse;
        }

        .news-section table th, .news-section table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .news-section table th {
            background-color: #ecf0f1;
        }

        .news-section table td button {
            background-color: transparent;
            border: none;
            cursor: pointer;
            font-size: 18px;
        }

        .news-section table td .edit-btn {
            color: #2980b9;
        }

        .news-section table td .delete-btn {
            color: #e74c3c;
        }

        .post-news-section {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
        }

        .post-news-section input, .post-news-section textarea {
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .post-news-section button {
            background-color: #2980b9;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
        }

        .post-news-section button:hover {
            background-color: #3498db;
        }
        
        .chart-card {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
            text-align: center;
        }

        #myChart {
            max-width: 450px; /* Minimized size */
            height: 300px; /* Adjusted height */
            margin: 0 auto; /* Centered chart */
        }

    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <div class="profile">
            <img src="images/LOGO.png" alt="Profile Image">
            <h3>Annapoorna Seva</h3>
        </div>
        <a href="adminhome" ><i class="fas fa-home"></i> Home</a>

        <button class="dropdown-btn"><i class="fas fa-user"></i> Donor
            <i class="fa fa-caret-down" style="margin-left:auto;"></i>
        </button>
        <div class="dropdown-container">
            <a href="donorreg"><i class="fas fa-user-plus"></i> Add Donor</a>
            <a href="viewalldonors"><i class="fas fa-id-card"></i> View All Donors</a>
            <a href="updatedonor"><i class="fas fa-edit"></i> Update Donor</a>
            <a href="deletedonor"><i class="fas fa-trash"></i> Delete Donor</a>
        </div>
        
        <button class="dropdown-btn"><i class="fa fa-users"></i> Suppliers
            <i class="fa fa-caret-down" style="margin-left:auto;"></i>
        </button>
        <div class="dropdown-container">
            <a href="supreg"><i class="fas fa-user-plus"></i> Add Supplier</a>
            <a href="viewallsups"><i class="fas fa-id-card"></i> View All Suppliers</a>
            <a href="updatesupplier"><i class="fas fa-edit"></i> Update Supplier</a>
            <a href="deletesupplier"><i class="fas fa-trash"></i> Delete Supplier</a>
        </div>
        
        <button class="dropdown-btn"><i class="fas fa-user"></i> Customer
            <i class="fa fa-caret-down" style="margin-left:auto;"></i>
        </button>
        <div class="dropdown-container">
            <a href="customerreg"><i class="fas fa-user-plus"></i> Add Customer</a>
            <a href="viewallcustomers"><i class="fas fa-id-card"></i> View All Customers</a>
            <a href="updatecustomer"><i class="fas fa-edit"></i> Update Customer</a>
            <a href="deletecustomer"><i class="fas fa-trash"></i> Delete Customer</a>
        </div>
        <a href="viewalldonations"><i class="fas fa-id-card"></i> View All Donations</a>
        <a href="tracking"><i class="fas fa-search"></i> Track Donations</a>
        <a href="adminlogin"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
    
    <!-- Main Content -->
    
    <div class="content">
        <div class="header">
            <h1 align="center">Dashboard</h1>
        </div>
        
        <div class="chart-card">
                <h3>Donation Overview</h3>
                <canvas id="myChart"></canvas>
            </div>
        <br>
        
        <div class="content-area">
        
            <h2 align="center" style="color:white;">Active Donors</h2>
            <!-- Top Donations Section -->
            <div class="top-donations">
                <div class="donor-card">
                    <img src="${pageContext.request.contextPath}/images/sam.png" alt="Samantha">
                    <h4>Samantha</h4>
                    <p>Ravulapalem</p>
                    <p class="amount">$6900</p>
                </div>
                <div class="donor-card">
                    <img src="${pageContext.request.contextPath}/images/vijay.png" alt="Ram">
                    <h4>Vijay</h4>
                    <p>Chennai</p>
                    <p class="amount">$5000</p>
                </div>
                <div class="donor-card">
                    <img src="${pageContext.request.contextPath}/images/sai.png" alt="Rajesh">
                    <h4>Sai</h4>
                    <p>Bangalore</p>
                    <p class="amount">$4000</p>
                </div>
            </div>

            <div class="total-donations">
                <div class="donation-card">
                    <h3>Total Donations</h3>
                    <p class="amount">$22,500</p>
                </div>
                <div class="donation-card">
                    <h3>Donations Today</h3>
                    <p class="amount">$3,000</p>
                    <p class="today">(Increased by 30%)</p>
                </div>
            </div>
            <br>
            <div class="news-section">
                <h3>Recent News</h3>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Content</th>
                        <th>Date</th>
                        <th>Action</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>New milestone reached: $20,000 in donations!</td>
                        <td>12/12/2024</td>
                        <td><button class="edit-btn"><i class="fas fa-edit"></i></button> 
                            <button class="delete-btn"><i class="fas fa-trash"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Upcoming charity event in Hyderabad!</td>
                        <td>10/12/2024</td>
                        <td><button class="edit-btn"><i class="fas fa-edit"></i></button> 
                            <button class="delete-btn"><i class="fas fa-trash"></i></button>
                        </td>
                    </tr>
                </table>

                <div class="post-news-section">
                    <h4>Post New Update:</h4>
                    <input type="text" placeholder="News title">
                    <textarea rows="4" placeholder="Content"></textarea>
                    <button>Submit</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        var dropdowns = document.getElementsByClassName("dropdown-btn");
        for (let i = 0; i < dropdowns.length; i++) {
            dropdowns[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var dropdownContent = this.nextElementSibling;
                if (dropdownContent.style.display === "block") {
                    dropdownContent.style.display = "none";
                } else {
                    dropdownContent.style.display = "block";
                }
            });
        }
        
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                datasets: [{
                    label: 'Donations',
                    data: [1200, 1900, 3000, 500, 2000, 2500, 1800, 1500, 2100, 2000, 2300, 3000],
                    backgroundColor: 'rgba(173, 216, 230, 0.6)', // Light blue color
                    borderColor: 'rgba(0, 0, 0, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
        
    </script>
    
</body>
</html>
