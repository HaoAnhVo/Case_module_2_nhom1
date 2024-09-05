package org.example.model;

public class Location {
    private int locationId;
    private String locationName;
    private String locationImage;
    private String mapLink;

    public Location() {}

    public Location(int locationId, String locationName, String locationImage,String mapLink) {
        this.locationId = locationId;
        this.locationName = locationName;
        this.locationImage = locationImage;
        this.mapLink = mapLink;
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

    public String getLocationImage() {
        return locationImage;
    }

    public void setLocationImage(String locationImage) {
        this.locationImage = locationImage;
    }
}
