<%@ page import="org.example.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
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
    <title>Danh sách danh mục</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link href="../common/sidebar.css" rel="stylesheet">
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
    <h1>Danh sách danh mục</h1>
    <a class="add" href="LocationServlet?action=create">Thêm mới danh mục</a>

    <table border="1">
        <thead>
        <tr>
            <th>Danh mục</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="category" items="${categories}">
            <tr>
                <td>${category.categoryName}</td>
                <td>
                    <div class="actions">
                        <a href="CategoryServlet?action=edit&categoryId=${category.categoryId}" data-tooltip="Sửa"><i
                                class="fa-solid fa-pen-to-square"></i></a>
                        <a href="CategoryServlet?action=delete&categoryId=${category.categoryId}"
                           onclick="return confirm('Bạn chắc chắn muốn xóa danh mục này?')"
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