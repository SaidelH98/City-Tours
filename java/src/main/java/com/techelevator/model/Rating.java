package com.techelevator.model;

public class Rating {
    private int userId;
    private int landmarkId;
    private boolean thumbsUp;

    public Rating(int userId, int landmarkId, boolean thumbsUp) {
        this.userId = userId;
        this.landmarkId = landmarkId;
        this.thumbsUp = thumbsUp;
    }

    public Rating(){

    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getLandmarkId() {
        return landmarkId;
    }

    public void setLandmarkId(int landmarkId) {
        this.landmarkId = landmarkId;
    }

    public boolean isThumbsUp() {
        return thumbsUp;
    }

    public void setThumbsUp(boolean thumbsUp) {
        this.thumbsUp = thumbsUp;
    }

    @Override
    public String toString() {
        return "Rating{" +
                "userId=" + userId +
                ", landmarkId=" + landmarkId +
                ", thumbsUp=" + thumbsUp +
                '}';
    }
}
