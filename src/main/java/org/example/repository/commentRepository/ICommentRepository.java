package org.example.repository.commentRepository;

import org.example.model.Comment;

import java.util.List;

public interface ICommentRepository {
    public void addComment(Comment comment);
    public void updateComment(Comment comment);
    public void deleteComment(int commentId);
    public Comment getComment(int id);
    public List<Comment> getCommentsWithUserAndPost(int postId);
}
