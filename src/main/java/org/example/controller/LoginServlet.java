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

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private UserService userService;

    public void init() {
        userService = new UserService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = userService.getUserByUsernameAndPassword(username, password);
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            if("admin".equals(user.getRole())) {
                session.setAttribute("activeTab", "userManagement");
                response.sendRedirect("UserServlet?action=list");
            } else if("moderator".equals(user.getRole()))  {
                session.setAttribute("activeTab", "postManagement");
                response.sendRedirect("PostServlet?action=list");
            } else {
                response.sendRedirect("index.jsp");
            }
        } else {
            request.getSession().setAttribute("message", "Sai tài khoản hoặc mật khẩu! Vui lòng thử lại");
            request.getSession().setAttribute("status", "error");
            response.sendRedirect("login.jsp");
        }
    }
}
