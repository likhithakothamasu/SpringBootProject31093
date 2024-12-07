<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Employees</title>
    <style>
       /* Table container styling */
table {
    width: 80%; /* Reduced table width */
    margin: 30px auto; /* Center the table */
    border-collapse: collapse;
    background-color: #f7f9fb; /* Soft light background color */
    font-family: 'Poppins', Arial, sans-serif; /* Modern font */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    border-radius: 8px; /* Slightly rounded corners */
    overflow: hidden; /* To apply border radius cleanly */
}

/* Table borders */
table, th, td {
    border: 1px solid #e0e0e0; /* Light gray border */
}

/* Table header styling */
th {
    padding: 12px;
    background-color: #34495e; /* Dark blue background */
    color: white; /* White text for header */
    text-transform: uppercase; /* Uppercase header text */
    letter-spacing: 1px; /* Letter spacing for better readability */
    font-size: 14px;
}

/* Table data cell styling */
td {
    padding: 10px;
    text-align: center;
    word-wrap: break-word;
    font-size: 14px;
    color: #2c3e50; /* Dark text for readability */
}

/* Zebra striping for rows */
tr:nth-child(even) {
    background-color: #f2f4f8; /* Soft gray for even rows */
}

tr:nth-child(odd) {
    background-color: #ffffff; /* White for odd rows */
}

/* Hover effect for table rows */
tr:hover {
    background-color: #daeaf3; /* Light blue on hover */
    transition: background-color 0.3s ease; /* Smooth transition */
}

/* Responsive table - Adjust on smaller screens */
@media (max-width: 768px) {
    table {
        width: 100%; /* Full width on small screens */
        font-size: 12px; /* Smaller font size */
    }

    th, td {
        padding: 8px; /* Smaller padding */
    }
}

/* Headings */
h3 {
    text-align: center;
    color: #34495e; /* Dark blue for headings */
    font-size: 24px;
    font-weight: 600;
    margin-bottom: 20px;
}

/* Underline effect for the heading */
h3 u {
    text-decoration-color: #3498db; /* Light blue underline */
}

    </style>
</head>
<body>
    <h3><u>View All Suppliers</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>CITY</th>
            <th>RATING</th>
            <th>PASSWORD</th>
            
        </tr>
        <c:forEach items="${supplierlist}" var="supplier">
            <tr>
                <td><c:out value="${supplier.id}"/></td>
                <td><c:out value="${supplier.name}"/></td>
                <td><c:out value="${supplier.gender}"/></td>
                <td><c:out value="${supplier.email}"/></td>
                <td><c:out value="${supplier.contactNumber}"/></td>
                <td><c:out value="${supplier.city}"/></td>
                <td><c:out value="${supplier.rating}"/></td>
                <td><c:out value="${supplier.password}"/></td>
                <td>
        </c:forEach>
    </table>
</body>
</html>
