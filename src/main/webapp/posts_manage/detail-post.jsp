<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chi tiết bài viết</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background: linear-gradient(to right, #c0b3b3, #98FF98);
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        img {
            border-radius: 5px;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #555;
            line-height: 1.5;
        }

        strong {
            color: #333;
        }

        .comment-section {
            margin-top: 40px;
        }

        .comment-section h2 {
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .comment-list {
            list-style: none;
            padding: 0;
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

        .back-link {
            margin-top: 10px;
            text-decoration: none;
            color: #333;
            font-size: 18px;
            display: inline-flex;
            align-items: start;
            transition: color 0.3s ease;
        }

        .back-link .arrow {
            display: inline-block;
            margin-right: 8px;
            transition: transform 0.3s ease;
        }

        .back-link:hover .arrow {
            transform: translateX(-3px);
        }

        .back-link:hover {
            color: #86b817;
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
    </style>
</head>
<body>
<h1>${post.title}</h1>
<img src="${post.imageUrl}" alt="Post Image" width="300"/>
<p><strong>Địa điểm:</strong> ${post.locationName}</p>
<p><strong>Danh mục:</strong> ${post.categoryName}</p>
<p>${post.content}</p>
<p><strong>Tác giả:</strong> ${post.authorName}</p>
<p><strong>Ngày đăng:</strong> ${post.createdAt}</p>
<p><strong>Ngày chỉnh sửa:</strong> ${post.updatedAt}</p>
<div class="comment-section">
    <h2>Bình luận</h2>
    <div class="comment-list">
        <c:forEach var="comment" items="${comments}">
            <div class="comment-item">
                <p>${comment.content}</p>
                <p><strong>Tác giả:</strong> ${comment.username}</p>
                <p><strong>Ngày đăng:</strong> ${comment.createdAt}</p>
                <c:if test="${comment.userId == sessionScope.userId}">
                    <form action="PostServlet" method="post">
                        <input type="hidden" name="commentId" value="${comment.commentId}">
                        <input type="hidden" name="postId" value="${post.postId}">
                        <input type="hidden" name="action" value="deleteComment">
                        <button type="submit" class="delete-btn">Delete</button>
                    </form>
                </c:if>
            </div>
        </c:forEach>
    </div>
</div>
<a href="PostServlet?action=list" class="back-link">
    <span class="arrow">←</span>Quay về trang trước
</a>
</body>
</html>