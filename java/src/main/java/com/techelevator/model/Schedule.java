package com.techelevator.model;

public class Schedule {
    private int id;
    private int landmarkId;
    private String dayOfOperation;
    private int openTime;
    private int closeTime;
    private String name;

    public Schedule(int id, int landmarkId, String dayOfOperation, int openTime, int closeTime) {
        this.id = id;
        this.landmarkId = landmarkId;
        this.dayOfOperation = dayOfOperation;
        this.openTime = openTime;
        this.closeTime = closeTime;
    }

    public Schedule(){

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLandmarkId() {
        return landmarkId;
    }

    public void setLandmarkId(int landmarkId) {
        this.landmarkId = landmarkId;
    }

    public String getDayOfOperation() {
        return dayOfOperation;
    }

    public void setDayOfOperation(String dayOfOperation) {
        this.dayOfOperation = dayOfOperation;
    }

    public int getOpenTime() {
        return openTime;
    }

    public void setOpenTime(int openTime) {
        this.openTime = openTime;
    }

    public int getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(int closeTime) {
        this.closeTime = closeTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Schedule{" +
                "id=" + id +
                ", landmarkId=" + landmarkId +
                ", dayOfOperation='" + dayOfOperation + '\'' +
                ", openTime='" + openTime + '\'' +
                ", closeTime='" + closeTime + '\'' +
                '}';
    }
}
