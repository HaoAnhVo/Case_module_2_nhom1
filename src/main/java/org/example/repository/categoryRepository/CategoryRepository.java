package org.example.repository.categoryRepository;

import org.example.model.Category;
import org.example.model.Location;
import org.example.model.Post;
import org.example.repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepository implements ICategoryRepository {
    private static final String INSERT_CATEGORY = "INSERT INTO categories (categoryName) VALUES (?)";
    private static final String SELECT_ALL_CATEGORIES = "SELECT * FROM categories";
    private static final String SELECT_CATEGORY_BY_ID = "SELECT * FROM categories WHERE categoryId = ?";
    private static final String DELETE_CATEGORY_BY_ID = "DELETE FROM categories WHERE categoryId = ?";
    private static final String UPDATE_CATEGORY = "UPDATE categories SET categoryName = ? WHERE categoryId = ?";


    @Override
    public void deleteCategory(int categoryId) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CATEGORY_BY_ID)) {
            preparedStatement.setInt(1, categoryId);
            preparedStatement.executeUpdate();
        }
    }

    @Override
    public void updateCategory(Category category) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CATEGORY)) {
            preparedStatement.setString(1, category.getCategoryName());
            preparedStatement.setInt(2, category.getCategoryId());
            preparedStatement.executeUpdate();
        }
    }

    @Override
    public void insertCategory(Category category) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CATEGORY)) {
            preparedStatement.setString(1, category.getCategoryName());
            preparedStatement.executeUpdate();
        }
    }

    @Override
    public Category selectCategory(int id) {
        Category category = null;
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CATEGORY_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String categoryName = rs.getString("categoryName");
                category = new Category(id, categoryName);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return category;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    @Override
    public List<Category> getAllCategories() {
        List<Category> categories = new ArrayList<>();

        try (Connection con = BaseRepository.getConnection();
             PreparedStatement ps = con.prepareStatement(SELECT_ALL_CATEGORIES);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Category category = new Category();
                category.setCategoryId(rs.getInt("categoryId"));
                category.setCategoryName(rs.getString("categoryName"));
                categories.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return categories;
    }

    @Override
    public List<Post> getPostsByCategory(int categoryId) {
        List<Post> posts = new ArrayList<>();
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(SELECT_CATEGORY_BY_ID)) {
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Post post = new Post();
                post.setPostId(rs.getInt("postId"));
                post.setTitle(rs.getString("title"));
                post.setContent(rs.getString("content"));
                post.setImageUrl(rs.getString("imageUrl"));
                post.setCreatedAt(rs.getDate("createdAt"));
                post.setUpdatedAt(rs.getDate("updatedAt"));
                post.setLocationId(rs.getInt("locationId"));
                post.setCategoryId(rs.getInt("categoryId"));
                post.setAuthorId(rs.getInt("authorId"));

                post.setLocationName(rs.getString("locationName"));
                post.setCategoryName(rs.getString("categoryName"));
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
}
