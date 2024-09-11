package org.example.service.categoryService;

import org.example.model.Category;
import org.example.model.Post;
import org.example.repository.categoryRepository.CategoryRepository;
import org.example.repository.categoryRepository.ICategoryRepository;

import java.sql.SQLException;
import java.util.List;

public class CategoryService implements ICategoryService {
    ICategoryRepository iCategoryRepository = new CategoryRepository();

    @Override
    public void insertCategory(Category category) throws SQLException {
        iCategoryRepository.insertCategory(category);
    }

    @Override
    public Category selectCategory(int id) {
        return iCategoryRepository.selectCategory(id);
    }

    @Override
    public List<Category> getAllCategories() {
        return iCategoryRepository.getAllCategories();
    }

    @Override
    public void deleteCategory(int id) throws SQLException {
        iCategoryRepository.deleteCategory(id);
    }

    @Override
    public void updateCategory(Category category) throws SQLException {
        iCategoryRepository.updateCategory(category);
    }
}
