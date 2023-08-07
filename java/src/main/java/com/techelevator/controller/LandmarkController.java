package com.techelevator.controller;

import com.techelevator.dao.LandmarkDao;
import com.techelevator.model.Landmark;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/landmarks")
public class LandmarkController {

    private final LandmarkDao landmarkDao;

    public LandmarkController(LandmarkDao landmarkDao) {
        this.landmarkDao = landmarkDao;
    }

    @GetMapping()
    public List<Landmark> listAllLandmarks(){
        List<Landmark> landmarkList = landmarkDao.listAllLandmarks();

        if (landmarkList == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No landmark found");
        }else{
            return landmarkList;
        }
    }


}
