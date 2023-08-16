package com.techelevator.dao;

import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDetails;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcItineraryDetailsDao implements ItineraryDetailsDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcItineraryDetailsDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<ItineraryDetails> getItineraryDetailsByItineraryId(int itineraryId) {
        List<ItineraryDetails> itinerariesByUserId = new ArrayList<>();
        String sql = "SELECT itinerary.itinerary_id, itinerary.user_id, itinerary.name,itinerary.starting_point, itinerary.date, landmarks.landmark_id, landmarks.landmark_name, landmarks.country, city.city_name, landmarks.venue_type, landmarks.address\n" +
                "FROM itinerary\n" +
                "JOIN itinerary_landmarks\n" +
                "ON itinerary_landmarks.itinerary_id = itinerary.itinerary_id\n" +
                "JOIN landmarks\n" +
                "ON landmarks.landmark_id = itinerary_landmarks.landmark_id\n" +
                "JOIN city\n" +
                "ON city.city_id = landmarks.city_id\n" +
                "WHERE itinerary.itinerary_id = ?";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, itineraryId);

        while (result.next()) {
            ItineraryDetails itineraryDetails = mapRowToItineraryDetails(result);
            itinerariesByUserId.add(itineraryDetails);
        }
        return itinerariesByUserId;
    }

    private ItineraryDetails mapRowToItineraryDetails(SqlRowSet rs) {
        ItineraryDetails itineraryDetails = new ItineraryDetails();

        itineraryDetails.setItineraryId(rs.getInt("itinerary_id"));
        itineraryDetails.setUserId(rs.getInt("user_id"));
        itineraryDetails.setLandmarkId(rs.getInt("landmark_id"));
        itineraryDetails.setItineraryName(rs.getString("name"));
        itineraryDetails.setStartingPoint(rs.getString("starting_point"));
        itineraryDetails.setDate(rs.getDate("date"));
        itineraryDetails.setLandmarkName(rs.getString("landmark_name"));
        itineraryDetails.setCountry(rs.getString("country"));
        itineraryDetails.setCityName(rs.getString("city_name"));
        itineraryDetails.setVenueType(rs.getString("venue_type"));
        itineraryDetails.setAddress(rs.getString("address"));

        return itineraryDetails;
    }
}
