package com.techelevator.controller;

import com.techelevator.dao.CityDao;
import com.techelevator.model.City;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/city")
public class CityController {

    private final CityDao cityDao;

    public CityController(CityDao cityDao) {
        this.cityDao = cityDao;
    }

    @GetMapping()
    public List<City> getCityList(){
        List<City> cityList = cityDao.getCityList();

        if (cityList == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No city found");
        }else{
            return cityList;
        }
    }
}
