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
    <title>Quản lý tag</title>
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
    <h1>Quản lý tag</h1>
    <a class="add" href="TagServlet?action=create">Thêm mới tag</a>

    <table border="1" cellpadding="5" cellspacing="5">
        <thead>
        <tr>
            <th>Tag</th>
            <th>Hoạt động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tag" items="${tags}">
            <tr>
                <td>${tag.tagName}</td>
                <td>
                    <div class="actions">
                        <a href="TagServlet?action=edit&tagId=${tag.tagId}" data-tooltip="Sửa"><i
                                class="fa-solid fa-pen-to-square"></i></a>
                        <a href="TagServlet?action=delete&tagId=${tag.tagId}"
                           onclick="return confirm('Bạn chắc chắn muốn xóa địa điểm này?')"
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
