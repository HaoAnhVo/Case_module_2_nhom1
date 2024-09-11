<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/9/2024
  Time: 3:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="org.example.model.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="sidebar.css" rel="stylesheet">
</head>
<body>
<%
    String currentUrl = ((HttpServletRequest)request).getRequestURI();
    User user = (User) session.getAttribute("user");
%>
<div class="sidebar">
    <h2>Quản lý</h2>
    <c:choose>
        <c:when test="${user.getRole() == 'admin'}">
            <a href="UserServlet?action=list" class="<%= currentUrl.contains("/users_manage/list-users.jsp") ? "active" : "" %>">Quản lý người dùng</a>
            <a href="PostServlet?action=list" class="<%= currentUrl.contains("/posts_manage/list-posts.jsp") ? "active" : "" %>">Quản lý bài viết</a>
            <a href="LocationServlet?action=list" class="<%= currentUrl.contains("/locations_manage/list-locations.jsp") ? "active" : "" %>">Quản lý địa điểm</a>
            <a href="CategoryServlet?action=list" class="<%= currentUrl.contains("/categories_manage/list-categories.jsp") ? "active" : "" %>">Quản lý danh mục</a>
            <a href="TagServlet?action=list" class="<%= currentUrl.contains("/tags_manage/list-tags.jsp") ? "active" : "" %>">Quản lý tag</a>
        </c:when>
        <c:when test="${user.getRole() == 'moderator'}">
            <a href="PostServlet?action=list" class="<%= currentUrl.contains("/posts_manage/list-posts.jsp") ? "active" : "" %>">Quản lý bài viết</a>
            <a href="LocationServlet?action=list" class="<%= currentUrl.contains("/locations_manage/list-locations.jsp") ? "active" : "" %>">Quản lý địa điểm</a>
            <a href="CategoryServlet?action=list" class="<%= currentUrl.contains("/categories_manage/list-categories.jsp") ? "active" : "" %>">Quản lý danh mục</a>
            <a href="TagServlet?action=list" class="<%= currentUrl.contains("/tags_manage/list-tags.jsp") ? "active" : "" %>">Quản lý tag</a>
        </c:when>
    </c:choose>
</div>
</body>
</html>
