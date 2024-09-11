package org.example.repository.tagRepository;

import org.example.model.Post;
import org.example.model.Tag;

import java.util.List;

public interface ITagRepository {
    public List<Tag> getAllTags();
    public List<Post> getPostsByTag(int tagId);
    public Tag getTag(int tagId);
    public void addTag(Tag tag);
    public void updateTag(Tag tag);
    public void deleteTag(int tagId);
}
