package com.techelevator.dao;

import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDetails;

import java.util.List;

public interface ItineraryDetailsDao {

    List<ItineraryDetails> getItineraryDetailsByItineraryId(int itineraryId);
}
