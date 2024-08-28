package controller;

import javax.servlet.http.HttpServlet;
import service.PostService;
import model.Post;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class PostServlet extends HttpServlet {
    private PostService postService = new PostService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

//        if ("view".equals(action)) {
//            int postId = Integer.parseInt(request.getParameter("postId"));
//            Post post = postService.getPostById(postId);
//            request.setAttribute("post", post);
//            RequestDispatcher dispatcher = request.getRequestDispatcher("post.jsp");
//            dispatcher.forward(request, response);
//        } else {
//            List<Post> posts = postService.getAllPosts();
//            request.setAttribute("posts", posts);
//            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
//            dispatcher.forward(request, response);
//        }
    }
}
