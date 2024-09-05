<%@ page import="org.example.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
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
    <title>Danh sách bài viết</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #c0b3b3, #98FF98);
            color: #333;
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            width: 15%;
            background-color: #86b817;
            color: white;
            display: flex;
            flex-direction: column;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar h2 {
            font-size: 22px;
            margin-bottom: 20px;
            color: white;
            text-align: center;
        }

        .sidebar a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            padding: 13px;
            display: block;
            border-radius: 12px;
            transition: background-color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #8fe751;
            padding-left: 10px;
        }

        .sidebar a.active {
            background-color: #9ec645;
            font-weight: 500;
        }

        .content {
            flex: 1;
            padding: 20px;
        }

        h1 {
            font-size: 28px;
            font-weight: 600;
            text-align: center;
            margin-bottom: 20px;
            color: #444;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table th {
            background-color: #86b817;
            color: white;
            padding: 10px;
            text-align: left;
        }

        table td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        .add {
            display: inline-block;
            text-decoration: none;
            background-color: #86b817;
            padding: 10px 20px;
            color: #fff;
            margin: 0 20px 20px 0;
            border-radius: 20px;
            cursor: pointer;
        }

        .add:hover {
            color: #688b12;
        }

        .actions {
            display: flex;
            gap: 18px;
        }

        .actions a {
            position: relative;
            display: inline-block;
            text-decoration: none;
            color: #86b817;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        .actions a:hover {
            color: #688b12;
        }

        .actions a::after {
            content: attr(data-tooltip);
            position: absolute;
            bottom: -25px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #333;
            color: white;
            padding: 5px 8px;
            border-radius: 5px;
            font-size: 12px;
            opacity: 0;
            visibility: hidden;
            white-space: nowrap;
            transition: opacity 0.3s ease, visibility 0.3s ease;
        }

        .actions a:hover::after {
            opacity: 1;
            visibility: visible;
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

        .popup.error {
            background-color: #e74c3c;
        }

        .popup-message {
            font-size: 14px;
            margin-right: 10px;
        }

        #close-popup {
            background: none;
            border: none;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

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

        .user-info-act {
            display: flex;
            align-items: center;
            justify-content: flex-end;
            gap: 30px;
        }

        .user-info {
            display: flex;
            align-items: center;
            font-size: 18px;
            color: #333;
        }

        .user-info i {
            margin-right: 8px;
            color: #86b817;
            font-size: 24px;
        }

        .user-info span {
            font-size: 18px;
        }
    </style>
</head>
<body>
<jsp:include page="../common/sidebar.jsp" />
<div class="content">
    <div class="user-info-act">
        <div class="user-info">
            <i class="fa-solid fa-user"></i>
            <span>${user.username}</span>
        </div>
        <a class="actions" href="LogoutServlet" style="text-decoration: none"
           data-tooltip="Đăng xuất"><i class="fa-solid fa-right-from-bracket"
                                       style="color: #86b817; font-size: 24px"></i></a>
    </div>
    <h1>Danh sách bài viết</h1>
    <a class="add" href="PostServlet?action=new">Thêm mới bài viết</a>

    <table border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tiêu đề</th>
            <th>Nội dung</th>
            <th>Hình ảnh</th>
            <th>Địa điểm</th>
            <th>Danh mục</th>
            <th>Hoạt động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="post" items="${posts}">
            <tr>
                <td>${post.postId}</td>
                <td>${post.title}</td>
                <td>${post.content}</td>
                <td><img src="${post.imageUrl}" alt="Post Image"/></td>
                <td>${post.locationName}</td>
                <td>${post.categoryName}</td>
                <td>
                    <div class="actions">
                        <a href="PostServlet?action=view&postId=${post.postId}" data-tooltip="Xem"><i
                                class="fa-brands fa-readme"></i></a>
                        <a href="PostServlet?action=edit&postId=${post.postId}" data-tooltip="Sửa"><i
                                class="fa-solid fa-pen-to-square"></i></a>
                        <a href="PostServlet?action=delete&postId=${post.postId}"
                           onclick="return confirm('Are you sure?')"
                           data-tooltip="Xóa">
                            <i class="fa-solid fa-trash"></i>
                        </a>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script src="<%=request.getContextPath()%>js/sub-script.js"></script>
</body>
</html>