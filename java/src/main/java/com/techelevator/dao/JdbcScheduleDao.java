package com.techelevator.dao;

import com.techelevator.model.Landmark;
import com.techelevator.model.Schedule;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcScheduleDao implements ScheduleDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcScheduleDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Schedule> getAllSchedules() {
        List<Schedule> scheduleList = new ArrayList<>();

        String sql = "SELECT id, schedule.landmark_id, day_of_operation, open_time, close_time, landmarks.landmark_name\n" +
        "FROM schedule\n" +
        "JOIN landmarks\n" +
        "ON schedule.landmark_id = landmarks.landmark_id;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);

        while (result.next()) {
            Schedule schedule = mapRowToScheduleWithName(result);
            scheduleList.add(schedule);
        }
        return scheduleList;
    }

    @Override
    public List<Schedule> getScheduleByLandmarkId(int landmarkId) {
        List<Schedule> scheduleByLandmarkId = new ArrayList<>();

        String sql = "SELECT id, schedule.landmark_id, day_of_operation, open_time, close_time, landmarks.landmark_name\n" +
                "FROM schedule\n" +
                "JOIN landmarks\n" +
                "ON schedule.landmark_id = landmarks.landmark_id\n" +
                "WHERE schedule.landmark_id = ?;";

        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, landmarkId);

            while (result.next()) {
                Schedule schedule = mapRowToScheduleWithName(result);
                scheduleByLandmarkId.add(schedule);
            }
        }catch (Exception ex){
            //TODO Will circle back later
            System.out.println("Something went wrong");
        }

        return scheduleByLandmarkId;
    }

    @Override
    public List<Schedule> getScheduleByDay(String dayOfOperation) {
        List<Schedule> scheduleByDay = new ArrayList<>();

        String sql = "SELECT id, schedule.landmark_id, day_of_operation, open_time, close_time, landmarks.landmark_name\n" +
                "FROM schedule\n" +
                "JOIN landmarks\n" +
                "ON schedule.landmark_id = landmarks.landmark_id\n" +
                "WHERE day_of_operation = ?;";

        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, dayOfOperation);

            while (result.next()) {
                Schedule schedule = mapRowToScheduleWithName(result);
                scheduleByDay.add(schedule);
            }
        }catch (Exception ex){
            //TODO Will circle back later
            System.out.println("Something went wrong");
        }

        return scheduleByDay;
    }

    @Override
    public List<Schedule> getScheduleByTime(int time) {
        List<Schedule> scheduleByTime = new ArrayList<>();

        String sql = "SELECT id, schedule.landmark_id, day_of_operation, open_time, close_time, landmarks.landmark_name\n" +
                "FROM schedule\n" +
                "JOIN landmarks\n" +
                "ON schedule.landmark_id = landmarks.landmark_id\n" +
                "WHERE open_time <= ? AND close_time > ?;";

        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, time, time);

            while (result.next()) {
                Schedule schedule = mapRowToScheduleWithName(result);
                scheduleByTime.add(schedule);
            }
        }catch (Exception ex){
            //TODO Will circle back later
            System.out.println("Something went wrong");
        }

        return scheduleByTime;
    }


    @Override
    public List<Schedule> getScheduleByLandmarkName(String name) {
        List<Schedule> scheduleByLandmarkName= new ArrayList<>();

        String sql = "SELECT id, schedule.landmark_id, day_of_operation, open_time, close_time, landmarks.landmark_name\n" +
                "FROM schedule\n" +
                "JOIN landmarks\n" +
                "ON schedule.landmark_id = landmarks.landmark_id\n" +
                "WHERE landmarks.name ILIKE ?;";

        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql, "%" + name + "%");

            while (result.next()) {
                Schedule schedule = mapRowToScheduleWithName(result);
                scheduleByLandmarkName.add(schedule);
            }
        }catch (Exception ex){
            //TODO Will circle back later
            System.out.println("Something went wrong");
        }

        return scheduleByLandmarkName;
    }

    private Schedule mapRowToSchedule(SqlRowSet rs) {
        Schedule schedule = new Schedule();

        schedule.setId(rs.getInt("id"));
        schedule.setLandmarkId(rs.getInt("landmark_id"));
        schedule.setDayOfOperation(rs.getString("day_of_operation"));
        schedule.setOpenTime(rs.getInt("open_time"));
        schedule.setCloseTime(rs.getInt("close_time"));

        return schedule;
    }

    private Schedule mapRowToScheduleWithName(SqlRowSet rs) {
        Schedule schedule = new Schedule();

        schedule.setId(rs.getInt("id"));
        schedule.setLandmarkId(rs.getInt("landmark_id"));
        schedule.setDayOfOperation(rs.getString("day_of_operation"));
        schedule.setOpenTime(rs.getInt("open_time"));
        schedule.setCloseTime(rs.getInt("close_time"));
        schedule.setName(rs.getString("landmark_name"));

        return schedule;
    }
}
