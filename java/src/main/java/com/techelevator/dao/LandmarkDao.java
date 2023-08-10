package com.techelevator.dao;

import com.techelevator.model.Landmark;
import com.techelevator.model.User;

import java.util.List;

public interface LandmarkDao {

    List<Landmark> listAllLandmarks();

    List<Landmark> getLandmarksByName(String name);

    List<Landmark> getLandmarkByCity(int city_id);

    List<Landmark> getLandmarkByCountry(String country);

    List<Landmark> getLandmarkByVenueType(String venueType);

    Landmark getLandmarkById(int landmarkId);

    List<String> getVenueTypeList();
}
