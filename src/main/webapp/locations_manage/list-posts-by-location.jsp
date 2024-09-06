<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/9/2024
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>MeTrip - Blog Page</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="keywords"/>
    <meta content="" name="description"/>

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon"/>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet"
    />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet"/>
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"/>
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet"/>

    <!-- CSS Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
</head>

<body>
<!-- Topbar Start -->
<div class="container-fluid bg-dark px-5 d-none d-lg-block">
    <div class="row gx-0">
        <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
            <div class="d-inline-flex align-items-center" style="height: 45px">
                <small class="me-3 text-light"><i class="fa fa-map-marker-alt me-2"></i>CodeGym</small>
                <small class="me-3 text-light"><i class="fa fa-phone-alt me-2"></i>+012 345 6789</small>
                <small class="text-light"><i class="fa fa-envelope-open me-2"></i>C0524I1@codegym.com</small>
            </div>
        </div>
        <div class="col-lg-4 text-center text-lg-end">
            <div class="d-inline-flex align-items-center" style="height: 45px">
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""
                ><i class="fab fa-twitter fw-normal"></i
                ></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""
                ><i class="fab fa-facebook-f fw-normal"></i
                ></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""
                ><i class="fab fa-linkedin-in fw-normal"></i
                ></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""
                ><i class="fab fa-instagram fw-normal"></i
                ></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle" href=""
                ><i class="fab fa-youtube fw-normal"></i
                ></a>
            </div>
        </div>
    </div>
</div>
<!-- Topbar End -->

<!-- Navbar & Hero Start -->
<div class="container-fluid position-relative p-0">
    <% request.setAttribute("currentPage", "destination.jsp"); %>

    <jsp:include page="../common/navbar.jsp" />

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-3 text-white animated slideInDown">${locationByPost.locationName}</h1>
                    <p class="fs-4 mb-4 animated slideInDown" style="color: var(--primary); font-size: 1.6rem">
                        Kiến thức - Kinh nghiệm - Trải nghiệm
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Navbar & Hero End -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Bài viết</h6>
        </div>

        <div class="row g-4 justify-content-center">
            <c:forEach var="post" items="${posts}">
                <div class="col-lg-4 col-md-6 wow fadeInUp mt-5" data-wow-delay="0.1s">
                    <div class="package-item">
                        <a href="PostServlet?action=view&view=detail-blog&postId=${post.postId}">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="${post.imageUrl}" alt="${post.title}"/>
                            </div>
                            <div class="d-flex border-bottom p-2">
                                <h5 class="flex-fill py-2 mt-1">
                                        ${post.title}
                                </h5>
                            </div>
                            <div class="p-3">
                                <p class="desc">
                                        ${post.content}
                                </p>
                                <div class="d-flex justify-content-center mb-2">
                                    <button class="btn btn-sm btn-primary px-3" style="border-radius: 30px">
                                        Đọc thêm
                                    </button>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/tempusdominus/js/moment.min.js"></script>
<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

<script src="js/main.js"></script>
</body>
</html>
