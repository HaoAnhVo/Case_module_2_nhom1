package org.example.model;

public class Location {
    private int locationId;
    private String locationName;
    private String locationImage;
    private String mapLink;
    private String imgURL;

    public Location() {}

<<<<<<< HEAD
    public Location(int locationId, String locationName, String mapLink, String imgURL) {
=======
    public Location(int locationId, String locationName, String locationImage,String mapLink) {
>>>>>>> main
        this.locationId = locationId;
        this.locationName = locationName;
        this.locationImage = locationImage;
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

<<<<<<< HEAD
    public String getImgURL() { return imgURL; }

    public void setImgURL(String imgURL) { this.imgURL = imgURL; }

=======
    public String getLocationImage() {
        return locationImage;
    }

    public void setLocationImage(String locationImage) {
        this.locationImage = locationImage;
    }
>>>>>>> main
}
