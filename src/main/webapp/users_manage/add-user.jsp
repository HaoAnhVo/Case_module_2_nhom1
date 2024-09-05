<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String message = (String) session.getAttribute("message");
    String status = (String) session.getAttribute("status");
    if (message != null && status != null) {
%>
<div id="popup" class="popup <%= status %>">
    <span class="popup-message"><%= message %></span>
    <button id="close-popup" onclick="closePopup()">X</button>
</div>
<%
        session.removeAttribute("message");
        session.removeAttribute("status");
    }
%>

<html>
<head>
    <title>Thêm Mới</title>
    <style>
        body {
            margin: 0;
            padding: 20px;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #c0b3b3, #98FF98);
            color: #333;
            display: flex;
            min-height: 100vh;
        }

        .add-user-body {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
        }

        h1, h2 {
            font-size: 28px;
            font-weight: 600;
            text-align: center;
            margin-bottom: 20px;
            color: #444;
        }
        /* Add User */
        form {
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        form label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: bold;
        }

        form input[type="text"],
        form input[type="password"],
        form input[type="email"],
        form input[type="date"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            color: #555;
        }

        form input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #86b817;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            font-weight: bold;
        }

        form input[type="submit"]:hover {
            background-color: #688b12;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: bold;
        }

        select {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            color: #555;
            background-color: #fff;
            appearance: none;
        }

        select::-ms-expand {
            display: none;
        }

        select:hover {
            border-color: #86b817;
        }

        select:focus {
            border-color: #86b817;
            outline: none;
            box-shadow: 0 0 5px rgba(134, 184, 23, 0.5);
        }

        .back-link {
            margin-top: 10px;
            text-decoration: none;
            color: #333;
            font-size: 18px;
            display: inline-flex;
            align-items: center;
            transition: color 0.3s ease;
        }

        .back-link .arrow {
            display: inline-block;
            margin-right: 8px;
            transition: transform 0.3s ease;
        }

        .back-link:hover .arrow {
            transform: translateX(-3px);
        }

        .back-link:hover {
            color: #86b817;
        }

        /* Responsive adjustments */
        @media (max-width: 480px) {
            form {
                padding: 15px 20px;
            }

            form input[type="submit"] {
                padding: 12px;
                font-size: 14px;
            }
        }

        .popup {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: #86b817; /* Success color */
            color: white;
            padding: 15px 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        /* Error color */
        .popup.error {
            background-color: #e74c3c;
        }

        /* Message text */
        .popup-message {
            font-size: 14px;
            margin-right: 10px;
        }

        /* Close button */
        #close-popup {
            background: none;
            border: none;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        /* Animation for smooth fade-in */
        .popup {
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body class="add-user-body">
<h2>Thêm mới người dùng</h2>
<form action="UserServlet?action=insert" method="post">
    <label for="username">Tài khoản</label>
    <input type="text" id="username" name="username" required><br>

    <label for="password">Mật khẩu</label>
    <input type="password" id="password" name="password" required><br>

    <label for="name">Họ tên</label>
    <input type="text" id="name" name="name" required><br>

    <label for="email">Email</label>
    <input type="email" id="email" name="email" required><br>

    <label for="role">Vai trò</label>
    <select id="role" name="role" required>
        <option value="">-- --</option>
        <option value="admin">Admin</option>
        <option value="moderator">Moderator</option>
        <option value="viewer">Viewer</option>
    </select><br>

    <label for="birthday">Ngày sinh</label>
    <input type="date" id="birthday" name="birthday" required><br>

    <input type="submit" value="Thêm">

</form>
<a href="UserServlet?action=list" class="back-link">
    <span class="arrow">←</span>Quay về trang trước
</a>
</body>
</html>