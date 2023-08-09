package com.techelevator.model;

public class Landmark {
    private int landmarkId;
    private String name;
    private String venueType;
    private int city_id;
    private String country;
    private String image;
    private String description;
    private String address;

    public Landmark(int landmarkId, String name, String venueType, int city_id, String country, String image, String description, String address) {
        this.landmarkId = landmarkId;
        this.name = name;
        this.venueType = venueType;
        this.city_id = city_id;
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
        return city_id;
    }

    public void setCityId(int city_id) {
        this.city_id = city_id;
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
                ", cityId='" + city_id + '\'' +
                ", country='" + country + '\'' +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}

