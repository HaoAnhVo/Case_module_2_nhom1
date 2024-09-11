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
    <title>Quản lý bài viết</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link href="../common/sidebar.css" rel="stylesheet">
    <style>
        .column-content {
            display: -webkit-box;
            -webkit-line-clamp: 5;
            -webkit-box-orient: vertical;
            overflow: hidden;
            box-sizing: border-box;
            text-overflow: ellipsis;
            padding: 0;
            margin: 10px;
            border: none;
        }
    </style>
</head>
<body>

<jsp:include page="../common/sidebar.jsp"/>

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
    <h1>Quản lý bài viết</h1>
    <a class="add" href="PostServlet?action=new">Thêm mới bài viết</a>

    <table border="1">
        <thead>
        <tr>
            <th>Tiêu đề</th>
            <th>Nội dung</th>
            <th>Địa điểm</th>
            <th>Danh mục</th>
            <th>Hoạt động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="post" items="${posts}">
            <tr>
                <td>${post.title}</td>
                <td class="column-content">${post.content}</td>
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