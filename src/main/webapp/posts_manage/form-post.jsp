<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

<html>
<head>
    <title>${post == null ? "Tạo bài viết mới" : "Chỉnh sửa bài viết"}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #c0b3b3, #98FF98);
            padding: 20px;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
        }

        h1 {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #444;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        form div {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #444;
        }

        select {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            color: #555;
            background-color: #fff;
            appearance: none;
        }

        select::-ms-expand {
            display: none;
        }

        select:hover {
            border-color: #86b817;
        }

        select:focus {
            border-color: #86b817;
            outline: none;
            box-shadow: 0 0 5px rgba(134, 184, 23, 0.5);
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
            color: #333;
        }

        textarea {
            height: 100px;
            resize: vertical;
        }

        button {
            background-color: #86b817;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #688b12;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #86b817;
            font-size: 16px;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #688b12;
        }

        .comment-section {
            margin-top: 20px;
        }

        .comment-list {
            margin-bottom: 20px;
        }

        .comment-item {
            background-color: #f4f4f4;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            position: relative;
        }

        .comment-item .delete-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 3px;
        }

        .comment-item .delete-btn:hover {
            background-color: #c0392b;
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

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .comment-section {
            margin-top: 40px;
            max-width: 600px;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .comment-section h2 {
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .comment-list {
            list-style: none;
            padding: 0;
            width: 100%;
        }

        .comment-item {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 15px;
        }

        .comment-item p {
            margin: 0 0 10px 0;
        }

        .comment-item strong {
            color: #555;
        }

        .delete-btn {
            background-color: #ff4d4d;
            color: #fff;
            border: none;
            padding: 8px 12px;
            border-radius: 3px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .delete-btn:hover {
            background-color: #ff1a1a;
        }


        .back-link {
            color: #000;
        }
    </style>
</head>
<body>
<h1>${post == null ? "Tạo bài viết mới" : "Chỉnh sửa bài viết"}</h1>
<%-- Post detail --%>
<form action="PostServlet?action=${post == null ? 'insert' : 'update'}" method="post" class="form-post">
    <input type="hidden" name="postId" value="${post != null ? post.postId : ''}">
    <div>
        <label>Tiêu đề:</label>
        <input type="text" name="title" value="${post != null ? post.title : ''}" required>
    </div>
    <div>
        <label>Nội dung:</label>
        <textarea name="content" required>${post != null ? post.content : ''}</textarea>
    </div>
    <div>
        <label>Link hình ảnh:</label>
        <input type="text" name="imageUrl" value="${post != null ? post.imageUrl : ''}">
    </div>
    <div>
        <label>Địa điểm:</label>
        <select name="locationId" required>
            <option value="">-- Chọn địa điểm --</option>
            <c:forEach var="location" items="${locations}">
                <option value="${location.locationId}"
                        <c:if test="${post != null && post.locationId == location.locationId}">selected</c:if>>
                        ${location.locationName}
                </option>
            </c:forEach>
        </select>
    </div>
    <div>
        <label>Danh mục:</label>
        <select name="categoryId" required>
            <option value="">-- Chọn danh mục --</option>
            <c:forEach var="category" items="${categories}">
                <option value="${category.categoryId}"
                        <c:if test="${post != null && post.categoryId == category.categoryId}">selected</c:if>>
                        ${category.categoryName}
                </option>
            </c:forEach>
        </select>
    </div>
    <%--  Submit --%>
    <div>
        <button type="submit">${post == null ? "Thêm" : "Cập nhật"}</button>
    </div>
</form>
<c:if test="${post != null}">
    <div class="comment-section">
        <h2>Bình luận</h2>
        <div class="comment-list">
            <c:forEach var="comment" items="${comments}">
                <div class="comment-item">
                    <div>
                        <p>${comment.content}</p>
                        <p><strong>Người đăng:</strong> ${comment.username}</p>
                        <p><strong>Ngày đăng:</strong> ${comment.createdAt}</p>
                    </div>
                    <a class="delete-btn"
                       href="PostServlet?action=deleteComment&commentId=${comment.commentId}&postId=${post.postId}"
                       onclick="return confirm('Bạn chắc chắn muốn xóa bình luận này?')"
                       data-tooltip="Xóa">
                        <i class="fa-solid fa-trash">Xóa</i>
                    </a>
                </div>
            </c:forEach>
        </div>
        <form action="PostServlet?action=addComment" method="post">
            <input type="hidden" name="postId" value="${post.postId}">
            <div>
                <label for="content">Chia sẻ góp ý của bạn:</label>
                <textarea name="content" id="content"></textarea>
            </div>
            <div>
                <button type="submit">Thêm</button>
            </div>
        </form>
    </div>
</c:if>

<a href="PostServlet?action=list" class="back-link">
    <span class="arrow">← </span>Quay về trang trước
</a>
<script src="<%=request.getContextPath()%>js/sub-script.js"></script>
</body>
</html>