a<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .navbar {
            background-color: #3498db;
            color: #fff;
            padding: 15px 20px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar h1 {
            font-size: 24px;
            font-weight: bold;
            margin: 0;
            color: #fff;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            gap: 5px;
        }

        .navbar ul li {
            display: inline;
        }

        .navbar ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 16px;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .navbar ul li a:hover {
            background-color: #2980b9;
        }

        /* Centered Form Container */
        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 600px;
            margin: 20px;
        }

        h3 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            margin-top: 15px;
        }

        td {
            padding: 12px;
            vertical-align: middle;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="tel"],
        input[type="password"],
        input[type="date"],
        input[type="submit"],
        input[type="reset"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            transition: all 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="email"]:focus,
        input[type="tel"]:focus,
        input[type="password"]:focus,
        input[type="date"]:focus,
        textarea:focus {
            border-color: #3498db;
            box-shadow: 0 0 5px rgba(52, 152, 219, 0.3);
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
            margin: 0 10px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #2c82c9;
        }
    </style>
</head>
<body>
  

  <div class="form-container">
      <h3><u>Customer Registration</u></h3>
      <form method="post" action="insertcustomer">
          <table>
              <tr>
                  <td><label for="name">Enter Name</label></td>
                  <td><input type="text" id="name" name="name" required /></td>
              </tr>
              <tr>
                  <td><label>Select Gender</label></td>
                  <td>
                      <input type="radio" id="male" name="gender" value="MALE" required />
                      <label for="male">Male</label>
                      <input type="radio" id="female" name="gender" value="FEMALE" required />
                      <label for="female">Female</label>
                      <input type="radio" id="others" name="gender" value="OTHERS" required />
                      <label for="others">Others</label>
                  </td>
              </tr>
              <tr>
                  <td><label for="email">Enter Email ID</label></td>
                  <td><input type="email" id="email" name="email" required /></td>
              </tr>
              <tr>
                  <td><label for="pwd">Enter Password</label></td>
                  <td><input type="password" id="password" name="password" required /></td>
              </tr>
              <tr>
                  <td><label for="contact">Enter Contact</label></td>
                  <td><input type="tel" id="contact" name="contactno" required /></td>
              </tr>
              <tr>
                  <td><label for="address">Enter Address</label></td>
                  <td><textarea id="address" name="address" rows="3" required></textarea></td>
              </tr>
              <tr>
                  <td><label for="yearlyincome">Enter Yearly Income</label></td>
                  <td><input type="number" id="yearlyincome" name="yearlyincome" required /></td>
              </tr>
              <tr>
                  <td colspan="2" class="button-container">
                      <input type="submit" value="Register" />
                      <input type="reset" value="Clear" />
                  </td>
              </tr>
          </table>
      </form>
  </div>
</body>
</html>
