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
    <title>Quản lý địa điểm</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link href="../common/sidebar.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../common/sidebar.jsp"/>
<div class="content">
    <a class="actions" href="LogoutServlet" style="display: flex; justify-content: end; text-decoration: none"
       data-tooltip="Đăng xuất"><i class="fa-solid fa-right-from-bracket"
                                   style="color: #86b817; font-size: 24px"></i></a>
    <h1>Quản lý địa điểm</h1>
    <a class="add" href="LocationServlet?action=create">Thêm mới địa điểm</a>

    <table border="1">
        <thead>
        <tr>
            <th>Địa điểm</th>
            <th>Link google maps</th>
            <th>Hoạt động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="location" items="${locations}">
            <tr>
                <td>${location.locationName}</td>
                <td>${location.mapLink}</td>
                <td>
                    <div class="actions">
                        <a href="LocationServlet?action=edit&locationId=${location.locationId}" data-tooltip="Sửa"><i
                                class="fa-solid fa-pen-to-square"></i></a>
                        <a href="LocationServlet?action=delete&locationId=${location.locationId}"
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