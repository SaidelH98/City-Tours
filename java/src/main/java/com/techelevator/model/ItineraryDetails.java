package com.techelevator.model;

import java.util.Date;

public class ItineraryDetails {
    private int itineraryId;
    private int userId;
    private String itineraryName;
    private String startingPoint;
    private Date date;
    private String LandmarkName;
    private String country;
    private String cityName;
    private String venueType;
    private String address;

    public ItineraryDetails() {
    }

    public ItineraryDetails(int itineraryId, int userId, String itineraryName, String startingPoint, Date date, String landmarkName, String country, String city_name, String venueType, String address) {
        this.itineraryId = itineraryId;
        this.userId = userId;
        this.itineraryName = itineraryName;
        this.startingPoint = startingPoint;
        this.date = date;
        LandmarkName = landmarkName;
        this.country = country;
        this.cityName = city_name;
        this.venueType = venueType;
        this.address = address;
    }

    public int getItineraryId() {
        return itineraryId;
    }

    public void setItineraryId(int itineraryId) {
        this.itineraryId = itineraryId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getItineraryName() {
        return itineraryName;
    }

    public void setItineraryName(String itineraryName) {
        this.itineraryName = itineraryName;
    }

    public String getStartingPoint() {
        return startingPoint;
    }

    public void setStartingPoint(String startingPoint) {
        this.startingPoint = startingPoint;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLandmarkName() {
        return LandmarkName;
    }

    public void setLandmarkName(String landmarkName) {
        LandmarkName = landmarkName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String city_name) {
        this.cityName = city_name;
    }

    public String getVenueType() {
        return venueType;
    }

    public void setVenueType(String venueType) {
        this.venueType = venueType;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "ItineraryDetails{" +
                "itineraryId=" + itineraryId +
                ", userId=" + userId +
                ", itineraryName='" + itineraryName + '\'' +
                ", startingPoint='" + startingPoint + '\'' +
                ", date=" + date +
                ", LandmarkName='" + LandmarkName + '\'' +
                ", country='" + country + '\'' +
                ", cityName='" + cityName + '\'' +
                ", venueType='" + venueType + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
