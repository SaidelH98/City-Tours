package com.techelevator.dao;

import com.techelevator.model.Landmark;
import com.techelevator.model.User;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Component
public class JdbcLandmarkDao implements LandmarkDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcLandmarkDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Landmark> listAllLandmarks() {
        List<Landmark> landmarkList = new ArrayList<>();

        String sql = "SELECT landmark_id, name, venue_type, day_of_operation, image, description\n" +
                "FROM landmarks;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);

        while (result.next()) {
            Landmark landmark = mapRowToLandmark(result);
            landmarkList.add(landmark);
        }
        return landmarkList;
    }

    @Override
    public List<Landmark> getLandmarksByName(String name) {
        List<Landmark> landmarkNames = new ArrayList<>();

        String sql = "SELECT landmark_id, name, venue_type, day_of_operation, image, description\n" +
                "FROM landmarks WHERE name ILIKE ?";
        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, "%" + name + "%");

            while (result.next()) {
                Landmark landmark = mapRowToLandmark(result);
                landmarkNames.add(landmark);
            }
        }catch (Exception ex){
            //TODO Will circle back later
            System.out.println("Something went wrong");
        }

        return landmarkNames;
    }

    @Override
    public List<Landmark> getLandmarkByDay(String dayOfOperation) {

        List<Landmark> landmarkDays = new ArrayList<>();

        String sql = "SELECT landmark_id, name, venue_type, day_of_operation, image, description\n" +
                "FROM landmarks WHERE day_of_operation = ?;";
        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, dayOfOperation);

            while (result.next()) {
                Landmark landmark = mapRowToLandmark(result);
                landmarkDays.add(landmark);
            }
        }catch (Exception ex){
            //TODO Will circle back later
            System.out.println("Something went wrong");
        }

        return landmarkDays;
    }

    @Override
    public List<Landmark> getLandmarkByVenueType(String venueType) {
        List<Landmark> landmarkVenues= new ArrayList<>();

        String sql = "SELECT landmark_id, name, venue_type, day_of_operation, image, description\n" +
                "FROM landmarks WHERE venue = ?;";
        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, venueType);

            while (result.next()) {
                Landmark landmark = mapRowToLandmark(result);
                landmarkVenues.add(landmark);
            }
        }catch (Exception ex){
            //TODO Will circle back later
            System.out.println("Something went wrong");
        }

        return landmarkVenues;
    }

    private Landmark mapRowToLandmark(SqlRowSet rs) {
        Landmark landmark = new Landmark();

        landmark.setLandmarkId(rs.getInt("landmark_id"));
        landmark.setName(rs.getString("name"));
        landmark.setVenueType(rs.getString("venue_type"));
        landmark.setDayOfOperation(rs.getString("day_of_operation"));
        landmark.setImage(rs.getString("image"));
        landmark.setDescription(rs.getString("description"));

        return landmark;
    }
}
