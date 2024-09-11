<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>MeTrip - Home Page</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="keywords"/>
    <meta content="" name="description"/>

    <!-- Favicon -->
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
        #suggestion-box {
            display: none;
            position: absolute;
            background-color: white;
            border: 1px solid #ccc;
            width: 100%;
            max-height: 200px;
            overflow-y: auto;
            z-index: 1000;
        }

        .suggestion-item {
            padding: 8px;
            cursor: pointer;
        }

        .suggestion-item:hover {
            background-color: #f0f0f0;
        }

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

<!-- Navbar & Hero Start -->
<div class="container-fluid position-relative p-0">
    <% request.setAttribute("currentPage", "index.jsp"); %>

    <jsp:include page="./common/navbar.jsp"/>


    <div class="container-fluid bg-primary py-5 mb-5 hero-header">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">
                        Vì Tuổi Trẻ Là Những Chuyến Đi
                    </h1>
                    <p class="fs-4 text-white mb-4 animated slideInDown">
                        Hành Trình Của Bạn, Câu Chuyện Của Chúng Ta
                    </p>
                    <div class="position-relative w-75 mx-auto animated slideInDown">
                        <input
                                id="search-input"
                                class="form-control border-0 rounded-pill w-100 py-3 ps-4 pe-5"
                                type="text"
                                placeholder="Eg: Ha Noi"
                        />
                        <div id="suggestion-box" class="suggestion-box"
                             style="position: absolute; top: 100%; left: 0; width: 100%; background: white; z-index: 1000;">
                        </div>
                        <button
                                type="button"
                                class="btn btn-primary rounded-pill py-2 px-4 position-absolute top-0 end-0 me-2"
                                style="margin-top: 7px"
                        >
                            Tìm kiếm
                        </button>
                    </div>
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
                    Hãy cùng nhau khám phá Việt Nam tươi đẹp qua từng bài viết, từng hình ảnh, và từng hành
                    trình đáng nhớ. Chúc bạn sẽ có những trải nghiệm du lịch tuyệt vời!
                </p>
                <a class="btn btn-primary py-3 px-5 mt-2" href="about.jsp">Đọc thêm</a>
            </div>
        </div>
    </div>
</div>
<!-- About End -->

<!-- Service Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Đặc trưng</h6>
            <div class="service-group d-none d-lg-flex">
                <img src="./img/featured-1.png" alt=""/>
                <img src="./img/featured-2.png" alt=""/>
                <img src="./img/featured-3.png" alt=""/>
                <img src="./img/featured-4.png" alt=""/>
                <img src="./img/featured-5.png" alt=""/>
            </div>
        </div>
        <div class="row g-4 justify-content-between">
            <div class="col-lg-4 col-sm-4 wow fadeInUp" data-wow-delay="0.1s">
                <a href="PostServlet?action=list&view=blog">
                    <img
                            src="https://theworldtravelguy.com/wp-content/uploads/2020/04/DSCF3947_450n.jpg"
                            alt=""
                            class="img-fluid service-img"
                    />
                    <p class="text-center p-4" style="font-size: 1.5rem; color: #2c3e50">Bài viết</p>
                </a>
            </div>
            <div class="col-lg-4 col-sm-4 wow fadeInUp" data-wow-delay="0.3s">
                <a href="LocationServlet?action=view&view=location">
                    <img
                            src="https://theworldtravelguy.com/wp-content/uploads/2021/05/DSCF1687_450n2.jpg"
                            alt=""
                            class="img-fluid service-img"
                    />
                    <p class="text-center p-4" style="font-size: 1.5rem; color: #2c3e50">Địa điểm</p>
                </a>
            </div>
            <div class="col-lg-4 col-sm-4 wow fadeInUp" data-wow-delay="0.5s">
                <a href="./about.jsp">
                    <img
                            src="https://theworldtravelguy.com/wp-content/uploads/2021/10/DSCF1029-2_450.jpg"
                            alt=""
                            class="img-fluid service-img"
                    />
                    <p class="text-center p-4" style="font-size: 1.5rem; color: #2c3e50">Chúng tôi</p>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->

<!-- Destination Start -->
<div class="container-xxl py-5 destination">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Địa điểm</h6>
            <h1 class="mb-5">Địa điểm nổi bật</h1>
        </div>
        <div class="row g-3">
            <c:forEach var="location" items="${locations}" varStatus="status">
                <c:if test="${status.index % 5 == 0}">
                    <div class="row g-3 mt-0">
                    <div class="col-lg-7 col-md-6 mt-0">
                    <div class="row g-3 mt-0">
                </c:if>

                <c:if test="${status.index % 5 < 4}">
                    <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="${0.1 + (status.index % 5) * 0.2}s">
                        <a class="position-relative d-block overflow-hidden"
                           href="LocationServlet?action=getPostsByLocation&locationId=${location.locationId}">
                            <img src="${location.imgURL}" alt="${location.locationName}"
                                 style="width: 100%; height: 270px; object-fit: cover"/>
                            <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">
                                    ${location.locationName}
                            </div>
                        </a>
                    </div>
                </c:if>

                <c:if test="${status.index % 5 == 4}">
                    </div>
                    </div>

                    <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s"
                         style="height: 555px; object-fit: cover">
                        <a class="position-relative d-block h-100 overflow-hidden"
                           href="LocationServlet?action=getPostsByLocation&locationId=${location.locationId}">
                            <img
                                    class="img-fluid position-absolute w-100 h-100"
                                    src="${location.imgURL}"
                                    alt="${location.locationName}"
                                    style="object-fit: cover"
                            />
                            <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">
                                    ${location.locationName}
                            </div>
                        </a>
                    </div>
                </c:if>

                <c:if test="${status.index % 5 == 4 || status.last}">
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </div>
</div>
<!-- Destination Start -->

<!-- Blog Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Blog</h6>
            <h1 class="mb-5">Bài viết gần đây</h1>
        </div>
        <div class="row g-4 justify-content-center">
            <c:forEach var="post" items="${posts}">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <a href="PostServlet?action=view&view=detail-blog&postId=${post.postId}">
                            <div class="overflow-hidden">
                                <img src="${post.imageUrl}" alt="${post.title}"
                                     style="width: 100%; height: 270px; object-fit: cover"/>
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
<!-- Blog End -->

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
                        <img class="img-fluid" src="https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-6/241453626_1497275003981775_9102379658119929148_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=fDEOyFzPpkEQ7kNvgGexSLp&_nc_ht=scontent.fdad3-1.fna&_nc_gid=AK0ZrnbZUGknX3SDfU1WMya&oh=00_AYA8y6U1XjE7K_vcsc4XzOZAda9roSbr821jTVeDXBEnJw&oe=66E59366" alt="Linh Phan"/>
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
            <div class="col-lg-2 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="team-item">
                    <div class="overflow-hidden">
                        <img class="img-fluid" src="https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/456020751_2267672190236401_6311886940491195893_n.jpg?stp=cp6_dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeESNLnA9l8SzW3wOWP2tkhNzVMl8oQ9jhrNUyXyhD2OGsRL47lj6RUkct9Y9brx_R5BKGQIqAoi9HtaGnIdaItt&_nc_ohc=0CEKnxXPT1EQ7kNvgHl699X&_nc_ht=scontent.fsgn2-4.fna&oh=00_AYACbmoJyyVSeli9PkcBTaS-vMnkGbAUOQD62TEsHbBV6A&oe=66E5C2DA" alt="Quang Nguyễn"/>
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
            <div class="col-lg-2 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="team-item">
                    <div class="overflow-hidden">
                        <img class="img-fluid" src="https://bedental.vn/wp-content/uploads/2022/11/1e8063154fdf3dcbb07edf0ad2df326a.jpg" alt="Hào Nhỏ"/>
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
            <div class="col-lg-2 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="team-item">
                    <div class="overflow-hidden">
                        <img class="img-fluid" src="https://ca.slack-edge.com/T062S4QFUJZ-U071BK6FF2A-90e92d59184f-512" alt="Huy Trần"/>
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
                        <img class="img-fluid" src="https://scontent.fsgn5-10.fna.fbcdn.net/v/t39.30808-6/301574501_1277149409722204_1801836726171267379_n.jpg?stp=cp6_dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=833d8c&_nc_ohc=UIIsJnqek7kQ7kNvgFH86Bp&_nc_ht=scontent.fsgn5-10.fna&oh=00_AYCeAR94zw_YY87oyii-CkbfCk0AIjJsDf7y2cSbOKxdYw&oe=66E64C1B" alt="Duy Phạm"/>
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

<!-- Testimonial Start -->
<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container">
        <div class="text-center">
            <h6 class="section-title bg-white text-center text-primary px-3">Instagram</h6>
            <h1 class="mb-5">Những kỷ niệm tuyệt vời!!!</h1>
        </div>
        <div class="owl-carousel testimonial-carousel position-relative">
            <div class="testimonial-item bg-white text-center border p-4">
                <img class="img-fluid rounded" src="./img/moment-1.png" style="width: 100%; height: 300px"/>
            </div>
            <div class="testimonial-item bg-white text-center border p-4">
                <img class="img-fluid rounded" src="./img/moment-2.png" style="width: 100%; height: 300px"/>
            </div>
            <div class="testimonial-item bg-white text-center border p-4">
                <img class="img-fluid rounded" src="./img/moment-3.png" style="width: 100%; height: 300px"/>
            </div>
            <div class="testimonial-item bg-white text-center border p-4">
                <img class="img-fluid rounded" src="./img/moment-4.png" style="width: 100%; height: 300px"/>
            </div>
        </div>
    </div>
</div>
<!-- Testimonial End -->

<%--  Footer  --%>
<jsp:include page="./common/footer.jsp"/>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

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
<script src="js/sub-script.js"></script>

</body>
</html>
