package com.techelevator.model;

import java.util.Date;

public class Itinerary {
    private Integer itineraryId;
    private Integer userId;
    private String name;
    private String startingPoint;
    private Date date;

    public Itinerary(int itineraryId, int userId, String name, String startingPoint, Date date) {
        this.itineraryId = itineraryId;
        this.userId = userId;
        this.name = name;
        this.startingPoint = startingPoint;
        this.date = date;
    }

    public Itinerary(){

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    @Override
    public String toString() {
        return "Itinerary{" +
                "itineraryId=" + itineraryId +
                ", userId=" + userId +
                ", name='" + name + '\'' +
                ", startingPoint='" + startingPoint + '\'' +
                ", date=" + date +
                '}';
    }
}
