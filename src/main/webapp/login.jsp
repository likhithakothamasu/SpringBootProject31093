<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
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
            background: #FFFFFF;
        }

        .login-container {
            background: linear-gradient(135deg, #b3e5fc, #81d4fa);
            border-radius: 15px;
            padding: 40px;
            width: 400px;
            text-align: center;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.5);
            color: white;
        }

        .login-container img {
            height: 60px;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        .login-container h2 {
            margin-bottom: 20px;
            color: #ffffff;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 15px 0;
            border: none;
            border-bottom: 2px solid #00aaff;
            background: transparent;
            color: #fff;
            font-size: 16px;
            outline: none;
        }

        .login-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #00aaff;
            border: none;
            color: #fff;
            font-size: 16px;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-container input[type="submit"]:hover {
            background-color: #0088cc;
        }

        .login-container .forgot-password {
            margin-top: 10px;
            font-size: 14px;
            color: #ffffff;
            text-decoration: none;
        }

        .login-container .register {
            margin-top: 20px;
            font-size: 16px;
            color: #00aaff;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <img src="https://cdn-icons-png.flaticon.com/512/3064/3064197.png" alt="Profile Icon">
        <h2>Login</h2>
        <form id="loginForm">
            <input type="text" placeholder="Username" id="username" required>
            <input type="password" placeholder="Password" id="password" required>
            <input type="submit" value="LOGIN">
        </form>
    </div>

    <script>
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            event.preventDefault();
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            // Check credentials
            if (username === 'admin' && password === 'password') {
                // Redirect to a JSP page if credentials are correct
                window.location.href = 'checkadminlogin';
            } else {
                alert('Invalid credentials!');
            }
        });
    </script>
</body>
</html>
