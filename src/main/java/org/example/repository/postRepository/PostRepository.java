package org.example.repository.postRepository;

import org.example.model.Comment;
import org.example.model.Post;
import org.example.repository.BaseRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostRepository implements IPostRepository {
    public void addPost(Post post) {
        String query = "INSERT INTO posts(title, content, imageUrl, createdAt, locationId, categoryId, authorId) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, post.getTitle());
            ps.setString(2, post.getContent());
            ps.setString(3, post.getImageUrl());
            ps.setDate(4, new java.sql.Date(post.getCreatedAt().getTime()));
            ps.setInt(5, post.getLocationId());
            ps.setInt(6, post.getCategoryId());
            ps.setInt(7, post.getAuthorId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to update a post
    public void updatePost(Post post) {
        String query = "UPDATE posts SET title = ?, content = ?, imageUrl = ?, updatedAt = ?, locationId = ?, categoryId = ?, authorId = ? WHERE postId = ?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, post.getTitle());
            ps.setString(2, post.getContent());
            ps.setString(3, post.getImageUrl());
            ps.setDate(4, new java.sql.Date(post.getUpdatedAt().getTime()));
            ps.setInt(5, post.getLocationId());
            ps.setInt(6, post.getCategoryId());
            ps.setInt(7, post.getCategoryId());
            ps.setInt(8, post.getPostId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to delete a post
    public void deletePost(int postId) {
        String query = "DELETE FROM posts WHERE postId = ?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, postId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to get a single post by its ID
    public Post getPost(int postId) {
        String query = "SELECT p.*, l.locationName, c.categoryName, u.name as authorName " +
                "FROM posts p " +
                "JOIN locations l ON p.locationId = l.locationId " +
                "JOIN categories c ON p.categoryId = c.categoryId " +
                "JOIN users u ON p.authorId = u.userId " +
                "WHERE p.postId = ?";
        ;
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
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
                post.setAuthorName(rs.getString("authorName"));
                return post;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Post> getPostsByCategory(int categoryId) {
        List<Post> posts = new ArrayList<>();
        String query = "SELECT * FROM posts WHERE categoryId = ?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
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
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }

    // Method to get all posts
    public List<Post> getAllPosts() {
        List<Post> posts = new ArrayList<>();
        String query = "SELECT p.*, l.locationName, c.categoryName " +
                "FROM posts p " +
                "JOIN locations l ON p.locationId = l.locationId " +
                "JOIN categories c ON p.categoryId = c.categoryId ";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
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
