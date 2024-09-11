package org.example.controller;

import org.example.model.Post;
import org.example.service.postService.IPostService;
import org.example.service.postService.PostService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/search-posts")
public class PostSearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IPostService iPostService;

    @Override
    public void init() {
        iPostService = new PostService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            getPostsByKeyword(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void getPostsByKeyword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String keyword = request.getParameter("keyword");

        if (keyword != null && !keyword.isEmpty()) {
            List<Post> matchedPosts = iPostService.getPostsByKeyword(keyword);
            request.setAttribute("posts", matchedPosts);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("posts_manage/list-posts-by-search.jsp");
        dispatcher.forward(request, response);
    }
}
