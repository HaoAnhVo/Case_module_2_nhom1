package org.example.service.commentService;

import org.example.model.Comment;
import org.example.repository.commentRepository.CommentRepository;
import org.example.repository.commentRepository.ICommentRepository;

import java.util.List;

public class CommentService implements ICommentService {
    ICommentRepository iCommentRepository = new CommentRepository();

    @Override
    public void addComment(Comment comment) {
        iCommentRepository.addComment(comment);
    }

    @Override
    public void updateComment(Comment comment) {
        iCommentRepository.updateComment(comment);
    }

    @Override
    public void deleteComment(int commentId) {
        iCommentRepository.deleteComment(commentId);
    }

    @Override
    public Comment getComment(int id) {
        return iCommentRepository.getComment(id);
    }

    @Override
    public List<Comment> getCommentsWithUserAndPost(int postId) {
        return iCommentRepository.getCommentsWithUserAndPost(postId);
    }
}
