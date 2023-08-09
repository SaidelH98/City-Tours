package com.techelevator.model;

public class City {
    private int cityId;
    private String cityName;
    private String cityDesc;
    private String cityImg;

    public City(int cityId, String cityName, String cityDesc, String cityImg) {
        this.cityId = cityId;
        this.cityName = cityName;
        this.cityDesc = cityDesc;
        this.cityImg = cityImg;
    }

    public City() {

    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getCityDesc() {
        return cityDesc;
    }

    public void setCityDesc(String cityDesc) {
        this.cityDesc = cityDesc;
    }

    public String getCityImg() {
        return cityImg;
    }

    public void setCityImg(String cityImg) {
        this.cityImg = cityImg;
    }

    @Override
    public String toString() {
        return "City{" +
                "cityId=" + cityId +
                ", cityName='" + cityName + '\'' +
                ", cityDesc='" + cityDesc + '\'' +
                ", cityImg='" + cityImg + '\'' +
                '}';
    }
}
