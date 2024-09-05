package org.example.controller;

import org.example.model.Category;
import org.example.service.categoryService.CategoryService;
import org.example.service.categoryService.ICategoryService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CategoryServlet", urlPatterns = "/CategoryServlet", loadOnStartup = 1)
public class CategoryServlet extends HttpServlet {
    private ICategoryService iCategoryService;

    @Override
    public void init() {
        iCategoryService = new CategoryService();
        List<Category> categories = iCategoryService.getAllCategories();
        getServletContext().setAttribute("categories", categories);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteCategory(request, response);
                    break;
                default:
                    listCategory(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertCategory(request, response);
                    break;
                case "edit":
                    updateCategory(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    public void listCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        request.setAttribute("categories", iCategoryService.getAllCategories());
        String view = request.getParameter("view");
        String page = "category/list-categories.jsp";
//        if ("location".equals(view)) {
//            page = "destination.jsp";
//        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);
    }

    public void insertCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        String categoryName = request.getParameter("categoryName");

        if (categoryName == null) {
            request.getSession().setAttribute("message", "Vui lòng điền đầy đủ thông tin");
            request.getSession().setAttribute("status", "error");
            response.sendRedirect("CategoryServlet?action=create");
        } else {
            Category category = new Category(categoryName);
            iCategoryService.insertCategory(category);
            request.getSession().setAttribute("message", "Thêm mới thành công!");
            request.getSession().setAttribute("status", "success");
            response.sendRedirect("CategoryServlet");
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/form-categories.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Category category = iCategoryService.selectCategory(categoryId);
        request.setAttribute("categories", category);
        request.setAttribute("categories", iCategoryService.getAllCategories());
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/form-categories.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        iCategoryService.deleteCategory(categoryId);
        request.getSession().setAttribute("message", "Xóa danh mục thành công!");
        request.getSession().setAttribute("status", "success");
        response.sendRedirect("CategoryServlet?action=list");
    }

    private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Category category = null;
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Category categoryUpdate = iCategoryService.selectCategory(categoryId);
        String categoryName = request.getParameter("categoryName");
        category = new Category(categoryId, categoryName);
        iCategoryService.updateCategory(category);
        request.getSession().setAttribute("message", "Cập nhật thành công!");
        request.getSession().setAttribute("status", "success");
        response.sendRedirect("CategoryServlet?action=list");
    }
}
