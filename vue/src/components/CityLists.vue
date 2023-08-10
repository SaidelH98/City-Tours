<template>
  <div>
      <h1>
         
      </h1>
      <div>
    

        <div class="city-list">
            <div v-for="city in cities" v-bind:key="city.cityId">
                <div class="city">
                    <div class="cityName"> {{city.city_name}} </div>
                    <div class="cityDesc"> {{city.city_desc}} </div>
                    <div class="cityImg"> <img v-bind:src=city.city_img alt=""></div>
                </div>
            </div>        
     </div>

      </div>
  </div>
</template>

<script>
import CityService from '../services/CityService'

export default {
    name : 'city-lists',
    data() {
        return {
            cities: [

            ],
            
        }
    },
    created(){
        CityService.listAllCities().then((response) =>{

            this.landmarks = response.data;
            console.log(response.data);
        })
    }
    


}
</script>

<style>


    
</style>