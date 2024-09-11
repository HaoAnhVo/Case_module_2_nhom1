package org.example.service.tagService;

import org.example.model.Post;
import org.example.model.Tag;
import org.example.repository.tagRepository.ITagRepository;
import org.example.repository.tagRepository.TagRepository;

import java.util.List;

public class TagService implements ITagService {
    private ITagRepository tagRepository = new TagRepository();
    @Override
    public List<Tag> getAllTags() {
        return tagRepository.getAllTags();
    }

    @Override
    public List<Post> getPostsByTag(int tagId) {
        return tagRepository.getPostsByTag(tagId);
    }

    @Override
    public Tag getTag(int tagId) {
        return tagRepository.getTag(tagId);
    }

    @Override
    public void addTag(Tag tag) {
        tagRepository.addTag(tag);
    }

    @Override
    public void updateTag(Tag tag) {
        tagRepository.updateTag(tag);
    }

    @Override
    public void deleteTag(int tagId) {
        tagRepository.deleteTag(tagId);
    }
}
