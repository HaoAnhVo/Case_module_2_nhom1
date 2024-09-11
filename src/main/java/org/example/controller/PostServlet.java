package org.example.controller;

import org.example.model.*;
import org.example.service.categoryService.CategoryService;
import org.example.service.commentService.CommentService;
import org.example.service.locationService.LocationService;
import org.example.service.postService.PostService;
import org.example.service.tagService.ITagService;
import org.example.service.tagService.TagService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

@WebServlet(name = "PostServlet", urlPatterns = "/PostServlet")
public class PostServlet extends HttpServlet {
    private PostService postService;
    private CommentService commentService;
    private LocationService locationService;
    private CategoryService categoryService;
    private TagService tagService;

    public void init() {
        postService = new PostService();
        commentService = new CommentService();
        locationService = new LocationService();
        categoryService = new CategoryService();
        tagService = new TagService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        try {
            switch (action) {
                case "list":
                    listPosts(request, response);
                    break;
                case "new":
                    showNewForm(request, response);
                    break;
                case "delete":
                    deletePost(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "view":
                    viewPost(request, response);
                    break;
                case "deleteComment":
                    deleteComment(request, response);
                    break;
                case "getPostsByCategory":
                    getPostsByCategory(request, response);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "insert":
                    insertPost(request, response);
                    break;
                case "update":
                    updatePost(request, response);
                    break;
                case "addComment":
                    addComment(request, response);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void listPosts(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Post> posts = postService.getAllPosts();
        List<Location> locations = locationService.getAllLocations();
        Map<String, List<Post>> groupedPostsByCategory = new HashMap<>();
        String view = request.getParameter("view");
        String page = "posts_manage/list-posts.jsp";

        if ("index".equals(view)) {
            if (posts.size() > 3) {
                posts = posts.subList(0, 3);
            }
            request.setAttribute("posts", posts);
            request.setAttribute("locations", locations);
            page = "index.jsp";
        } else if ("blog".equals(view)) {
            for (Post post : posts) {
                groupedPostsByCategory
                        .computeIfAbsent(post.getCategoryName(), k -> new ArrayList<>())
                        .add(post);
            }
            request.setAttribute("groupedPostsByCategory", groupedPostsByCategory);
            page = "blog.jsp";
        }
        request.setAttribute("posts", posts);
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Location> locations = locationService.getAllLocations();
        List<Category> categories = categoryService.getAllCategories();
        List<Tag> tags = tagService.getAllTags();
        request.setAttribute("locations", locations);
        request.setAttribute("categories", categories);
        request.setAttribute("tags", tags);
        RequestDispatcher dispatcher = request.getRequestDispatcher("posts_manage/form-post.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int postId = Integer.parseInt(request.getParameter("postId"));
        Post post = postService.getPost(postId);
        List<Comment> comments = commentService.getCommentsWithUserAndPost(postId);
        List<Location> locations = locationService.getAllLocations();
        List<Category> categories = categoryService.getAllCategories();
        List<Tag> selectedTags = postService.getTagsByPost(postId);
        List<Tag> tags = tagService.getAllTags();

        request.setAttribute("post", post);
        request.setAttribute("comments", comments);
        request.setAttribute("locations", locations);
        request.setAttribute("categories", categories);
        request.setAttribute("selectedTags", selectedTags);
        request.setAttribute("tags", tags);
        RequestDispatcher dispatcher = request.getRequestDispatcher("posts_manage/form-post.jsp");
        dispatcher.forward(request, response);
    }

    private void insertPost(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String imageUrl = request.getParameter("imageUrl");

        String locationIdStr = request.getParameter("locationId");
        int locationId = (locationIdStr == null || locationIdStr.isEmpty()) ? 0 : Integer.parseInt(locationIdStr);

        String categoryIdStr = request.getParameter("categoryId");
        int categoryId = (categoryIdStr == null || categoryIdStr.isEmpty()) ? 0 : Integer.parseInt(categoryIdStr);

        String tagIds = request.getParameter("tagIds");
        String[] tagIdArray = tagIds.split(",");

        HttpSession session = request.getSession();
        User loggedInUser = (User) session.getAttribute("user");
        int authorId = loggedInUser.getUserId();

        Post newPost = new Post();
        newPost.setTitle(title);
        newPost.setContent(content);
        newPost.setImageUrl(imageUrl);
        newPost.setLocationId(locationId);
        newPost.setCategoryId(categoryId);
        newPost.setAuthorId(authorId);
        newPost.setCreatedAt(new java.util.Date());;

        if (locationId == 0 || categoryId == 0) {
            request.getSession().setAttribute("message", "Vui lòng chọn địa điểm và danh mục hợp lệ.");
            request.getSession().setAttribute("status", "error");
            response.sendRedirect("PostServlet?action=new");
        } else {
            postService.addPost(newPost, tagIdArray);
            request.getSession().setAttribute("message", "Thêm bài viết thành công!");
            request.getSession().setAttribute("status", "success");
            response.sendRedirect("PostServlet?action=list");
        }
    }

    private void updatePost(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String postIdStr = request.getParameter("postId");
        int postId = (postIdStr == null || postIdStr.isEmpty()) ? 0 : Integer.parseInt(postIdStr);

        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String imageUrl = request.getParameter("imageUrl");

        String locationIdStr = request.getParameter("locationId");
        int locationId = (locationIdStr == null || locationIdStr.isEmpty()) ? 0 : Integer.parseInt(locationIdStr);

        String categoryIdStr = request.getParameter("categoryId");
        int categoryId = (categoryIdStr == null || categoryIdStr.isEmpty()) ? 0 : Integer.parseInt(categoryIdStr);

        String tagIds = request.getParameter("tagIds");
        String[] tagIdArray = tagIds.split(",");

        HttpSession session = request.getSession();
        User loggedInUser = (User) session.getAttribute("user");
        int authorId = loggedInUser.getUserId();


        Post updatedPost = postService.getPost(postId);
        updatedPost.setTitle(title);
        updatedPost.setContent(content);
        updatedPost.setImageUrl(imageUrl);
        updatedPost.setLocationId(locationId);
        updatedPost.setCategoryId(categoryId);
        updatedPost.setAuthorId(authorId);
        updatedPost.setUpdatedAt(new java.util.Date());

        if (locationId == 0 || categoryId == 0) {
            request.getSession().setAttribute("message", "Vui lòng chọn địa điểm và danh mục hợp lệ.");
            request.getSession().setAttribute("status", "error");
            response.sendRedirect("PostServlet?action=edit&postId=" + postId);
        } else {
            postService.updatePost(updatedPost, tagIdArray);
            request.getSession().setAttribute("message", "Cập nhật bài viết thành công!");
            request.getSession().setAttribute("status", "success");
            response.sendRedirect("PostServlet?action=list");
        }
    }

    private void deletePost(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int postId = Integer.parseInt(request.getParameter("postId"));
        postService.deletePost(postId);
        request.getSession().setAttribute("message", "Xóa bài viết thành công!");
        request.getSession().setAttribute("status", "success");
        response.sendRedirect("PostServlet?action=list");
    }

    private void viewPost(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int postId = Integer.parseInt(request.getParameter("postId"));
        Post post = postService.getPost(postId);
        List<Comment> comments = commentService.getCommentsWithUserAndPost(postId);
        List<Tag> tags = postService.getTagsByPost(postId);
        List<Post> postsLocationRelated = locationService.getPostsByLocation(post.getLocationId());

        postsLocationRelated.removeIf(p -> p.getPostId() == postId);

        request.setAttribute("post", post);
        request.setAttribute("postsLocationRelated", postsLocationRelated);
        request.setAttribute("comments", comments);
        request.setAttribute("tags",tags);
        String view = request.getParameter("view");
        String page = "posts_manage/detail-post.jsp";
        if ("detail-blog".equals(view)) {
            page = "detail-blog.jsp";
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);
    }

    /*********  Comment  *********/
    private void deleteComment(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String action = request.getParameter("action");
        if ("deleteComment".equals(action)) {
            int commentId = Integer.parseInt(request.getParameter("commentId"));
            String postId = request.getParameter("postId");
            commentService.deleteComment(commentId);
            if (postId != null && !postId.isEmpty()) {
                request.getSession().setAttribute("message", "Đã xóa bình luận!");
                request.getSession().setAttribute("status", "success");
                response.sendRedirect("PostServlet?action=edit&postId=" + postId);
            } else {
                response.sendRedirect("PostServlet?action=list");
            }
        }
    }

    private void addComment(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String content = request.getParameter("content");
        int postId = Integer.parseInt(request.getParameter("postId"));

        HttpSession session = request.getSession();
        User loggedInUser = (User) session.getAttribute("user");
        if (loggedInUser != null) {
            int authorId = loggedInUser.getUserId();
            String role = loggedInUser.getRole();

            Comment comment = new Comment();
            comment.setContent(content);
            comment.setCreatedAt(new java.util.Date());
            comment.setUserId(authorId);
            comment.setPostId(postId);

            commentService.addComment(comment);
            request.getSession().setAttribute("message", "Thêm bình luận bài viết thành công!");
            request.getSession().setAttribute("status", "success");

            if ("admin".equalsIgnoreCase(role) || "moderator".equalsIgnoreCase(role)) {
                response.sendRedirect("PostServlet?action=edit&postId=" + postId);
            } else {
                response.sendRedirect("PostServlet?action=view&view=detail-blog&postId=" + postId);
            }
        } else {
            request.getSession().setAttribute("message", "Bạn cần đăng nhập để có thể bình luận bài viết!");
            request.getSession().setAttribute("status", "error");
            response.sendRedirect("login.jsp");
        }
    }

    private void getPostsByCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        List<Post> posts = postService.getPostsByCategory(categoryId);
        Category postsByCategory = categoryService.selectCategory(categoryId);
        request.setAttribute("postsByCategory", postsByCategory);
        request.setAttribute("posts", posts);
        request.getRequestDispatcher("categories_manage/list-posts-by-category.jsp").forward(request, response);
    }
}
