package com.techelevator.model;

public class Landmark {
    private int landmarkId;
    private String name;
    private String venueType;
    private int cityId;
    private String country;
    private String image;
    private String description;
    private String address;

    public Landmark(int landmarkId, String name, String venueType, int cityId, String country, String image, String description, String address) {
        this.landmarkId = landmarkId;
        this.name = name;
        this.venueType = venueType;
        this.cityId = cityId;
        this.country = country;
        this.image = image;
        this.description = description;
        this.address = address;
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

    public void setVenueType(String venueType) {
        this.venueType = venueType;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Landmark{" +
                "landmarkId=" + landmarkId +
                ", name='" + name + '\'' +
                ", venueType='" + venueType + '\'' +
                ", cityId='" + cityId + '\'' +
                ", country='" + country + '\'' +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}

