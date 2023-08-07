package com.techelevator.model;

public class Landmark {
    private int landmarkId;
    private String name;
    private String venueType;
    private String dayOfOperation;
    private String image;
    private String description;

    public Landmark(int landmarkId, String name, String venueType, String dayOfOperation, String image, String description) {
        this.landmarkId = landmarkId;
        this.name = name;
        this.venueType = venueType;
        this.dayOfOperation = dayOfOperation;
        this.image = image;
        this.description = description;

    }

    public Landmark() {

    }

    public int getLandmarkId() {
        return landmarkId;
    }

    public void setLandmarkId(int landmarkId) {
        this.landmarkId = landmarkId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVenueType() {
        return venueType;
    }

    public void setDayOfOperation(String dayOfOperation) {
        this.dayOfOperation = dayOfOperation;
    }

    public String getDayOfOperation() {
        return dayOfOperation;
    }

    public void setVenueType(String venueType) {
        this.venueType = venueType;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Landmark{" +
                "landmarkId=" + landmarkId +
                ", name='" + name + '\'' +
                ", venueType='" + venueType + '\'' +
                ", dayOfOperation='" + dayOfOperation + '\'' +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}

