package org.example.service.categoryService;

import org.example.model.Category;
import org.example.model.Post;

import java.sql.SQLException;
import java.util.List;

public interface ICategoryService {
    public void insertCategory(Category category) throws SQLException;

    public Category selectCategory(int id);

    public List<Category> getAllCategories();

    public void deleteCategory(int id) throws SQLException;

    public void updateCategory(Category category) throws SQLException;

}
