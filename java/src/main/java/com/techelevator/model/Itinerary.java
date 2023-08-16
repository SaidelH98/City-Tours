package com.techelevator.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.time.LocalDate;
import java.util.Date;

public class Itinerary {
    private Integer itineraryId;
    private Integer userId;
    private String name;
    private String startingPoint;
    @JsonFormat(pattern="yyyy-MM-dd")
    private LocalDate date;

    public Itinerary(int itineraryId, int userId, String name, String startingPoint, LocalDate date) {
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

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
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
