<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/9/2024
  Time: 3:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<html>
<head>
    <title>Title</title>
    <link href="sidebar.css" rel="stylesheet">
</head>
<body>
<%
    String currentUrl = ((HttpServletRequest)request).getRequestURI();
%>
<div class="sidebar">
    <h2>Quản lý</h2>
    <a href="UserServlet" class="<%= currentUrl.contains("/users_manage/list-users.jsp") ? "active" : "" %>">Quản lý người dùng</a>
    <a href="PostServlet" class="<%= currentUrl.contains("/posts_manage/list-posts.jsp") ? "active" : "" %>">Quản lý bài viết</a>
    <a href="LocationServlet" class="<%= currentUrl.contains("/location/list-locations.jsp") ? "active" : "" %>">Quản lý địa điểm</a>
</div>
</body>
</html>
