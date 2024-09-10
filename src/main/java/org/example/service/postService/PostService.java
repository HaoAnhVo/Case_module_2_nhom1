package org.example.service.postService;

import org.example.model.Post;
import org.example.model.Tag;
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
    public void addPost(Post post, String[] tagIdArray) {
        iPostRepository.addPost(post, tagIdArray);
    }

    @Override
    public void updatePost(Post post, String[] tagIdArray) {
        iPostRepository.updatePost(post, tagIdArray);
    }

    @Override
    public void deletePost(int postId) {
        iPostRepository.deletePost(postId);
    }

    @Override
    public List<Post> getPostsByCategory(int categoryId) {
        return iPostRepository.getPostsByCategory(categoryId);
    }

    @Override
    public List<Tag> getTagsByPost(int postId) {
        return iPostRepository.getTagsByPost(postId);
    }
}
