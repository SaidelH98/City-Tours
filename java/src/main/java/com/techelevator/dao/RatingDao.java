package com.techelevator.dao;

import com.techelevator.model.Rating;

import java.util.List;

public interface RatingDao {

    int getThumbsUpByLandmarkId(int landmarkId);

    int getThumbsDownByLandmarkId(int landmarkId);

    void thumbsUpLandmarkByUser(int landmarkId, int userId);

    void thumbsDownLandmarkByUser(int landmarkId, int userId);

    void updateRatingTrue(int userId, int landmarkId);

    void updateRatingFalse(int userId, int landmarkId);
}
