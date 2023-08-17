package com.techelevator.dao;

import com.techelevator.model.Rating;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcRatingDao implements RatingDao{

    private final JdbcTemplate jdbcTemplate;


    public JdbcRatingDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;

    }



    @Override
    public int getThumbsUpByLandmarkId(int landmarkId) {
        int thumbsUp = 0;

        String sql = "SELECT COUNT (thumbs_up) as count\n" +
                "from rating\n" +
                "where landmark_id = ? AND thumbs_up = 'true';";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, landmarkId);
        if (result.next()) {
            thumbsUp = result.getInt("count");
        }

        return thumbsUp;
    }

    @Override
    public int getThumbsDownByLandmarkId(int landmarkId) {
        int thumbsDown = 0;

        String sql = "SELECT COUNT (thumbs_up) as count\n" +
                "from rating\n" +
                "where landmark_id = ? AND thumbs_up = 'false';";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, landmarkId);
        if (result.next()) {
            thumbsDown = result.getInt("count");
        }

        return thumbsDown;
    }

    @Override
    public void thumbsUpLandmarkByUser(int userId, int landmarkId) {

        String sql = "INSERT INTO rating (user_id, landmark_id, thumbs_up) VALUES (?, ?, true);";

        try{
            jdbcTemplate.update(sql, userId, landmarkId);
        }catch(Exception ex){
            System.out.println("Something went wrong.");
        }
    }

    @Override
    public void thumbsDownLandmarkByUser(int userId, int landmarkId) {

        String sql = "INSERT INTO rating (user_id, landmark_id, thumbs_up) VALUES (?, ?, false);";

        try{
            jdbcTemplate.update(sql, userId, landmarkId);
        }catch(Exception ex){
            System.out.println("Something went wrong.");
        }
    }

    @Override
    public void updateRatingTrue(int userId, int landmarkId){

        String sql = "UPDATE rating\n" +
                "set thumbs_up = true\n" +
                "WHERE user_id = ? AND landmark_id = ?;";

        try{
            jdbcTemplate.update(sql, userId, landmarkId);
        }catch(Exception ex){
            System.out.println("Something went wrong.");
        }
    }

    @Override
    public void updateRatingFalse(int userId, int landmarkId){

        String sql = "UPDATE rating\n" +
                "set thumbs_up = false\n" +
                "WHERE user_id = ? AND landmark_id = ?;";

        try{
            jdbcTemplate.update(sql, userId, landmarkId);
        }catch(Exception ex){
            System.out.println("Something went wrong.");
        }
    }
}
