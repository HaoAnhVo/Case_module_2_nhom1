<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Chi tiết bài viết</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="keywords"/>
    <meta content="" name="description"/>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet"
    />

    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="./img/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./img/favicon/favicon-16x16.png">
    <link rel="manifest" href="./img/favicon/site.webmanifest">
    <link rel="mask-icon" href="./img/favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet"/>

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet"/>
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"/>
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet"/>

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Template Stylesheet -->
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
    <% request.setAttribute("currentPage", "blog.jsp"); %>
    <jsp:include page="./common/navbar.jsp"/>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Chi tiết bài viết</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Navbar & Hero End -->

<%-- Main Content Start --%>
<div class="container my-5">
    <div class="row">
        <!-- Post Content Start -->
        <div class="col-lg-8">
            <!-- Post Title -->
            <h1 class="post-title">${post.title}</h1>

            <!-- Post Meta Information -->
            <div class="post-meta d-flex align-items-center mb-4">
                <span><i class="fas fa-user"></i> <a href="#">${post.authorName}</a></span>
                <span><i class="fas fa-calendar-alt"></i> ${post.formattedCreatedAt}</span>
                <span><i class="fas fa-folder-open"></i> <a
                        href="PostServlet?action=getPostsByCategory&categoryId=${post.categoryId}">${post.categoryName}</a></span>
                <span><i class="fas fa-map-marker-alt"></i> <a
                        href="LocationServlet?action=getPostsByLocation&locationId=${post.locationId}">${post.locationName}</a></span>
            </div>

            <!-- Post Image -->
            <img
                    src="${post.imageUrl}"
                    alt="${post.title}"
                    class="post-image"
            />

            <!-- Post Content -->
            <div class="post-content">
                ${post.content}
            </div>
            <hr>

            <!-- Comments Section -->
            <div id="comment-section" class="comments-section mt-5">
                <!-- Single Comment Start -->
                <c:forEach var="comment" items="${comments}">
                    <div class="comment d-flex">
                        <div>
                            <h6 class="mb-1">
                                    ${comment.username} <small style="margin-left: 12px"
                                                               class="text-muted">${comment.formattedCreatedAt}</small>
                            </h6>
                            <p>${comment.content}</p>
                        </div>
                    </div>
                </c:forEach>
                <!-- Single Comment End -->

                <!-- Comment Form -->
                <div class="comment-form mt-4">
                    <h4>Để lại bình luận của bạn</h4>
                    <form action="PostServlet?action=addComment" method="POST" id="commentForm" class="mt-3">
                        <input type="hidden" name="postId" value="${post.postId}"/>
                        <div class="mb-3">
                            <textarea
                                    class="form-control"
                                    name="content"
                                    id="content"
                                    rows="5"
                                    placeholder="Nhập bình luận của bạn..."

                            ></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Gửi Bình Luận</button>
                    </form>
                </div>
            </div>
        </div>

        <%--Sidebar Start--%>
        <div class="col-lg-4">
            <!-- Recent Posts Widget -->
            <div class="mb-5">
                <h4 class="mb-4">Bài viết liên quan</h4>
                <div class="list-group">
                    <c:forEach var="postLocation" items="${postsLocationRelated}">
                        <a href="PostServlet?action=view&view=detail-blog?postId=${postLocation.postId}"
                           class="list-group-item list-group-item-action d-flex">
                            <img
                                    src="${postLocation.imageUrl}"
                                    alt="${postLocation.title}"
                                    style="width: 60px; height: 60px; object-fit: cover; margin-right: 15px"
                            />
                            <div>
                                <h6 class="mb-1">${postLocation.title}</h6>
                                <small class="text-muted">${postLocation.formattedCreatedAt}</small>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>

            <!-- Tags Widget -->
            <div class="mb-5">
                <h4 class="mb-4">Thẻ</h4>
                <div>
                    <c:forEach var="tag" items="${tags}">
                        <a href="TagServlet?action=getPostsByTag&tagId=${tag.tagId}"
                           class="btn btn-sm btn-outline-primary mb-2">${tag.tagName}</a>
                    </c:forEach>
                </div>
            </div>
        </div>
        <%--Sidebar End--%>
    </div>
</div>
<%--  Footer  --%>
<jsp:include page="./common/footer.jsp"/>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/tempusdominus/js/moment.min.js"></script>
<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        if (window.location.hash === "#comment-section") {
            const commentSection = document.querySelector("#comment-section");
            if (commentSection) {
                setTimeout(function () {
                    commentSection.scrollIntoView({ behavior: 'smooth' });
                }, 100);
            }
        }
    });
</script>
</body>
</html>