<%@ page import="org.example.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Blogger Profile</title>
    <!-- Bootstrap CSS -->
    <link href="img/favicon.ico" rel="icon"/>

    <!-- Fonts -->
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
    <style>
        body {
            font-family: Arial, sans-serif;
            color: #333;
        }

        /* Header Section */
        .header {
            background: linear-gradient(rgba(20, 20, 31, 0.7), rgba(20, 20, 31, 0.7)), url("./img/bg-hero.jpg") no-repeat center center;
            background-size: cover;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
        }

        .header h1 {
            font-size: 4rem;
            font-weight: bold;
            color: whitesmoke;
        }

        .header p {
            font-size: 1.5rem;
            margin-top: 20px;
        }

        .header .btn {
            margin-top: 30px;
            padding: 10px 30px;
            font-size: 1.2rem;
        }

        /* About Section */
        .about-section {
            padding: 80px 0;
            background-color: #f8f9fa;
        }

        .about-content {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .about-content img {
            max-width: 100%;
            border-radius: 50%;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .about-text {
            margin-left: 50px;
        }

        .about-text h2 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .about-text p {
            font-size: 1.2rem;
            line-height: 1.6;
        }

        .about-text .btn {
            margin-top: 30px;
            padding: 10px 30px;
            font-size: 1.2rem;
        }

        /* Blog Posts Section */
        .blog-section {
            padding: 80px 0;
            background-color: white;
        }

        .blog-post {
            margin-bottom: 40px;
        }

        .blog-post img {
            width: 100%;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        .blog-post h3 {
            font-size: 2rem;
            margin-bottom: 10px;
        }

        .blog-post p {
            font-size: 1.2rem;
            color: #555;
        }

        img {
            transition: 0.5s;
        }

        img:hover {
            transform: scale(1.1);
        }

        .form-section {
            background-color: #f8f9fa;
            padding: 60px 0;
        }

        .form-label {
            font-weight: 600;
            font-size: 1.2rem;
        }

        .form-control {
            border-radius: 5px;
            padding: 15px;
            font-size: 1.1rem;
        }

        .btn-lg {
            padding: 12px 30px;
            font-size: 1.2rem;
        }

        .popup {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: #86b817; /* Success color */
            color: white;
            padding: 15px 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        /* Message text */
        .popup-message {
            font-size: 14px;
            margin-right: 10px;
        }

        /* Close button */
        #close-popup {
            background: none;
            border: none;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        /* Animation for smooth fade-in */
        .popup {
            animation: fadeIn 0.5s ease-in-out;
        }

        @media (max-width: 768px) {
            .form-section {
                padding: 40px 20px;
            }

            .form-control {
                padding: 10px;
            }

            .about-content {
                flex-direction: column;
                text-align: center;
            }

            .about-text {
                margin-left: 0;
                margin-top: 30px;
            }
        }

    </style>
</head>

<body>
<div
        id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
>
    <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>
<!-- Spinner End -->

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

<!-- Navbar & Hero Start -->
<div class="container-fluid position-relative p-0">
    <% request.setAttribute("currentPage", "index.jsp"); %>
    <jsp:include page="./common/navbar.jsp"/>


    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">
                        Trang cá nhân
                    </h1>
                    <h2 style="color: #0dcaf0">${user.username}</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Navbar & Hero End -->

<!-- Profile Section -->
<div class="about-section wow fadeInUp">
    <div class="container">
        <h2 class="text-center">Thông tin cá nhân</h2>
        <div class="d-flex align-items-center">
            <div class="about-content col-md-6">
                <img src="https://ca.slack-edge.com/T062S4QFUJZ-U06752VNAUW-362506af7ca7-512" alt="Profile Picture"/>
            </div>
            <div class="about-text col-md-6">
                <!-- Form Section -->
                <div class="form-section py-5">
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <form action="/profile?action=edit" method="post">
                                <!-- Name -->
                                <div class="form-group mb-3">
                                    <i class="fa-regular fa-user fa-beat m-2" style="color: #63E6BE;"></i>
                                    <label for="name" class="form-label">Họ và tên</label>
                                    <input type="text" class="form-control" id="name" name="name"
                                           value="${user.name}" required>
                                </div>

                                <!-- Email -->
                                <div class="form-group mb-3">
                                    <i class="fa-regular fa-envelope fa-beat m-2" style="color: #63E6BE;"></i>
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="email" name="email"
                                           value="${user.email}"
                                           required>
                                </div>

                                <!-- Birth Date -->
                                <div class="form-group mb-3">
                                    <i class="fa-regular fa-calendar-days fa-beat m-2" style="color: #63E6BE;"></i>
                                    <label for="birthDay" class="form-label">Ngày sinh</label>
                                    <input type="date" class="form-control" id="birthDay" name="birthDay"
                                           value="${userBirthDay}" required>
                                </div>

                                <!-- Submit Button -->
                                <div class="form-group text-center">
                                    <button type="submit" class="btn btn-primary btn-lg">Cập nhật</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
<script src="js/sub-script.js"></script>
</body>

</html>