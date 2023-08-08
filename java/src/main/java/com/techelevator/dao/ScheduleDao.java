package com.techelevator.dao;

import com.techelevator.model.Landmark;
import com.techelevator.model.Schedule;

import java.util.List;

public interface ScheduleDao {

    List<Schedule> getAllSchedules();

    List<Schedule> getScheduleByLandmarkId(int landmarkId);

    List<Schedule> getScheduleByDay(String dayOfOperation);

    List<Schedule> getScheduleByTime(int time);


    List<Schedule> getScheduleByLandmarkName(String name);

}
