<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>MeTrip - About Us Page</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon" />

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet"
        />

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet" />
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- CSS Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
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
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-2 py-lg-0">
                <a href="./index.jsp" class="navbar-brand px-5">
                    <h1 class="text-primary m-0"><i class="fa fa-map-marker-alt me-3"></i>MeTrip</h1>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="index.jsp" class="nav-item nav-link">Trang chủ</a>
                        <a href="destination.jsp" class="nav-item nav-link">Địa điểm</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Danh mục</a>
                            <div class="dropdown-menu m-0">
                                <a href="unesco.jsp" class="dropdown-item">Kỳ quan</a>
                                <a href="beach.jsp" class="dropdown-item">Bãi biển</a>
                                <a href="forest_mount.jsp" class="dropdown-item">Núi rừng</a>
                                <a href="waterfall.jsp" class="dropdown-item">Thác nước</a>
                                <a href="cuisine.jsp" class="dropdown-item">Ẩm thực</a>
                            </div>
                        </div>
                        <a href="PostServlet?action=list&view=blog" class="nav-item nav-link">Bài viết</a>
                        <a href="about.jsp" class="nav-item nav-link active">Chúng tôi</a>
                        <a href="contact.jsp" class="nav-item nav-link">Liên hệ</a>
                    </div>
                    <a href="login.jsp" class="ms-auto m-2 btn btn-primary rounded-pill py-2 px-4">Đăng nhập</a>
                    <a href="register.jsp" class="btn btn-secondary rounded-pill py-2 px-4">Đăng ký</a>
                </div>
            </nav>

            <div class="container-fluid bg-primary py-5 mb-5 hero-header">
                <div class="container py-5">
                    <div class="row justify-content-center py-5">
                        <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                            <h1 class="display-3 text-white animated slideInDown">Về chúng tôi</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->

        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px">
                        <div class="position-relative h-100">
                            <img
                                class="img-fluid position-absolute w-100 h-100"
                                src="https://20yearsold.vn/wp-content/uploads/2022/07/cach-tao-dang-chup-anh-ao-dai-trang.jpg"
                                alt=""
                                style="object-fit: cover"
                            />
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                        <h6 class="section-title bg-white text-start text-primary pe-3">Giới thiệu</h6>
                        <h1 class="mb-4">Chào mừng đến với <span class="text-primary">MeTrip</span></h1>
                        <p class="mb-4">
                            Bạn đang bước vào hành trình khám phá những điểm đến tuyệt vời nhất của
                            <b
                                style="
                                    font-size: 1.6rem;
                                    color: red;
                                    text-shadow: 2px 2px 0 yellow, -2px -2px 0 yellow, 2px -2px 0 yellow,
                                        -2px 2px 0 yellow;
                                "
                                >Việt Nam</b
                            >, từ những bãi biển trải dài cát trắng, núi rừng hùng vĩ đến những thành phố nhộn nhịp hay
                            làng quê yên bình. <b style="color: var(--primary)">MeTrip</b> không chỉ là nơi chia sẻ
                            những kinh nghiệm du lịch, mà còn là nơi bạn có thể tìm thấy những câu chuyện thú vị, những
                            gợi ý chân thực và hình ảnh tuyệt đẹp về các địa điểm du lịch trên khắp đất nước hình chữ S.
                        </p>
                        <p class="mb-4">
                            <b>Điều gì làm nên sự đặc biệt của Du Lịch Việt Nam?</b> <br />Với mỗi bài viết, chúng tôi
                            mong muốn mang đến cho bạn cái nhìn sâu sắc về các địa danh nổi tiếng, những món ăn đặc sản
                            địa phương, và các hoạt động thú vị mà bạn có thể trải nghiệm khi đến Việt Nam. Dù bạn là
                            một người yêu thích khám phá thiên nhiên, mê đắm văn hóa lịch sử, hay đơn giản là tìm kiếm
                            những phút giây thư giãn, blog của chúng tôi sẽ giúp bạn tìm thấy những điều tuyệt vời nhất
                            của Việt Nam.
                        </p>
                        <p class="mb-4">
                            Hãy cùng chúng tôi bắt đầu hành trình khám phá! Mỗi câu chuyện, mỗi hình ảnh và mỗi trải
                            nghiệm được chia sẻ trên blog này đều được chọn lọc và ghi lại một cách tỉ mỉ, với mong muốn
                            truyền cảm hứng cho bạn trên con đường khám phá và yêu mến Việt Nam hơn. Cảm ơn bạn đã ghé
                            thăm và cùng chúng tôi trải nghiệm những điều tuyệt vời nhất từ đất nước này! Chúc bạn có
                            những chuyến đi đáng nhớ và nhiều niềm vui!
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Team Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title bg-white text-center text-primary px-3">Quản trị viên</h6>
                    <h1 class="mb-5">Nhóm của chúng tôi</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="" alt="" />
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Full Name</h5>
                                <small>Designation</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="" alt="" />
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Full Name</h5>
                                <small>Designation</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="" alt="" />
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Full Name</h5>
                                <small>Designation</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="" alt="" />
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Full Name</h5>
                                <small>Designation</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->

        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
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
                                <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt="" />
                            </div>
                            <div class="col-4">
                                <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt="" />
                            </div>
                            <div class="col-4">
                                <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt="" />
                            </div>
                            <div class="col-4">
                                <img class="img-fluid bg-light p-1" src="img/package-2.jpg" alt="" />
                            </div>
                            <div class="col-4">
                                <img class="img-fluid bg-light p-1" src="img/package-3.jpg" alt="" />
                            </div>
                            <div class="col-4">
                                <img class="img-fluid bg-light p-1" src="img/package-1.jpg" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="text-white mb-3">Tin mới</h4>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
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
    </body>
</html>
