package org.example.repository.tagRepository;

import org.example.model.Post;
import org.example.model.Tag;
import org.example.repository.BaseRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TagRepository implements ITagRepository{
    private static final String INSERT_TAG = "INSERT INTO tags (tagName) VALUES (?)";
    private static final String UPDATE_TAG = "UPDATE tags SET tagName = ? WHERE tagId = ?";
    private static final String SELECT_ALL_TAGS = "select * from tags";
    private static final String SELECT_TAG_BY_ID = "select * from tags where tagId = ?";
    private static final String DELETE_TAG = "DELETE FROM tags WHERE tagId = ?";
    private static final String SELECT_POSTS_BY_TAGID = "SELECT * FROM posts p join post_tag pt ON pt.postId = p.postId join tags t ON t.tagId = pt.tagId WHERE t.tagId = ?";

    @Override
    public List<Tag> getAllTags() {
        List<Tag> tags = new ArrayList<Tag>();
        try (Connection connection = BaseRepository.getConnection();
             Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery(SELECT_ALL_TAGS);
            while (resultSet.next()) {
                int id = resultSet.getInt("tagId");
                String name = resultSet.getString("tagName");
                tags.add(new Tag(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tags;
    }

    @Override
    public List<Post> getPostsByTag(int tagId) {
        List<Post> posts = new ArrayList<>();
        try (
                Connection connection = BaseRepository.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_POSTS_BY_TAGID)
                ) {
            preparedStatement.setInt(1, tagId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Post post = new Post();
                post.setPostId(resultSet.getInt("postId"));
                post.setTitle(resultSet.getString("title"));
                post.setContent(resultSet.getString("content"));
                post.setImageUrl(resultSet.getString("imageUrl"));
                post.setCreatedAt(resultSet.getDate("createdAt"));
                post.setUpdatedAt(resultSet.getDate("updatedAt"));
                post.setLocationId(resultSet.getInt("locationId"));
                post.setCategoryId(resultSet.getInt("categoryId"));
                post.setAuthorId(resultSet.getInt("authorId"));

                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }

    @Override
    public Tag getTag(int tagId) {
        Tag tag = null;
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TAG_BY_ID)) {
            preparedStatement.setInt(1, tagId);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String tagName = resultSet.getString("tagName");
                tag = new Tag(tagId, tagName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tag;
    }

    @Override
    public void addTag(Tag tag) {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_TAG)) {
            preparedStatement.setString(1, tag.getTagName());
            preparedStatement.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateTag(Tag tag) {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_TAG)
        ) {
            preparedStatement.setString(1, tag.getTagName());
            preparedStatement.setInt(2, tag.getTagId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteTag(int tagId) {
        try (
                Connection connection = BaseRepository.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(DELETE_TAG)
                ) {
            preparedStatement.setInt(1, tagId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
