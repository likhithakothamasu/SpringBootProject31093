<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Donor</title>
    <style>
        /* Table container styling */
        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: #f7f9fb;
            font-family: 'Poppins', Arial, sans-serif;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        /* Table borders */
        table, th, td {
            border: 1px solid #e0e0e0;
        }

        /* Table header styling */
        th {
            padding: 12px;
            background-color: #34495e;
            color: white;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-size: 14px;
        }

        /* Table data cell styling */
        td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
            font-size: 14px;
            color: #2c3e50;
        }

        /* Zebra striping for rows */
        tr:nth-child(even) {
            background-color: #f2f4f8;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        /* Hover effect for table rows */
        tr:hover {
            background-color: #daeaf3;
            transition: background-color 0.3s ease;
        }

        /* Responsive table - Adjust on smaller screens */
        @media (max-width: 768px) {
            table {
                width: 100%;
                font-size: 12px;
            }

            th, td {
                padding: 8px;
            }
        }

        /* Headings */
        h3 {
            text-align: center;
            color: #34495e;
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        /* Underline effect for the heading */
        h3 u {
            text-decoration-color: #3498db;
        }

    </style>
</head>
<body>
    <h3 style="text-align: center;"><u>Delete Donor</u></h3>
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
                    <a href='<c:url value="delete?id=${donor.id}"></c:url>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
