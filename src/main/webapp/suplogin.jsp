
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form</title>
  <style>
    /* Background gradient with shades of blue */
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #C7EAFE, #A2D9FF); /* Light blue gradient */
    }

    /* Container */
    .login-container {
      background-color: #FFFFFF; /* White background */
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
      width: 350px;
      text-align: center;
      position: relative;
    }

    /* User icon */
    .user-icon {
      width: 60px;
      height: 60px;
      background-color: #B0E0FE; /* Light blue for icon background */
      border-radius: 50%;
      margin: 0 auto 20px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .user-icon img {
      width: 50%;
    }

    /* Input fields */
    .login-container input[type="email"],
    .login-container input[type="password"] {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 20px;
      border: 1px solid #B0E0FE;
      outline: none;
      background-color: #F5FBFF; /* Light input background */
      color: #000000;
      font-size: 14px;
    }

    /* Login button */
    .login-btn {
      background-color: #B0E0FE; /* Light blue */
      color: #FFFFFF;
      padding: 10px;
      border: none;
      border-radius: 20px;
      width: 100%;
      font-size: 16px;
      cursor: pointer;
      margin-top: 20px;
    }

    .login-btn:hover {
      background-color: #A2D9FF;
    }

    /* Options - Remember me and Forgot Password */
    .options {
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-size: 12px;
      color: #5B5B5B;
    }

    .options label {
      display: flex;
      align-items: center;
    }

    .options a {
      color: #B0E0FE; /* Link color */
      text-decoration: none;
    }

    /* Checkbox */
    .options input[type="checkbox"] {
      margin-right: 5px;
    }

    /* Title */
    .title {
      font-size: 24px;
      font-weight: bold;
      color: #3B82F6; /* Blue color */
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <div class="title">Supplier Login</div>
    <form method="post" action="checksupplierlogin">
    <div class="user-icon">
      <img src="https://www.svgrepo.com/show/13656/user.svg" alt="User Icon">
    </div>
    <input type="email" id="email" name="email" placeholder=Email required/>
    <input type="password" id="password" name="password" placeholder=Password required/>
    <div class="options">
      <label><input type="checkbox"> Remember me</label>
      <a href="#">Forgot Password?</a>
    </div>
    <button class="login-btn">Login</button>
    </form>
  </div>
</body>
</html>
