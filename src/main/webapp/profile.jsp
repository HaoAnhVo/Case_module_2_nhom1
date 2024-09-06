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
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
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
    }
    @media (max-width: 768px) {
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
<jsp:include page="./common/navbar.jsp"/>
<!-- Header Section -->
<div class="header">
  <div>
    <h1>${user.username} - Blogger du lịch</h1>
    <p>Khám phá thế giới, ghi lại những khoảnh khắc</p>
  </div>
</div>

<!-- About Section -->
<div class="about-section wow fadeInUp">
  <div class="container">
    <h2 class="text-center">Thông tin cá nhân</h2>
    <div class="d-flex align-items-center">
      <div class="about-content col-md-6">
        <img src="https://cdn.pixabay.com/photo/2019/12/04/13/12/hair-4672684_1280.jpg" alt="Profile Picture"
             class="img-fluid">
      </div>
      <div class="about-text col-md-6">
        <!-- Form Section -->
        <div class="form-section py-5">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <form action="/profile?action=edit" method="post">
                <!-- Name -->
                <div class="form-group mb-3">
                  <label for="name" class="form-label">Họ và tên:</label>
                  <input type="text" class="form-control" id="name" name="name"
                         value="${user.name}" required>
                </div>

                <!-- Email -->
                <div class="form-group mb-3">
                  <label for="email" class="form-label">Email:</label>
                  <input type="email" class="form-control" id="email" name="email"
                         value="${user.email}"
                         required>
                </div>

                <!-- Birth Date -->
                <div class="form-group mb-3">
                  <label for="birthDay" class="form-label">Ngày sinh:</label>
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

<!-- Blog Posts Section -->
<div class="blog-section">
  <div class="container">
    <h2 class="text-center mb-5">Latest Blog Posts</h2>
    <div class="row">
      <div class="col-md-4 blog-post wow fadeInUp" data-wow-delay="0.1s">
        <img src="./img/destination-2.png" alt="Post Image">
        <h3>Hidden Gems in Southeast Asia</h3>
        <p>Explore the lesser-known, beautiful places in Southeast Asia, away from the tourist crowds.</p>
      </div>
      <div class="col-md-4 blog-post wow fadeInUp">
        <img src="./img/destination-2.jpg" alt="Post Image">
        <h3>A Journey Through the Alps</h3>
        <p>My adventure through the majestic Alps, uncovering breathtaking landscapes and local culture.</p>
      </div>
      <div class="col-md-4 blog-post wow fadeInUp">
        <img src="./img/destination-3.jpg" alt="Post Image">
        <h3>Immersing in Japanese Culture</h3>
        <p>Experience the blend of traditional and modern culture in the land of the rising sun, Japan.</p>
      </div>
    </div>
  </div>
</div>

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