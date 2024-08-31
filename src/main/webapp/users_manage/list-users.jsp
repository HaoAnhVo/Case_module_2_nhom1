<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.model.User" %>
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
<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Người Dùng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link href="./css/user_manage_style.css" rel="stylesheet"/>
</head>
<body>
<h2>Danh sách người dùng</h2>
<table border="1" cellpadding="5" cellspacing="5">
    <tr>
        <th>ID</th>
        <th>Tài khoản</th>
        <th>Họ tên</th>
        <th>Email</th>
        <th>Vai trò</th>
        <th>Ngày sinh</th>
        <th>Hoạt động</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
        <tr>
            <td>${user.userId}</td>
            <td>${user.username}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.role}</td>
            <td>${user.birthday}</td>
            <td>
                <div class="actions">
                    <a href="UserServlet?action=edit&userId=${user.userId}" data-tooltip="Sửa">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </a>
                    <a href="UserServlet?action=delete&userId=${user.userId}" onclick="return confirm('Bạn chắc chắn muốn xóa người này?')"
                       data-tooltip="Xóa">
                        <i class="fa-solid fa-trash"></i>
                    </a>
                </div>
            </td>
        </tr>
    </c:forEach>
</table>
<a class="add-user" href="UserServlet?action=new">Thêm mới người dùng</a>

<script src="js/sub-script.js"></script>
</body>
</html>