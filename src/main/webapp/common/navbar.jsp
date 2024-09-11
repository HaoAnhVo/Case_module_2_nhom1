<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-2 py-lg-0">
    <a href="PostServlet?action=list&view=index" class="navbar-brand px-5">
        <h1 class="text-primary m-0"><i class="fa fa-map-marker-alt me-3"></i>MeTrip</h1>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="fa fa-bars"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto py-0">
            <a href="PostServlet?action=list&view=index" class="nav-item nav-link ${currentPage == 'index.jsp' ? 'active' : ''}">Trang chủ</a>
            <a href="LocationServlet?action=view&view=location" class="nav-item nav-link ${currentPage == 'destination.jsp' ? 'active' : ''}">Địa điểm</a>
            <div class="nav-item dropdown">
                <a href="CategoryServlet" class="nav-link dropdown-toggle ${currentPage == 'CategoryServlet' ? 'active' : ''}" data-bs-toggle="dropdown">Danh mục</a>
                <div class="dropdown-menu m-0">
                    <c:forEach var="category" items="${applicationScope.categories}">
                        <a href="PostServlet?action=getPostsByCategory&categoryId=${category.categoryId}" class="dropdown-item">${category.categoryName}</a>
                    </c:forEach>
                </div>
            </div>
            <a href="PostServlet?action=list&view=blog" class="nav-item nav-link ${currentPage == 'blog.jsp' ? 'active' : ''}">Bài viết</a>
            <a href="about.jsp" class="nav-item nav-link ${currentPage == 'about.jsp' ? 'active' : ''}">Chúng tôi</a>
            <a href="contact.jsp" class="nav-item nav-link ${currentPage == 'contact.jsp' ? 'active' : ''}">Liên hệ</a>
        </div>

        <!-- Check if user is logged in -->
        <c:choose>
            <c:when test="${not empty sessionScope.user}">
                <div class="nav-item dropdown ms-auto">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                        <i class="fa fa-user me-2"></i>${sessionScope.user.username}
                    </a>
                    <div class="dropdown-menu m-0">
                        <a href="profile?action=view" class="dropdown-item">Hồ sơ</a>
                        <a href="profile?action=viewChangePassword" class="dropdown-item">Đổi mật khẩu</a>
                        <a href="LogoutServlet" class="dropdown-item">Đăng xuất</a>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <a href="login.jsp" class="ms-auto m-2 btn btn-primary rounded-pill py-2 px-4">Đăng nhập</a>
                <a href="register.jsp" class="btn btn-secondary rounded-pill py-2 px-4">Đăng ký</a>
            </c:otherwise>
        </c:choose>
    </div>
</nav>