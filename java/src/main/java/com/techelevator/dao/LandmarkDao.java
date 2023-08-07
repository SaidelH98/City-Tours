package com.techelevator.dao;

import com.techelevator.model.Landmark;
import com.techelevator.model.User;

import java.util.List;

public interface LandmarkDao {

    List<Landmark> listAllLandmarks();

    Landmark getLandmarkByName(String name);

    Landmark getLandmarkByDay(String dayOfOperation);

    Landmark getLandmarkByVenueType(String venueType);
}
