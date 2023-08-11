package com.techelevator.dao;

import com.techelevator.model.Itinerary;

import java.util.List;

public interface ItineraryDao {

    List<Itinerary> getItinerariesByUserId(int userId);

    Itinerary createItinerary(Itinerary itinerary, String username);

    void deleteItinerary(int itineraryId);

    void updateItinerary(int itineraryId, Itinerary itinerary);

    Itinerary getItineraryByItineraryId(int itineraryId);


}
