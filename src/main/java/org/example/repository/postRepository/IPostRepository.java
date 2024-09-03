package org.example.repository.postRepository;

import org.example.model.Post;

import java.util.List;

public interface IPostRepository {
    public List<Post> getAllPosts();
    public List<Post> getPostsByCategory(int categoryId);
    public Post getPost(int postId);
    public void addPost(Post post);
    public void updatePost(Post post);
    public void deletePost(int postId);
}
