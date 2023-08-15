package com.techelevator.controller;

import com.techelevator.dao.ItineraryDetailsDao;
import com.techelevator.model.ItineraryDetails;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/itinerary-details")
public class ItineraryDetailsController {
    private final ItineraryDetailsDao itineraryDetailsDao;

    public ItineraryDetailsController(ItineraryDetailsDao itineraryDetailsDao) {
        this.itineraryDetailsDao = itineraryDetailsDao;
    }

    @GetMapping("/{itineraryId}")
    public List<ItineraryDetails> getItineraryDetailsByItineraryId(@PathVariable int itineraryId){
        List<ItineraryDetails> itineraryDetailsList = itineraryDetailsDao.getItineraryDetailsByItineraryId(itineraryId);
        if (itineraryDetailsList  == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No itineraries found");
        }else{
            return itineraryDetailsList ;
        }
    }
    
}
