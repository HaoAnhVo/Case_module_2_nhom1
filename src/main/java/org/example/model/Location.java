package org.example.model;

public class Location {
    private int locationId;
    private String locationName;
    private String mapLink;
    private String imgURL;

    public Location() {}

    public Location(int locationId, String locationName, String mapLink, String imgURL) {
        this.locationId = locationId;
        this.locationName = locationName;
        this.mapLink = mapLink;
        this.imgURL = imgURL;
    }

    public Location(String locationName, String mapLink, String imgURL) {
        this.locationName = locationName;
        this.mapLink = mapLink;
        this.imgURL = imgURL;
    }

    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    public String getLocationName() {
        return locationName;
    }

    public void setLocationName(String locationName) {
        this.locationName = locationName;
    }

    public String getMapLink() {
        return mapLink;
    }

    public void setMapLink(String mapLink) {
        this.mapLink = mapLink;
    }

    public String getImgURL() { return imgURL; }

    public void setImgURL(String imgURL) { this.imgURL = imgURL; }

}
