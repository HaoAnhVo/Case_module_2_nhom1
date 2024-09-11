package org.example.service.postService;

import org.example.model.Post;
import org.example.model.Tag;

import java.util.List;

public interface IPostService {
    public List<Post> getAllPosts();
    public Post getPost(int postId);
    public void addPost(Post post, String[] tagIdArray);
    public void updatePost(Post post, String[] tagIdArray);
    public void deletePost(int postId);
    public List<Post> getPostsByCategory(int categoryId);
    public List<Post> getPostsByKeyword(String keyword);
    public List<Tag> getTagsByPost(int postId);
}
