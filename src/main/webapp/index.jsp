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
    <jsp:include page="navbar.jsp" />

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
                                class="form-control border-0 rounded-pill w-100 py-3 ps-4 pe-5"
                                type="text"
                                placeholder="Eg: Thailand"
                        />
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
                <a href="#!">
                    <img
                            src="https://theworldtravelguy.com/wp-content/uploads/2020/04/DSCF3947_450n.jpg"
                            alt=""
                            class="img-fluid service-img"
                    />
                    <p class="text-center p-4" style="font-size: 1.5rem; color: #2c3e50">Bài viết</p>
                </a>
            </div>
            <div class="col-lg-4 col-sm-4 wow fadeInUp" data-wow-delay="0.3s">
                <a href="#!">
                    <img
                            src="https://theworldtravelguy.com/wp-content/uploads/2021/05/DSCF1687_450n2.jpg"
                            alt=""
                            class="img-fluid service-img"
                    />
                    <p class="text-center p-4" style="font-size: 1.5rem; color: #2c3e50">Địa điểm</p>
                </a>
            </div>
            <div class="col-lg-4 col-sm-4 wow fadeInUp" data-wow-delay="0.5s">
                <a href="#!">
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
            <div class="col-lg-7 col-md-6">
                <div class="row g-3">
                    <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                        <a class="position-relative d-block overflow-hidden" href="">
                            <img
                                    class="img-fluid"
                                    src="https://ik.imagekit.io/tvlk/blog/2022/10/kinh-nghiem-du-lich-vinh-ha-long-1.jpg?tr=dpr-2,w-675"
                                    alt="Vịnh Hạ Long"
                            />
                            <div
                                    class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"
                            >
                                Vịnh Hạ Long
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                        <a class="position-relative d-block overflow-hidden" href="">
                            <img
                                    class="img-fluid"
                                    src="https://vcdn1-dulich.vnecdn.net/2022/05/09/shutterstock-280926449-6744-15-3483-9174-1652070682.jpg?w=0&h=0&q=100&dpr=1&fit=crop&s=bGCo6Rv6DseMDE_07TT1Aw"
                                    alt="Nha Trang"
                            />
                            <div
                                    class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"
                            >
                                Nha Trang
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
                        <a class="position-relative d-block overflow-hidden" href="">
                            <img
                                    class="img-fluid"
                                    src="https://www.arttravel.com.vn/upload/news/hoi-an-7269-6259.jpg"
                                    alt="Hội An"
                            />

                            <div
                                    class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"
                            >
                                Hội An
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px">
                <a class="position-relative d-block h-100 overflow-hidden" href="">
                    <img
                            class="img-fluid position-absolute w-100 h-100"
                            src="https://ik.imagekit.io/tvlk/blog/2023/11/du-lich-da-nang-mua-nao-dep-1.jpg?tr=dpr-2,w-675"
                            alt="Đà Nẵng"
                            style="object-fit: cover"
                    />
                    <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">
                        Đà Nẵng
                    </div>
                </a>
            </div>
        </div>
        <div class="mt-0 row g-3">
            <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px">
                <a class="position-relative d-block h-100 overflow-hidden" href="">
                    <img
                            class="img-fluid position-absolute w-100 h-100"
                            src="https://dulichkhampha24.com/wp-content/uploads/2020/12/kinh-nghiem-du-lich-quang-binh-c.jpg"
                            alt="Quảng Bình"
                            style="object-fit: cover"
                    />
                    <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">
                        Quảng Bình
                    </div>
                </a>
            </div>
            <div class="col-lg-7 col-md-6">
                <div class="row g-3">
                    <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                        <a class="position-relative d-block overflow-hidden" href="hanoi_blog.jsp">
                            <img
                                    class="img-fluid"
                                    src="https://suckhoedoisong.qltns.mediacdn.vn/Images/thanhloan/2020/11/28/Nam-2030-du-lich-ha-noi-phan-dau-tro-thanh-nganh-kinh-te-mui-nhon-cua-thu-do-19.jpg"
                                    alt="Hà Nội"
                            />
                            <div
                                    class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"
                            >
                                Hà Nội
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                        <a class="position-relative d-block overflow-hidden" href="">
                            <img
                                    class="img-fluid"
                                    src="https://vcdn1-dulich.vnecdn.net/2022/03/31/thac-Ban-Gioc-Cao-Bang-8614-1648729935.jpg?w=0&h=0&q=100&dpr=1&fit=crop&s=14zFbBkd6hgbDfwOrjQPyQ"
                                    alt="Cao Bằng"
                            />
                            <div
                                    class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"
                            >
                                Cao Bằng
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
                        <a class="position-relative d-block overflow-hidden" href="">
                            <img
                                    class="img-fluid"
                                    src="https://mientaycogi.com/wp-content/uploads/2020/10/nui-cam-an-giang.jpg"
                                    alt="An Giang"
                            />

                            <div
                                    class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"
                            >
                                An Giang
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="mt-0 row g-3">
            <div class="col-lg-12 col-md-12">
                <div class="row g-3">
                    <div class="col-lg-4 col-md-4 wow zoomIn" data-wow-delay="0.1s">
                        <a class="position-relative d-block overflow-hidden" href="">
                            <img
                                    class="img-fluid"
                                    src="https://divui.com/blog/wp-content/uploads/2018/10/saigon.jpg"
                                    alt="Sài Gòn"
                            />
                            <div
                                    class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"
                            >
                                Sài Gòn
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 wow zoomIn" data-wow-delay="0.3s">
                        <a class="position-relative d-block overflow-hidden" href="">
                            <img
                                    class="img-fluid"
                                    src="https://images2.thanhnien.vn/528068263637045248/2023/9/11/568976h1-1694451569790557720062.jpg"
                                    alt="Đà Lạt"
                            />
                            <div
                                    class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"
                            >
                                Đà Lạt
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 wow zoomIn" data-wow-delay="0.5s">
                        <a class="position-relative d-block overflow-hidden" href="">
                            <img
                                    class="img-fluid"
                                    src="https://mia.vn/media/uploads/blog-du-lich/kham-pha-net-dac-sac-cua-cho-noi-cai-rang-chon-mien-tay-song-nuoc-12-1649149954.jpeg"
                                    alt="Cần Thơ"
                            />

                            <div
                                    class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2"
                            >
                                Cần Thơ
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Destination Start -->

<!-- Blog Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Bài Blog</h6>
            <h1 class="mb-5">Bài viết gần đây</h1>
        </div>
        <div class="row g-4 justify-content-center">
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="package-item">
                    <a href="hanoi_blog_1_details.jsp">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/package-1.jpg" alt=""/>
                        </div>
                        <div class="d-flex border-bottom p-2">
                            <h5 class="flex-fill py-2 mt-1">Hà Nội title 1</h5>
                        </div>
                        <div class="p-3">
                            <p class="desc">
                                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ex labore animi ipsa
                                necessitatibus sunt ullam consequatur iure sint minima culpa debitis dolore
                                sequi ratione nulla explicabo minus quisquam voluptatum tenetur, quidem amet,
                                rem et illo! Sequi quaerat rerum debitis voluptatem nobis earum dolores tenetur
                                natus, error quisquam aliquam rem explicabo.
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
                    <a href="up_post.jsp">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/package-1.jpg" alt=""/>
                        </div>
                        <div class="d-flex border-bottom p-2">
                            <h5 class="flex-fill py-2 mt-1">another title</h5>
                        </div>
                        <div class="p-3">
                            <p class="desc">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium doloribus
                                ab deserunt, delectus nemo aperiam iure praesentium ut sint architecto nobis
                                deleniti modi cum, itaque earum veritatis sequi reiciendis repellendus fuga sunt
                                quod repellat neque magni. Sit dignissimos delectus placeat id, alias minus sed
                                animi deleniti velit voluptate qui. Nostrum.
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
                            <img class="img-fluid" src="img/package-1.jpg" alt=""/>
                        </div>
                        <div class="d-flex border-bottom p-2">
                            <h5 class="flex-fill py-2 mt-1">another title</h5>
                        </div>
                        <div class="p-3">
                            <p class="desc">
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Velit, itaque? Saepe
                                voluptas non, delectus nisi in eos incidunt! Fuga earum eligendi sint architecto
                                dicta maiores ducimus ipsum quibusdam beatae maxime reiciendis sunt, fugit
                                eveniet? At, pariatur odit voluptas quia voluptatem, reiciendis expedita ipsam
                                labore quod facilis delectus non eum commodi.
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
                        <img class="img-fluid" src="" alt=""/>
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
                        <img class="img-fluid" src="" alt=""/>
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
                        <img class="img-fluid" src="" alt=""/>
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
                        <img class="img-fluid" src="" alt=""/>
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
                <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                <div class="position-relative mx-auto" style="max-width: 400px">
                    <input
                            class="form-control border-secondary w-100 py-3 ps-4 pe-5"
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
