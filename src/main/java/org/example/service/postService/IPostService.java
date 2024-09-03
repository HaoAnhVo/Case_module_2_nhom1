package org.example.service.postService;

import org.example.model.Post;

import java.util.List;

public interface IPostService {
    public List<Post> getAllPosts();
    public Post getPost(int postId);
    public void addPost(Post post);
    public void updatePost(Post post);
    public void deletePost(int postId);
    public List<Post> getPostsByCategory(int categoryId);
}
