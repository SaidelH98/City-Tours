package com.techelevator.dao;

import com.techelevator.model.City;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcCityDao implements CityDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcCityDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    @Override
    public List<City>  getCityList() {

        List<City> citylist = new ArrayList<>();

        String sql = "SELECT city_name FROM city";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);

        while (result.next()) {
            City city = new City();
            city.setCityName(result.getString("city_name"));
            citylist.add(city);
        }
        return citylist;
    }
}
