package org.example.service.categoryService;

import org.example.model.Category;
import org.example.repository.categoryRepository.CategoryRepository;
import org.example.repository.categoryRepository.ICategoryRepository;

import java.util.List;

public class CategoryService implements ICategoryService {
    ICategoryRepository iCategoryRepository = new CategoryRepository();

    @Override
    public List<Category> getAllCategories() {
        return iCategoryRepository.getAllCategories();
    }
}
