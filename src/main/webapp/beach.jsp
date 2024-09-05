<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>MeTrip - Bãi biển</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="keywords" />
        <meta content="" name="description" />

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon" />

        <!-- Google Web Fonts -->
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
            <jsp:include page="./common/navbar.jsp" />

            <div class="container-fluid bg-primary py-5 mb-5 hero-header">
                <div class="container py-5">
                    <div class="row justify-content-center py-5"></div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->

        <!-- Blog Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title bg-white text-center text-primary px-3">Bài viết</h6>
                </div>

                <div class="row g-4 justify-content-center">
                    <h2 class="mb-4 mt-4 text-center" style="font-size: 2.2rem">Bãi biển</h2>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="package-item">
                            <a href="detail-blog.jsp">
                                <div class="overflow-hidden">
                                    <img class="img-fluid" src="img/package-1.jpg" alt="" />
                                </div>
                                <div class="d-flex border-bottom p-2">
                                    <h5 class="flex-fill py-2 mt-1">Bãi biển title 1</h5>
                                </div>
                                <div class="p-3">
                                    <p class="desc">
                                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laborum officia
                                        eveniet est ut, quam nihil suscipit nemo nostrum corporis, dicta aut ipsam rerum
                                        architecto aspernatur tempore et! Officiis eius neque architecto culpa ducimus
                                        dignissimos aliquid impedit ex numquam facere modi quod, temporibus, corporis
                                        maxime quos praesentium est deserunt mollitia magnam.
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
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="package-item">
                            <a href="#!">
                                <div class="overflow-hidden">
                                    <img class="img-fluid" src="img/package-1.jpg" alt="" />
                                </div>
                                <div class="d-flex border-bottom p-2">
                                    <h5 class="flex-fill py-2 mt-1">Bãi biển title 2</h5>
                                </div>
                                <div class="p-3">
                                    <p class="desc">
                                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Excepturi pariatur
                                        itaque ut nostrum, beatae aperiam, ducimus suscipit consequatur vero temporibus
                                        eos qui voluptate quaerat iure consequuntur accusantium. Reprehenderit deserunt
                                        at corporis alias, numquam ipsum rerum! Autem quisquam architecto dolorem sunt
                                        assumenda recusandae pariatur illum esse, laboriosam beatae ut distinctio
                                        corrupti.
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
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="package-item">
                            <a href="#!">
                                <div class="overflow-hidden">
                                    <img class="img-fluid" src="img/package-1.jpg" alt="" />
                                </div>
                                <div class="d-flex border-bottom p-2">
                                    <h5 class="flex-fill py-2 mt-1">Bãi biển title 3</h5>
                                </div>
                                <div class="p-3">
                                    <p class="desc">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor, delectus harum.
                                        Delectus molestias, quidem dolorum, cupiditate sapiente ex eaque voluptatum
                                        veniam veritatis omnis alias repellat laboriosam velit nam recusandae suscipit
                                        provident, adipisci rerum expedita autem pariatur id enim ut. Nemo deserunt
                                        impedit cumque at libero quos perferendis consequuntur ut harum.
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
                </div>
            </div>
        </div>
        <!-- Blog End -->

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
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">
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
