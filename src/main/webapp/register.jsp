<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>MeTrip - Register Page</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="keywords"/>
    <meta content="" name="description"/>

    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
    <link rel="manifest" href="img/favicon/site.webmanifest">
    <link rel="mask-icon" href="img/favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">

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
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"
            rel="stylesheet"
    />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

    <!-- CSS Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
</head>

<body>
<!-- Spinner Start -->
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
<!-- Topbar End -->

<!-- Navbar & Hero Start -->
<div class="container-fluid position-relative p-0">

    <jsp:include page="./common/navbar.jsp"/>


</div>
<!-- Navbar & Hero End -->

<!-- register Start -->
<div class="container-xxl py-5 wow fadeInUp register" data-wow-delay="0.1s">
    <div class="container">
        <div class="row g-5">
            <div class="col-md-12">
                <div class="tabs">
                    <div class="tab-content" id="myTabContent">
                        <!-- Register Tab -->
                        <div
                                class="tab-pane fade show active"
                                id="register"
                                role="tabpanel"
                                aria-labelledby="register-tab"
                        >
                            <h1 class="text-white mb-4">Đăng Ký Tài Khoản</h1>
                            <p class="p-2" style="color: var(--primary)">
                                <i class="fa fa-plane me-3"></i>Những hành trình mới đang chờ đợi bạn
                            </p>
                            <form action="UserServlet?action=insert" method="post" class="text-white">
                                <input type="hidden" name="registrationType" value="register">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-floating form-input">
                                            <input
                                                    type="text"
                                                    name="username"
                                                    class="form-control form-register bg-transparent"
                                                    id="register-username"
                                                    placeholder="Tên tài khoản"
                                                    autofocus
                                                    required
                                                    value="${param.username}"
                                            />

                                            <label for="register-username"
                                            ><i class="fa-solid fa-users me-3"></i>Tên tài khoản
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input
                                                    type="text"
                                                    name="name"
                                                    class="form-control form-register bg-transparent"
                                                    id="register-name"
                                                    required
                                                    placeholder="Họ và tên"
                                                    value="${param.name}"

                                            />
                                            <label for="register-name"
                                            ><i class="fa-solid fa-signature me-3"></i>Họ và tên
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input
                                                    type="password"
                                                    name="password"
                                                    class="form-control form-register bg-transparent"
                                                    id="register-password"
                                                    placeholder="Mật khẩu"
                                                    required
                                                    pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W_]).{8,}"
                                                    title="Mật khẩu phải dài ít nhất 8 ký tự và chứa ít nhất một chữ cái thường, một chữ cái viết hoa, một chữ số và một ký tự đặc biệt."
                                                    value="${param.password}"
                                            />
                                            <label for="register-password"
                                            ><i class="fa-solid fa-lock me-3"></i>Mật khẩu
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input
                                                    type="password"
                                                    name="confirm-password"
                                                    class="form-control form-register bg-transparent"
                                                    id="register-confirm-password"
                                                    placeholder="Xác nhận mật khẩu"
                                                    required
                                            />

                                            <label for="register-confirm-password"
                                            ><i class="fa-solid fa-unlock me-3"></i>Xác nhận mật khẩu
                                            </label>
                                            <span id="message-confirm" style="color:red;"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input
                                                    type="email"
                                                    name="email"
                                                    class="form-control form-register bg-transparent"
                                                    id="register-email"
                                                    placeholder="Email"
                                                    pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                                                    title="Vui lòng nhập địa chỉ email hợp lệ"
                                                    required
                                                    value="${param.email}"
                                            />
                                            <label for="register-email"
                                            ><i class="fa-solid fa-envelope me-3"></i>Email</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating date" id="date3" data-target-input="nearest">
                                            <input
                                                    type="text"
                                                    name="birthday"
                                                    id="birthdate"
                                                    class="form-control form-register bg-transparent"
                                                    placeholder="dd/mm/yyyy"
                                                    onfocus="(this.type='date')"
                                                    onblur="(this.type='text')"
                                                    required
                                                    value="${param.birthday}"
                                            />

                                            <label for="birthdate"
                                            ><i class="fa-solid fa-calendar-days me-3"></i>Ngày sinh
                                            </label>
                                        </div>
                                    </div>
                                    <!-- Hiển thị thông báo lỗi nếu có -->
                                    <c:if test="${not empty errorMessage}">
                                        <div class="text-warning">${errorMessage}</div>
                                    </c:if>
                                    <div class="col-12">
                                        <button
                                                class="btn btn-outline-light w-25 py-3 mt-4 d-block m-auto register-btn"
                                                type="submit"
                                        >
                                            Đăng ký
                                        </button>
                                        <p class="text-white text-center mt-4">
                                            Bạn đã có tài khoản?
                                            <a href="login.jsp">Đăng nhập</a>
                                        </p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- register End -->

<!-- Footer Start -->
<div class="container-fluid bg-dark text-light footer pt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3">Hệ thống</h4>
                <a class="btn btn-link" href="">Về chúng tôi</a>
                <a class="btn btn-link" href="">Liên hệ</a>
                <a class="btn btn-link" href="">Chính sách bảo mật</a>
                <a class="btn btn-link" href="">Điều khoản & điều kiện</a>
                <a class="btn btn-link" href="">FAQs & Trợ giúp</a>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3">Liên hệ</h4>
                <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>CodeGym</p>
                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                <p class="mb-2"><i class="fa fa-envelope me-3"></i>C0524I1@codegym.com</p>
                <div class="d-flex pt-2">
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3">Thư viện</h4>
                <div class="row g-2 pt-2">
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt=""/>
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt=""/>
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt=""/>
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt=""/>
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt=""/>
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt=""/>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3">Tin mới</h4>
                <p>Đăng ký để nhận ngay thông báo bài viết mới</p>
                <div class="position-relative mx-auto" style="max-width: 400px">
                    <input
                            class="form-control border-primary w-100 py-3 ps-4 pe-5"
                            type="text"
                            placeholder="Your email"
                    />
                    <button
                            type="button"
                            class="btn btn-secondary py-2 position-absolute top-0 end-0 mt-2 me-2"
                    >
                        Đăng ký
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="copyright">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a class="border-bottom" href="#!">CodeGym</a>, All Right Reserved.

                    <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                    Designed By <a class="border-bottom" href="#!">C0524I1</a>
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <div class="footer-menu">
                        <a href="">Trang chủ</a>
                        <a href="">Cookies</a>
                        <a href="">Trợ giúp</a>
                        <a href="">FAQs</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

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
