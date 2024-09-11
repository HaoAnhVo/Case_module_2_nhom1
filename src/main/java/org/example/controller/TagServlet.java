package org.example.controller;

import org.example.model.Post;
import org.example.model.Tag;
import org.example.service.tagService.ITagService;
import org.example.service.tagService.TagService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "TagServlet", urlPatterns = "/TagServlet")
public class TagServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public ITagService tagService;

    public void init() {
        tagService = new TagService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "list":
                    getAllTags(req, resp);
                    break;
                case "create":
                    showFormCreate(req, resp);
                case "edit":
                    showFormEdit(req, resp);
                    break;
                case "delete":
                    deleteTag(req,resp);
                    break;
                case "getPostsByTag":
                    getPostsByTag(req, resp);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "create":
                    addTag(req, resp);
                    break;
                case "edit":
                    updateTag(req, resp);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void getAllTags(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        req.setAttribute("tags", tagService.getAllTags());
        RequestDispatcher dispatcher = req.getRequestDispatcher("tags_manage/list-tags.jsp");
        dispatcher.forward(req, resp);
    }

    private void showFormCreate(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("tags_manage/form-tag.jsp");
        dispatcher.forward(req, resp);
    }

    private void showFormEdit(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int tagId = Integer.parseInt(req.getParameter("tagId"));
        Tag tag = tagService.getTag(tagId);
        req.setAttribute("tag", tag);
        RequestDispatcher dispatcher = req.getRequestDispatcher("tags_manage/form-tag.jsp");
        dispatcher.forward(req, resp);
    }

    private void addTag(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String tagName = req.getParameter("tagName");
        Tag tag = new Tag(tagName);
        tagService.addTag(tag);
        req.getSession().setAttribute("message", "Thêm mới thành công");
        req.getSession().setAttribute("status", "success");
        resp.sendRedirect("TagServlet?action=list");

    }

    private void updateTag(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        Tag tag = null;
        int tagId = Integer.parseInt(req.getParameter("tagId"));
        String tagName = req.getParameter("tagName");

        if (tagName == null) {
            req.getSession().setAttribute("message", "Vui lòng điền đầy đủ thông tin");
            req.getSession().setAttribute("status", "error");
        } else {
            tag = new Tag(tagId, tagName);
            tagService.updateTag(tag);
            req.getSession().setAttribute("message", "Cập nhật thành công!");
            req.getSession().setAttribute("status", "success");
            resp.sendRedirect("TagServlet?action=list");
        }
    }

    private void deleteTag(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int tagId = Integer.parseInt(req.getParameter("tagId"));
        tagService.deleteTag(tagId);
        req.getSession().setAttribute("message", "Xóa bài viết thành công!");
        req.getSession().setAttribute("status", "success");
        resp.sendRedirect("TagServlet?action=list");
    }

    private void getPostsByTag(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int tagId = Integer.parseInt(req.getParameter("tagId"));
        List<Post> posts = tagService.getPostsByTag(tagId);
        Tag tag = tagService.getTag(tagId);
        req.setAttribute("posts", posts);
        req.setAttribute("tag", tag);
        req.getRequestDispatcher("tags_manage/list-posts-by-tag.jsp").forward(req, resp);
    }
}
