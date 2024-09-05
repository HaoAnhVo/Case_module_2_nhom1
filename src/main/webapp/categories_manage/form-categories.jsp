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
<!DOCTYPE html>
<html>
<head>
    <title>${post == null ? "Tạo danh mục mới" : "Chỉnh sửa danh mục"}</title>
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
<h1>${category == null ? "Tạo danh mục mới" : "Chỉnh sửa danh mục"}</h1>
<form action="CategoryServlet?action=${category == null ? 'create' : 'edit'}" method="post" class="form-post">
    <input type="hidden" name="categoryId" value="${category != null ? category.categoryId : ''}">
    <div>
        <label>Danh mục</label>
        <c:if test="${category == null}">
            <input type="text" name="categoryName">
        </c:if>
        <c:if test="${category != null}">
            <select name="categoryId" required disabled>
                <option value="">-- Chọn danh mục --</option>
                <c:forEach var="item" items="${categories}">
                    <option value="${item.categoryId}"
                            <c:if test="${category != null && category.locationId == item.categoryId}">selected</c:if>>
                            ${item.categoryName}
                    </option>
                </c:forEach>
            </select>
        </c:if>
    </div>
    <%--  Submit --%>
    <div>
        <button type="submit">${category == null ? "Thêm" : "Cập nhật"}</button>
    </div>
</form>
<a href="CategoryServlet?action=list" class="back-link">
    <span class="arrow">← </span>Quay về trang trước
</a>
</div>
</body>
</html>