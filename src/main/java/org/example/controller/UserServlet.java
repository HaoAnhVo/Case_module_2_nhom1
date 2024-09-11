package org.example.controller;

import org.example.model.User;
import org.example.service.userService.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "UserServlet", urlPatterns = "/UserServlet")
public class UserServlet extends HttpServlet {
    private UserService userService;

    public void init() {
        userService = new UserService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "list":
                listUsers(request, response);
                break;
            case "new":
                showNewForm(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "insert":
                insertUser(request, response);
                break;
            case "update":
                updateUser(request, response);
                break;
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("users_manage/add-user.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        User existingUser = userService.getUserById(userId);
        RequestDispatcher dispatcher = request.getRequestDispatcher("users_manage/edit-user.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");
        String registrationType = request.getParameter("registrationType");

        if (!password.equals(confirmPassword)) {
            request.getSession().setAttribute("message", "Xác nhận mật khẩu không trùng khớp!");
            request.getSession().setAttribute("status", "error");

            if ("register".equals(registrationType)) {
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                response.sendRedirect("UserServlet?action=new");
            }
            return;
        }
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String role = request.getParameter("role");
        if (role == null || role.trim().isEmpty()) {
            role = "viewer";
        }

        String birthdayStr = request.getParameter("birthday");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date birthday = null;
        try {
            birthday = dateFormat.parse(birthdayStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        // Kiểm tra xem username đã tồn tại chưa
        if (checkUsernameExists(username)) {
            request.getSession().setAttribute("message", "Tên tài khoản đã tồn tại! Vui lòng chọn một tên khác.");
            request.getSession().setAttribute("status", "error");
            request.setAttribute("email", email);
            request.setAttribute("birthday", birthdayStr);
            if ("register".equals(registrationType)) {
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                response.sendRedirect("UserServlet?action=new");
            }
            return;
        }

        User newUser = new User();
        newUser.setUsername(username);
        newUser.setPassword(password);
        newUser.setName(name);
        newUser.setEmail(email);
        newUser.setRole(role);
        assert birthday != null;
        newUser.setBirthday(new java.sql.Date(birthday.getTime()));

        userService.addUser(newUser);

        // Kiểm tra tham số "registrationType" để xác định điều hướng;
        if ("register".equals(registrationType)) {
            // Nếu người dùng tự đăng ký, chuyển hướng đến trang đăng nhập
            request.getSession().setAttribute("message", "Đăng ký thành công! Vui lòng đăng nhập.");
            request.getSession().setAttribute("status", "success");
            response.sendRedirect("login.jsp");
        } else {
            // Nếu admin thêm mới người dùng, chuyển hướng đến danh sách người dùng
            request.getSession().setAttribute("message", "Thêm người dùng thành công!");
            request.getSession().setAttribute("status", "success");
            response.sendRedirect("UserServlet?action=list");
        }
    }

    private boolean checkUsernameExists(String username) {
        return userService.findByUsername(username) != null;
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = request.getParameter("action");

        if ("edit".equals(action)) {
            // Hiển thị form chỉnh sửa người dùng
            int userId = Integer.parseInt(request.getParameter("userId"));
            User user = userService.getUserById(userId);
            request.setAttribute("user", user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("edit-user.jsp");
            dispatcher.forward(request, response);
        } else if ("update".equals(action)) {
            // Xử lý cập nhật thông tin người dùng
            int userId = Integer.parseInt(request.getParameter("userId"));
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String role = request.getParameter("role");
            String birthdayStr = request.getParameter("birthday");

            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date birthday = null;
            try {
                birthday = dateFormat.parse(birthdayStr);
            } catch (ParseException e) {
                e.printStackTrace();
            }

            User user = userService.getUserById(userId);
            user.setUsername(username);
            user.setPassword(password);
            user.setName(name);
            user.setEmail(email);
            user.setRole(role);
            if (birthday != null) {
                user.setBirthday(new java.sql.Date(birthday.getTime()));
            }

            userService.updateUser(user);
            request.getSession().setAttribute("message", "Cập nhật thông tin người dùng thành công!");
            request.getSession().setAttribute("status", "success");
            response.sendRedirect("UserServlet?action=list");
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        userService.deleteUser(userId);
        request.getSession().setAttribute("message", "Xóa người dùng thành công!");
        request.getSession().setAttribute("status", "success");
        response.sendRedirect("UserServlet?action=list");
    }

    private void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User currentUser = (User) request.getSession().getAttribute("user");
        List<User> allUsers = userService.getAllUsers();
        List<User> filteredUsers = allUsers.stream()
                .filter(user -> getRoleLevel(user.getRole()) < getRoleLevel(currentUser.getRole()))
                .collect(Collectors.toList());

        request.setAttribute("listUser", filteredUsers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("users_manage/list-users.jsp");
        dispatcher.forward(request, response);
    }

    private int getRoleLevel(String role) {
        switch (role) {
            case "admin":
                return 3;
            case "moderator":
                return 2;
            case "viewer":
                return 1;
            default:
                return 0;
        }
    }
}
