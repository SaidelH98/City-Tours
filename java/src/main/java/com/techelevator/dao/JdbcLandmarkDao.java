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

        String sql = "SELECT landmark_id, name, venue_type, city, country, address, image, description\n" +
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

        String sql = "SELECT landmark_id, name, venue_type, city, country, address, image, description\n" +
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
    public List<Landmark> getLandmarkByCity(String city) {

        List<Landmark> landmarkByCity = new ArrayList<>();

        String sql = "SELECT landmark_id, name, venue_type, city, country, address, image, description\n" +
                "FROM landmarks WHERE city = ?;";
        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, city);

            while (result.next()) {
                Landmark landmark = mapRowToLandmark(result);
                landmarkByCity.add(landmark);
            }
        }catch (Exception ex){
            //TODO Will circle back later
            System.out.println("Something went wrong");
        }

        return landmarkByCity;
    }

    @Override
    public List<Landmark> getLandmarkByCountry(String country) {

        List<Landmark> landmarkByCountry = new ArrayList<>();

        String sql = "SELECT landmark_id, name, venue_type, city, country, address, image, description\n" +
                "FROM landmarks WHERE country = ?;";
        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, country);

            while (result.next()) {
                Landmark landmark = mapRowToLandmark(result);
                landmarkByCountry.add(landmark);
            }
        }catch (Exception ex){
            //TODO Will circle back later
            System.out.println("Something went wrong");
        }

        return landmarkByCountry;
    }

    @Override
    public List<Landmark> getLandmarkByVenueType(String venueType) {
        List<Landmark> landmarkVenues= new ArrayList<>();

        String sql = "SELECT landmark_id, name, venue_type, city, country, address, image, description\n" +
                "FROM landmarks WHERE venue_type = ?;";
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

    @Override
    public Landmark getLandmarkById(int landmarkId) {
        String sql = "SELECT landmark_id, name, venue_type, city, country, address, image, description\n" +
                 "FROM landmarks WHERE landmark_id = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, landmarkId);
        if (result.next()) {
            return mapRowToLandmark(result);
        } else {
            return null;
        }
    }

    @Override
    public List<Landmark>  getCityList() {

        List<Landmark> citylist = new ArrayList<>();

        String sql = "SELECT DISTINCT(city) FROM landmarks";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);

        while (result.next()) {
            Landmark landmark = new Landmark();
            landmark.setCity(result.getString("city"));
            citylist.add(landmark);
        }
        return citylist;
    }

    private Landmark mapRowToLandmark(SqlRowSet rs) {
        Landmark landmark = new Landmark();

        landmark.setLandmarkId(rs.getInt("landmark_id"));
        landmark.setName(rs.getString("name"));
        landmark.setVenueType(rs.getString("venue_type"));
        landmark.setCity(rs.getString("city"));
        landmark.setCountry(rs.getString("country"));
        landmark.setAddress(rs.getString("address"));
        landmark.setImage(rs.getString("image"));
        landmark.setDescription(rs.getString("description"));

        return landmark;
    }
}
