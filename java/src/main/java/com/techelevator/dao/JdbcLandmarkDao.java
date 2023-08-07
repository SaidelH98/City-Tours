package com.techelevator.dao;

import com.techelevator.model.Landmark;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class JdbcLandmarkDao implements LandmarkDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcLandmarkDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Landmark> listAllLandmarks() {
        return null;
    }

    @Override
    public Landmark getLandmarkByName(String name) {
        return null;
    }

    @Override
    public Landmark getLandmarkByDay(String dayOfOperation) {
        return null;
    }

    @Override
    public Landmark getLandmarkByVenueType(String venueType) {
        return null;
    }
}
