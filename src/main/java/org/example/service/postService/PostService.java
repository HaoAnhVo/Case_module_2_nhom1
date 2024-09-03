package org.example.service.postService;

import org.example.model.Post;
import org.example.repository.postRepository.IPostRepository;
import org.example.repository.postRepository.PostRepository;

import java.util.List;

public class PostService implements IPostService {
    IPostRepository iPostRepository = new PostRepository();

    @Override
    public List<Post> getAllPosts() {
        return iPostRepository.getAllPosts();
    }

    @Override
    public Post getPost(int postId) {
        return iPostRepository.getPost(postId);
    }

    @Override
    public void addPost(Post post) {
        iPostRepository.addPost(post);
    }

    @Override
    public void updatePost(Post post) {
        iPostRepository.updatePost(post);
    }

    @Override
    public void deletePost(int postId) {
        iPostRepository.deletePost(postId);
    }

    @Override
    public List<Post> getPostsByCategory(int categoryId) {
        return iPostRepository.getPostsByCategory(categoryId);
    }
}
