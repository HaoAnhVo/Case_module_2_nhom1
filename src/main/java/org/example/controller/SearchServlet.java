package org.example.controller;

import com.google.gson.Gson;

import org.example.model.Suggestion;
import org.example.repository.BaseRepository;
import org.example.service.categoryService.CategoryService;
import org.example.service.categoryService.ICategoryService;
import org.example.service.locationService.ILocationService;
import org.example.service.locationService.LocationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ILocationService locationService;
    private ICategoryService categoryService;

    @Override
    public void init() {
        locationService = new LocationService();
        categoryService = new CategoryService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        List<Suggestion> suggestions = new ArrayList<>();

        if (keyword != null && !keyword.isEmpty()) {
            suggestions.addAll(searchLocations(keyword));
            suggestions.addAll(searchCategories(keyword));
        }
        response.setContentType("application/json");
        new Gson().toJson(suggestions, response.getWriter());
    }

    private List<Suggestion> searchLocations(String keyword) {
        List<Suggestion> locations = new ArrayList<>();
        String query = "SELECT locationId, locationName FROM locations WHERE locationName LIKE ?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                locations.add(new Suggestion(rs.getInt("locationId"), rs.getString("locationName"), "location"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return locations;
    }

    private List<Suggestion> searchCategories(String keyword) {
        List<Suggestion> categories = new ArrayList<>();
        String query = "SELECT categoryId, categoryName FROM categories WHERE categoryName LIKE ?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                categories.add(new Suggestion(rs.getInt("categoryId"), rs.getString("categoryName"), "category"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }
}