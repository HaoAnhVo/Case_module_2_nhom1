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
<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh sửa thông tin người dùng</title>
    <link href="css/user_manage_style.css" rel="stylesheet"/>
</head>
<body class="add-user-body">
<h2>Chỉnh Sửa Thông Tin Người Dùng</h2>
<form action="UserServlet?action=update" method="post">
    <input type="hidden" name="userId" value="${user.userId}">

    <label for="username">Tài khoản</label>
    <input type="text" id="username" name="username" value="${user.username}" required><br>

    <label for="password">Mật khẩu</label>
    <input type="password" id="password" name="password" value="${user.password}" required><br>

    <label for="name">Họ tên</label>
    <input type="text" id="name" name="name" value="${user.name}" required><br>

    <label for="email">Email</label>
    <input type="email" id="email" name="email" value="${user.email}" required><br>

    <label for="role">Vai trò</label>
    <select id="role" name="role" required>
        <option value="">-- --</option>
        <option value="admin" ${user.role == 'admin' ? 'selected' : ''}>Admin</option>
        <option value="moderator" ${user.role == 'moderator' ? 'selected' : ''}>Moderator</option>
        <option value="viewer" ${user.role == 'viewer' ? 'selected' : ''}>Viewer</option>
    </select><br>

    <label for="birthday">Ngày sinh</label>
    <input type="date" id="birthday" name="birthday" value="${user.birthday}" required><br>

    <input type="submit" value="Cập nhật">
</form>
<a href="UserServlet?action=list" class="back-link">
    <span class="arrow">←</span>Quay về trang trước
</a>
</body>
</html>