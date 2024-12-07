<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Donor Status</title>
    <style>
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
     <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Update Employee Status</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>EMAIL</th>
            <th>DATE OF BIRTH</th>
            <th>CONTACT</th>
            <th>ADDRESS</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${donorlist}" var="donor">
            <tr>
                <td><c:out value="${donor.id}"/></td>
                <td><c:out value="${donor.name}"/></td>
                <td><c:out value="${donor.gender}"/></td>
                <td><c:out value="${donor.email}"/></td>
                <td><c:out value="${donor.dateofbirth}"/></td>
                <td><c:out value="${donor.contact}"/></td>
                <td><c:out value="${donor.address}"/></td>
                <td><c:out value="${donor.status}"/></td>
                <td>
       
       <a href='<c:url value="updatestatus?id=${donor.id}&status=Accepted"></c:url>'>Accept</a>
       <a href='<c:url value="updatestatus?id=${donor.id}&status=Rejected"></c:url>'>Reject</a>
         
           </td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>
