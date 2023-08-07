package com.techelevator.dao;

import com.techelevator.model.Landmark;
import com.techelevator.model.User;

import java.util.List;

public interface LandmarkDao {

    List<Landmark> listAllLandmarks();

    List<Landmark> getLandmarksByName(String name);

    List<Landmark> getLandmarkByDay(String dayOfOperation);

    List<Landmark> getLandmarkByVenueType(String venueType);
}
