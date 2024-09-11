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

        <style>
            .team-item img {
                height: 210px;
            }
        </style>
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
            <% request.setAttribute("currentPage", "about.jsp"); %>

            <jsp:include page="./common/navbar.jsp" />

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
                    <div class="col-lg-2 offset-lg-1 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-6/241453626_1497275003981775_9102379658119929148_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=fDEOyFzPpkEQ7kNvgGexSLp&_nc_ht=scontent.fdad3-1.fna&_nc_gid=AK0ZrnbZUGknX3SDfU1WMya&oh=00_AYA8y6U1XjE7K_vcsc4XzOZAda9roSbr821jTVeDXBEnJw&oe=66E59366" alt="Linh Phan" />
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Linh Phan</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/456020751_2267672190236401_6311886940491195893_n.jpg?stp=cp6_dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeESNLnA9l8SzW3wOWP2tkhNzVMl8oQ9jhrNUyXyhD2OGsRL47lj6RUkct9Y9brx_R5BKGQIqAoi9HtaGnIdaItt&_nc_ohc=0CEKnxXPT1EQ7kNvgHl699X&_nc_ht=scontent.fsgn2-4.fna&oh=00_AYACbmoJyyVSeli9PkcBTaS-vMnkGbAUOQD62TEsHbBV6A&oe=66E5C2DA" alt="Quang Nguyễn" />
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Quang Nguyễn</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="https://bedental.vn/wp-content/uploads/2022/11/1e8063154fdf3dcbb07edf0ad2df326a.jpg" alt="Hào Nhỏ" />
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Hào Nhỏ</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="https://ca.slack-edge.com/T062S4QFUJZ-U071BK6FF2A-90e92d59184f-512" alt="Huy Trần" />
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Huy Trần</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="https://scontent.fsgn5-10.fna.fbcdn.net/v/t39.30808-6/301574501_1277149409722204_1801836726171267379_n.jpg?stp=cp6_dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=833d8c&_nc_ohc=UIIsJnqek7kQ7kNvgFH86Bp&_nc_ht=scontent.fsgn5-10.fna&oh=00_AYCeAR94zw_YY87oyii-CkbfCk0AIjJsDf7y2cSbOKxdYw&oe=66E64C1B" alt="Duy Phạm" />
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0">Duy Phạm</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->

        <%--  Footer  --%>
        <jsp:include page="./common/footer.jsp" />

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
