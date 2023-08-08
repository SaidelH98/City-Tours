package com.techelevator.controller;

import com.techelevator.dao.ScheduleDao;
import com.techelevator.model.Schedule;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/schedule")
public class ScheduleController {

    private final ScheduleDao scheduleDao;

    public ScheduleController(ScheduleDao scheduleDao) {
        this.scheduleDao = scheduleDao;
    }

    @GetMapping()
    public List<Schedule> getAllSchedules(){
        List<Schedule> scheduleList = scheduleDao.getAllSchedules();

        if (scheduleList == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No schedule found");
        }else{
            return scheduleList;
        }
    }

    @GetMapping("/{landmarkId}")
    public List<Schedule> getScheduleByLandmarkId(@PathVariable int landmarkId){
        List<Schedule> scheduleByLandmarkId = scheduleDao.getScheduleByLandmarkId(landmarkId);

        if (scheduleByLandmarkId == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No schedule found");
        }else{
            return scheduleByLandmarkId;
        }
    }

    @GetMapping("/day/{dayOfOperation}")
    public List<Schedule> getScheduleByDay(@PathVariable String dayOfOperation){
        List<Schedule> scheduleByDay = scheduleDao.getScheduleByDay(dayOfOperation);

        if (scheduleByDay == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No schedule found");
        }else{
            return scheduleByDay;
        }
    }

    @GetMapping("/time/{time}")
    public List<Schedule> getScheduleByOpenTime(@PathVariable int time){
        List<Schedule> scheduleByTime = scheduleDao.getScheduleByTime(time);

        if (scheduleByTime == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No schedule found");
        }else{
            return scheduleByTime;
        }
    }

    @GetMapping("/name/{name}")
    public List<Schedule> getScheduleByLandmarkName(@PathVariable String name){
        List<Schedule> scheduleByLandmarkName = scheduleDao.getScheduleByLandmarkName(name);

        if (scheduleByLandmarkName == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No schedule found");
        }else{
            return scheduleByLandmarkName;
        }
    }
}
