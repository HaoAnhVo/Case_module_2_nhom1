<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Hà Nội blogs</title>
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

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet" />
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />

        <!-- Template Stylesheet -->
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
                        <a href="blog.jsp" class="nav-item nav-link active">Bài viết</a>
                        <a href="about.jsp" class="nav-item nav-link">Chúng tôi</a>
                        <a href="contact.jsp" class="nav-item nav-link">Liên hệ</a>
                    </div>
                    <a href="login.jsp" class="ms-auto m-2 btn btn-primary rounded-pill py-2 px-4">Đăng nhập</a>
                    <a href="register.jsp" class="btn btn-secondary rounded-pill py-2 px-4">Đăng ký</a>
                </div>
            </nav>

            <div class="container-fluid bg-primary py-5 mb-5 hero-header">
                <div class="container py-5">
                    <div class="row justify-content-center py-5">
                        <div class="col-lg-12 p-5"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->

        <!-- Main Content Start -->
        <div class="container my-5">
            <div class="row">
                <!-- Post Content Start -->
                <div class="col-lg-8">
                    <!-- Post Title -->
                    <h1 class="post-title">Hà Nội title 1</h1>

                    <!-- Post Meta Information -->
                    <div class="post-meta d-flex align-items-center mb-4">
                        <span><i class="fas fa-user"></i> <a href="#">[Tên tác giả]</a></span>
                        <span><i class="fas fa-calendar-alt"></i> [Ngày tạo]</span>
                        <span><i class="fas fa-folder-open"></i> <a href="#">[Tên chuyên mục]</a></span>
                        <span><i class="fas fa-map-marker-alt"></i> <a href="#">[Tên địa điểm]</a></span>
                    </div>

                    <!-- Post Image -->
                    <img
                        src="https://suckhoedoisong.qltns.mediacdn.vn/Images/thanhloan/2020/11/28/Nam-2030-du-lich-ha-noi-phan-dau-tro-thanh-nganh-kinh-te-mui-nhon-cua-thu-do-19.jpg"
                        alt="[Tiêu đề bài viết]"
                        class="post-image"
                    />

                    <!-- Post Content -->

                    <div class="post-content">
                        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius cumque impedit nesciunt corrupti
                        veniam odit. Quis ad suscipit accusantium aut iste et unde corrupti beatae, corporis aperiam ea
                        ex sint officia, debitis quam inventore illo cumque ipsa. Natus dolorem porro eligendi eum,
                        sunt, tenetur hic ducimus ut ad vitae quo maxime? Animi quibusdam accusantium officiis, fuga
                        omnis cumque est aliquid rerum repellat itaque, eveniet iusto velit quis earum vitae, facere
                        modi! Tempore, commodi repellendus itaque voluptates ea, possimus velit saepe dolorem, eaque hic
                        temporibus eius blanditiis sunt magni dignissimos earum veniam? Eos aliquam minus velit neque
                        consequuntur veniam possimus fugit!
                    </div>

                    <!-- Author Information -->
                    <div class="author-info d-flex align-items-center bg-white p-4 mt-5 shadow-sm rounded">
                        <img src="[URL ảnh tác giả]" alt="[Tên tác giả]" />
                        <div>
                            <h5 class="mb-1">[Tên tác giả]</h5>
                            <p class="mb-0">[Mô tả ngắn về tác giả hoặc tiểu sử]</p>
                        </div>
                    </div>

                    <!-- Comments Section -->
                    <div class="comments-section mt-5">
                        <h3 class="mb-4">Bình luận ([Số lượng bình luận])</h3>

                        <!-- Single Comment Start -->
                        <div class="comment d-flex">
                            <img src="[URL ảnh người dùng]" alt="[Tên người dùng]" />
                            <div>
                                <h6 class="mb-1">
                                    [Tên người dùng] <small class="text-muted">[Ngày bình luận]</small>
                                </h6>
                                <p>[Nội dung bình luận]</p>
                            </div>
                        </div>
                        <!-- Single Comment End -->

                        <!-- Thêm các bình luận khác tương tự -->

                        <!-- Comment Form -->
                        <div class="comment-form mt-4">
                            <h4>Để lại bình luận của bạn</h4>
                            <form action="#" method="POST" class="mt-3">
                                <div class="mb-3">
                                    <textarea
                                        class="form-control"
                                        name="comment"
                                        rows="5"
                                        placeholder="Nhập bình luận của bạn..."
                                    ></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Gửi Bình Luận</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Post Content End -->

                <!-- Sidebar Start -->
                <div class="col-lg-4">
                    <!-- Search Widget -->
                    <div class="mb-5">
                        <form action="#" method="GET">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Tìm kiếm..." />
                                <button class="btn btn-primary" type="submit"><i class="fas fa-search"></i></button>
                            </div>
                        </form>
                    </div>

                    <!-- Categories Widget -->
                    <div class="mb-5">
                        <h4 class="mb-4">Chuyên Mục</h4>
                        <ul class="list-group">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                [Tên chuyên mục 1]
                                <span class="badge bg-primary rounded-pill">[Số bài viết]</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                [Tên chuyên mục 2]
                                <span class="badge bg-primary rounded-pill">[Số bài viết]</span>
                            </li>
                            <!-- Thêm các chuyên mục khác -->
                        </ul>
                    </div>

                    <!-- Recent Posts Widget -->
                    <div class="mb-5">
                        <h4 class="mb-4">Bài Viết Mới Nhất</h4>
                        <div class="list-group">
                            <a href="#" class="list-group-item list-group-item-action d-flex">
                                <img
                                    src="[URL ảnh bài viết]"
                                    alt="[Tiêu đề bài viết]"
                                    style="width: 60px; height: 60px; object-fit: cover; margin-right: 15px"
                                />
                                <div>
                                    <h6 class="mb-1">[Tiêu đề bài viết]</h6>
                                    <small class="text-muted">[Ngày đăng]</small>
                                </div>
                            </a>
                            <!-- Thêm các bài viết khác -->
                        </div>
                    </div>

                    <!-- Tags Widget -->
                    <div class="mb-5">
                        <h4 class="mb-4">Thẻ</h4>
                        <div>
                            <a href="#" class="btn btn-sm btn-outline-primary mb-2">[Tên thẻ 1]</a>
                            <a href="#" class="btn btn-sm btn-outline-primary mb-2">[Tên thẻ 2]</a>
                            <!-- Thêm các thẻ khác -->
                        </div>
                    </div>
                </div>
                <!-- Sidebar End -->
            </div>

            <!-- Related Posts Start -->
            <div class="related-posts mt-5">
                <h3 class="mb-4">Bài Viết Liên Quan</h3>
                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card">
                            <img src="[URL ảnh bài viết liên quan]" class="card-img-top" alt="[Tiêu đề bài viết]" />
                            <div class="card-body">
                                <h5 class="card-title"><a href="#">[Tiêu đề bài viết liên quan]</a></h5>
                                <p class="card-text">[Tóm tắt ngắn của bài viết liên quan]</p>
                            </div>
                        </div>
                    </div>
                    <!-- Thêm các bài viết liên quan khác -->
                </div>
            </div>
            <!-- Related Posts End -->
        </div>
        <!-- Main Content End -->

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
        <script src="./lib/wow/wow.min.js"></script>
        <script src="./lib/easing/easing.min.js"></script>
        <script src="./lib/waypoints/waypoints.min.js"></script>
        <script src="./lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="./lib/tempusdominus/js/moment.min.js"></script>
        <script src="./lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="./lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="./js/main.js"></script>
    </body>
</html>
