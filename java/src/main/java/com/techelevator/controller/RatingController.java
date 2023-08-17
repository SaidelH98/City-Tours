package com.techelevator.controller;

import com.techelevator.dao.RatingDao;
import com.techelevator.model.Rating;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
@RequestMapping("/rating")
public class RatingController {

    private final RatingDao ratingDao;

    public RatingController(RatingDao ratingDao) {
        this.ratingDao = ratingDao;
    }

    @GetMapping("/thumbsUp/{landmarkId}")
    public int getThumbsUpByLandmarkId(@PathVariable int landmarkId) {
        return ratingDao.getThumbsUpByLandmarkId(landmarkId);
    }

    @GetMapping("/thumbsDown/{landmarkId}")
    public int getThumbsDownByLandmarkId(@PathVariable int landmarkId) {
        return ratingDao.getThumbsDownByLandmarkId(landmarkId);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping("thumbsUp/{userId}/{landmarkId}")
    public void thumbsUpLandmarkByUser(@PathVariable int userId, @PathVariable int landmarkId) {
        ratingDao.thumbsUpLandmarkByUser(userId, landmarkId);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping("thumbsDown/{userId}/{landmarkId}")
    public void thumbsDownLandmarkByUser(@PathVariable int userId, @PathVariable int landmarkId) {
        ratingDao.thumbsDownLandmarkByUser(userId, landmarkId);
    }
}
