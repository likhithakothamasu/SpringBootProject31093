<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" sizes="32x32">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #b3e5fc, #81d4fa);
        }

        .form-container {
            background: #ffffff;
            border-radius: 15px;
            padding: 40px;
            width: 400px;
            text-align: center;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
            color: #00aaff;
        }

        .form-container h3 {
            margin-bottom: 20px;
            color: #00aaff;
            font-size: 24px;
        }

        .icon-container {
            width: 50px;
            height: 50px;
            background-color: #00aaff;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto 20px;
        }

        .icon-container img {
            width: 24px;
            height: 24px;
        }

        .form-container table {
            width: 100%;
            margin-top: 10px;
        }

        .form-container label {
            color: #00aaff;
            font-size: 16px;
        }

        .form-container .input-container {
            display: flex;
            align-items: center;
            background: rgba(0, 170, 255, 0.1);
            border-radius: 25px;
            padding: 10px;
            margin-bottom: 15px;
        }

        .form-container .input-container img {
            width: 20px;
            margin-right: 10px;
        }

        .form-container input[type="text"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 10px;
            border: none;
            background: transparent;
            color: #00aaff;
            font-size: 16px;
            outline: none;
        }

        .form-container input[type="submit"] {
            width: 100%;
            padding: 15px;
            background-color: rgba(0, 170, 255, 0.2);
            border: none;
            color: #00aaff;
            font-size: 16px;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        .form-container input[type="submit"]:hover {
            background-color: rgba(0, 170, 255, 0.4);
        }
    </style>
</head>
<body> 
    <div class="form-container">
    <h3>Admin Panel</h3>
        <div class="icon-container">
            <img src="https://img.icons8.com/ios-filled/50/ffffff/lock.png" alt="lock icon">
        </div>
        
        <form method="post" action="checkadminlogin">
            <div class="input-container">
                <img src="https://img.icons8.com/ios-filled/50/00aaff/user-male.png" alt="user icon">
                <input type="text" id="username" name="username" placeholder="User Name" required/>
            </div>
            <div class="input-container">
                <img src="https://img.icons8.com/ios-filled/50/00aaff/lock.png" alt="lock icon">
                <input type="password" id="password" name="password" placeholder="Password" required/>
            </div>
            <input type="submit" value="Login"/>
        </form>
    </div>
</body>
</html>



