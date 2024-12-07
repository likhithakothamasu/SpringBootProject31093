<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Customer Status</title>
    <style>
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

        table, th, td {
            border: 1px solid #e0e0e0;
        }

        th {
            padding: 12px;
            background-color: #34495e;
            color: white;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-size: 14px;
        }

        td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
            font-size: 14px;
            color: #2c3e50;
        }

        tr:nth-child(even) {
            background-color: #f2f4f8;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        tr:hover {
            background-color: #daeaf3;
            transition: background-color 0.3s ease;
        }

        @media (max-width: 768px) {
            table {
                width: 100%;
                font-size: 12px;
            }

            th, td {
                padding: 8px;
            }
        }

        h3 {
            text-align: center;
            color: #34495e;
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        h3 u {
            text-decoration-color: #3498db;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Update Customer Status</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>EMAIL</th>
            <th>PASSWORD</th>
            <th>ADDRESS</th>
            <th>CONTACT NO</th>
            <th>YEARLY INCOME</th>
        </tr>
        <c:forEach items="${customerList}" var="customer">
            <tr>
                <td><c:out value="${customer.id}"/></td>
                <td><c:out value="${customer.name}"/></td>
                <td><c:out value="${customer.gender}"/></td>
                <td><c:out value="${customer.email}"/></td>
                <td><c:out value="${customer.password}"/></td>
                <td><c:out value="${customer.address}"/></td>
                <td><c:out value="${customer.contactno}"/></td>
                <td><c:out value="${customer.yearlyincome}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
