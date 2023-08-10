package com.techelevator.dao;

import com.techelevator.model.City;
import com.techelevator.model.Landmark;
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

        String sql = "SELECT city_id, city_name, city_desc, city_img FROM city";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);

        while (result.next()) {
            City city = mapRowToCity(result);
            citylist.add(city);
        }
        return citylist;
    }

    private City mapRowToCity(SqlRowSet rs) {
        City city = new City();

        city.setCityId(rs.getInt("city_id"));
        city.setCityName(rs.getString("city_name"));
        city.setCityDesc(rs.getString("city_desc"));
        city.setCityImg(rs.getString("city_img"));

        return city;
    }



}
