package org.example.repository.commentRepository;

import org.example.model.Comment;
import org.example.repository.BaseRepository;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class CommentRepository implements ICommentRepository{
    public void addComment(Comment comment) {
        String query = "INSERT INTO comments(content, createdAt, userId, postId) VALUES (?, ?, ?, ?)";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, comment.getContent());
            ps.setDate(2, new java.sql.Date(comment.getCreatedAt().getTime()));
            ps.setInt(3, comment.getUserId());
            ps.setInt(4, comment.getPostId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateComment(Comment comment) {
        String query = "UPDATE comments SET content = ?, createdAt = ? WHERE commentId = ?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, comment.getContent());
            ps.setDate(2, new java.sql.Date(comment.getCreatedAt().getTime()));
            ps.setInt(3, comment.getCommentId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteComment(int commentId) {
        String query = "DELETE FROM comments WHERE commentId = ?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, commentId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Comment getComment(int commentId) {
        String query = "SELECT * FROM comments WHERE commentId = ?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, commentId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Comment comment = new Comment();
                comment.setCommentId(rs.getInt("commentId"));
                comment.setContent(rs.getString("content"));
                comment.setCreatedAt(rs.getDate("createdAt"));
                comment.setUserId(rs.getInt("userId"));
                comment.setPostId(rs.getInt("postId"));
                return comment;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Comment> getCommentsWithUserAndPost(int postId) {
        List<Comment> comments = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String query = "SELECT c.*, u.username FROM comments c JOIN users u ON c.userId = u.userId WHERE c.postId = ?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Comment comment = new Comment();
                comment.setCommentId(rs.getInt("commentId"));
                comment.setContent(rs.getString("content"));
                Date createdAt = rs.getDate("createdAt");
                if(createdAt != null) {
                    String formattedCreatedAt = dateFormat.format(createdAt);
                    comment.setFormattedCreatedAt(formattedCreatedAt);
                }
                comment.setUserId(rs.getInt("userId"));
                comment.setPostId(rs.getInt("postId"));
                comment.setUsername(rs.getString("username"));
                comments.add(comment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }
}
