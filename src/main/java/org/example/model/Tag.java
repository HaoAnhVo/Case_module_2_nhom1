package org.example.model;

public class Tag {
    private int tagId;
    private String tagName;

    public Tag() {}

    public Tag(String tagName) {
        this.tagName = tagName;
    }

    public Tag(int tagId, String tagName) {
        this.tagId = tagId;
        this.tagName = tagName;
    }

    public int getTagId() {
        return tagId;
    }

    public void setTagId(int tagId) {
        this.tagId = tagId;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }
}
