<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>Supplier Registration</title>
</head>
<body>

<div class="form-container">
    <h3><u>Add Supplier</u></h3>
    <form method="post" action="insertsup">

        <table>
            <tr>
                <td><label for="id">ID</label></td>
                <td><input type="text" id="id" name="sid" required="required"/></td>
            </tr>

            <tr>
                <td><label for="name">Name</label></td>
                <td><input type="text" id="name" name="sname" required="required"/></td>
            </tr>

            <tr>
                <td><label for="gender">Gender</label></td>
                <td>
                    <select id="gender" name="sgender" required="required">
                        <option value="">---Select---</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td><label for="email">Email</label></td>
                <td><input type="email" id="email" name="semail" required="required"/></td>
            </tr>

            <tr>
                <td><label for="contact_num">Contact Number</label></td>
                <td><input type="text" id="contact_num" name="scontact" required="required"/></td>
            </tr>

            <tr>
                <td><label for="city">City</label></td>
                <td><input type="text" id="city" name="scity" required="required"/></td>
            </tr>

            <tr>
                <td><label for="rating">Rating</label></td>
                <td><input type="number" id="rating" name="srating" step="0.1" min="0" max="5" required="required"/></td>
            </tr>

            <tr>
                <td><label for="password">Password</label></td>
                <td><input type="password" id="password" name="spwd" required="required"/></td>
            </tr>

            <tr>
                <td colspan="2" class="button-container">
                    <input type="submit" value="Add Supplier" class="button">
                    <input type="reset" value="Clear" class="button">
                </td>
            </tr>
        </table>

    </form>
</div>

</body>
</html>
