<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Donations</title>
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
    flex-direction: column;
    align-items: center; /* Center horizontally */
    justify-content: center; /* Center vertically */
    min-height: 100vh; /* Ensure full viewport height */
    padding: 20px;
}

h3 {
    color: #34495e;
    margin-bottom: 20px;
    font-size: 1.8em;
    font-weight: bold;
    text-decoration: underline;
    text-align: center;
}

p {
    font-size: 1em;
    margin-bottom: 10px;
    color: #555;
    text-align: center;
}

table {
    width: 80%; /* Adjust width as needed */
    border-collapse: collapse;
    margin-top: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    background-color: #ffffff;
    border-radius: 8px;
    overflow: hidden;
}

th, td {
    padding: 12px 15px;
    text-align: left;
    border-bottom: 1px solid #ddd;
    font-size: 14px;
}

th {
    background-color: #2c3e50;
    color: #ffffff;
    text-transform: uppercase;
}

tr {
    transition: background-color 0.2s ease-in-out;
}

tr:hover {
    background-color: #f2f2f2;
}

.actions {
    display: flex;
    gap: 10px;
}

.actions a {
    color: white;
    text-decoration: none;
    padding: 8px 15px;
    border-radius: 4px;
    font-weight: bold;
    font-size: 14px;
    transition: background-color 0.3s ease;
}

.view-btn {
    background-color: #3498db;
}

.view-btn:hover {
    background-color: #2980b9;
}

.delete-btn {
    background-color: #e74c3c;
}

.delete-btn:hover {
    background-color: #c0392b;
}


    </style>
</head>
<body>

    

    <h3>View All Donations</h3>
    <p>Total Donations: <c:out value="${count}" /></p>

    <!-- Donations Table -->
    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th>Donor Id</th>
            <th>Expiry</th>
            <th>Cooked/Raw</th>
            <th>Message</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${donationlist}" var="donation">
            <tr>
                <td><c:out value="${donation.id}" /></td>
                <td><c:out value="${donation.firstName}" /> 
                <td><c:out value="${donation.lastName}" /></td>
                <td><c:out value="${donation.email}" /></td>
                <td><c:out value="${donation.phoneNumber}" /></td>
                <td><c:out value="${donation.streetAddress}" /></td>
                <td><c:out value="${donation.city}" /></td>
                <td><c:out value="${donation.state}" /></td>
                <td><c:out value="${donation.country}" /></td>
                <td><c:out value="${donation.donorid}" /></td>
                <td><c:out value="${donation.expirydate}" /></td>
                <td><c:out value="${donation.cookedorraw}" /></td>
                <td><c:out value="${donation.queries}" /></td>
                <td class="actions">
                    <a href="viewdonation?id=${donation.id}" class="view-btn">View</a>
                    <a href="deletedonation?id=${donation.id}" class="delete-btn" onclick="return confirm('Are you sure you want to delete this donation?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
