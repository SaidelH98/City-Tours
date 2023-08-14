package com.techelevator.dao;

import com.techelevator.model.Itinerary;
import com.techelevator.model.Landmark;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcItineraryDao implements ItineraryDao{

    private final JdbcTemplate jdbcTemplate;
    private final UserDao userDao;

    public JdbcItineraryDao(JdbcTemplate jdbcTemplate, UserDao userDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.userDao = userDao;
    }

    @Override
    public Itinerary getItineraryByItineraryId(int itineraryId){
        Itinerary itinerary = null;

        String sql = "SELECT itinerary_id, user_id, name, starting_point, date\n" +
                "FROM itinerary\n" +
                "WHERE itinerary_id = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, itineraryId);
        try {
            if (result.next()) {
                itinerary = mapRowToItinerary(result);
            }
        }catch(Exception ex){
            System.out.println("Something went wrong.");
        }
            return itinerary;

    }

    @Override
    public List<Itinerary> getItinerariesByUserId(int userId) {
        List<Itinerary> itinerariesByUserId = new ArrayList<>();
        String sql = "SELECT itinerary_id, user_id, name, starting_point, date\n" +
        "FROM itinerary\n" +
        "WHERE user_id = ?;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, userId);

        while (result.next()) {
            Itinerary itinerary = mapRowToItinerary(result);
            itinerariesByUserId.add(itinerary);
        }
        return itinerariesByUserId;
    }

    @Override
    public Itinerary createItinerary(Itinerary itinerary, String username) {
        Itinerary newItinerary = null;
        int userId = userDao.findIdByUsername(username);
        String sql = "INSERT INTO itinerary (user_id, name, starting_point, date) VALUES(?, ?, ?, ?) RETURNING itinerary_id;";

        try{
            int newItineraryId = jdbcTemplate.queryForObject(sql, int.class, userId, itinerary.getName(), itinerary.getStartingPoint(), itinerary.getDate());
            newItinerary = getItineraryByItineraryId(newItineraryId);
        }catch(Exception ex){
            System.out.println("Something wrong.");
        }
        return newItinerary;
    }

    @Override
    public void linkItineraryLandmark(int itineraryId, int landmarkId) {

        String sql = "INSERT INTO itinerary_landmarks(itinerary_id, landmark_id) VALUES(?,?)";

        try{
            jdbcTemplate.update(sql, itineraryId, landmarkId);
        } catch(Exception ex){
            System.out.println("Something went wrong.");
        }

    }

    public Itinerary createdItinerary(Itinerary itinerary, String username, int landmarkId) {

        Itinerary newItinerary = createItinerary(itinerary, username);
        linkItineraryLandmark(newItinerary.getItineraryId(), landmarkId);
        return newItinerary;
    }

    @Override
    public void deleteItinerary(int itineraryId) {
        String sql = "DELETE FROM itinerary\n" +
                "WHERE itinerary_id = ?;";
        jdbcTemplate.update(sql, itineraryId);
    }

    @Override
    public void updateItinerary(int itineraryId, Itinerary itinerary) {
        String sql = "UPDATE itinerary SET name = ?, starting_point = ?, date = ?\n" +
                "WHERE itinerary_id = ?;";


        jdbcTemplate.update(sql, itinerary.getName(), itinerary.getStartingPoint(), itinerary.getDate(), itineraryId);
    }

    public void updatedItinerary(Itinerary itinerary, String username, int landmarkId) {

        updateItinerary(itinerary.getItineraryId(), itinerary);
        linkItineraryLandmark(itinerary.getItineraryId(), landmarkId);

    }

    private Itinerary mapRowToItinerary(SqlRowSet rs) {
        Itinerary itinerary = new Itinerary();

        itinerary.setItineraryId(rs.getInt("itinerary_id"));
        itinerary.setUserId(rs.getInt("user_id"));
        itinerary.setName(rs.getString("name"));
        itinerary.setStartingPoint(rs.getString("starting_point"));
        itinerary.setDate(rs.getDate("date"));

        return itinerary;
    }
}
