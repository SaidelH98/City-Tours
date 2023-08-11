package com.techelevator.controller;

import com.techelevator.dao.ItineraryDao;
import com.techelevator.model.Itinerary;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/itinerary")
public class ItineraryController {

    private final ItineraryDao itineraryDao;

    public ItineraryController(ItineraryDao itineraryDao) {
        this.itineraryDao = itineraryDao;
    }

    @GetMapping("/{itineraryId}")
    public Itinerary getItineraryByItineraryId(@PathVariable int itineraryId){
        Itinerary itinerary = itineraryDao.getItineraryByItineraryId(itineraryId);

        if (itinerary == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No itinerary found");
        }else{
            return itinerary;
        }
    }

    @GetMapping("/user/{userId}")
    public List <Itinerary> getItinerariesByUserId(@PathVariable int userId){
        List<Itinerary> itineraryList = itineraryDao.getItinerariesByUserId(userId);

        if (itineraryList == null){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No itineraries found");
        }else{
            return itineraryList;
        }
    }

    @PostMapping()
    @ResponseStatus(HttpStatus.CREATED)
    public void createItinerary(@RequestBody Itinerary newItinerary, Principal principal){
        try{
            String username = principal.getName();
            Itinerary itinerary = itineraryDao.createItinerary(newItinerary, username);
            if(itinerary == null){
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Itinerary failed!");
            }
        }catch(ResponseStatusException ex){
            System.out.println("Something went wrong.");
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Itinerary failed.");
        }

    }

    @PutMapping("/{itineraryId}")
    public void updateItinerary(@Valid @PathVariable int itineraryId, @RequestBody Itinerary updatedItinerary){

            itineraryDao.updateItinerary(itineraryId, updatedItinerary);

    }
}
