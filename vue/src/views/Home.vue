<template>
  <div class="home">
    <header class="header">
       <h1>WELCOME TO CITY TOURS</h1>
    </header>

    <main class="main">

      <city-lists />

      <div class="city-card">
        <router-link v-bind:to="{ name: 'rome', params:{cityId:1} }">
        <div class="city-image">
          <div class="landmarkImage"> <img v-bind:src=cities[0].cityImg alt="">  </div>
        </div>
        <div class="city-info">
          <div class="city-name"> {{cities[0].cityName}}</div>
          <div class="city-description">
            {{cities[0].cityDesc}}
          </div>
        </div>
        </router-link>
      </div>

     <br>
     <br>


      <div class="city-card">
        <router-link v-bind:to="{ name: 'barcelona', params:{cityId:2} }">
        <div class="city-image">
          <div class="landmarkImage"> <img v-bind:src=cities[1].cityImg alt="">  </div>
        </div>
        <div class="city-info">
          <div class="city-name"> {{cities[1].cityName}}</div>
          <div class="city-description">
            {{cities[1].cityDesc}}
          </div>
        </div>
        </router-link>
      </div>

      <br>
      <br>

      
      <div class="city-card">
        <router-link v-bind:to="{ name: 'zurich', params:{cityId:3} }">
        <div class="city-image">
          <div class="landmarkImage"> <img v-bind:src=cities[2].cityImg alt="">  </div>
        </div>
        <div class="city-info">
          <div class="city-name"> {{cities[2].cityName}}</div>
          <div class="city-description">
            {{cities[2].cityDesc}}
          </div>
        </div>
        </router-link>
      </div>

      <br>
      <br>


            
      <div class="city-card">
        <router-link v-bind:to="{ name: 'paris', params:{cityId:4} }">
        <div class="city-image">
          <div class="landmarkImage"> <img v-bind:src=cities[3].cityImg alt="">  </div>
        </div>
        <div class="city-info">
          <div class="city-name"> {{cities[3].cityName}}</div>
          <div class="city-description">
            {{cities[3].cityDesc}}
          </div>
        </div>
        </router-link>
      </div>

      <br>
      <br>
            
      <div class="city-card">
        <router-link v-bind:to="{ name: 'brussels', params:{cityId:5} }">
        <div class="city-image">
          <div class="landmarkImage"> <img v-bind:src=cities[4].cityImg alt="">  </div>
        </div>
        <div class="city-info">
          <div class="city-name"> {{cities[4].cityName}}</div>
          <div class="city-description">
            {{cities[4].cityDesc}}
          </div>
        </div>
        </router-link>
      </div>


        <br>
        <br>

            
      <div class="city-card">
        <router-link v-bind:to="{ name: 'munich', params:{cityId:6} }">
        <div class="city-image">
          <div class="landmarkImage"> <img v-bind:src=cities[5].cityImg alt="">  </div>
        </div>
        <div class="city-info">
          <div class="city-name"> {{cities[5].cityName}}</div>
          <div class="city-description">
            {{cities[5].cityDesc}}
          </div>
        </div>
        </router-link>
      </div>



    </main>



  </div>
</template>

<script>

import CityService from '../services/CityService'

export default {
    data() {
        return {
            cities: [

            ],
            
        }
},

    created(){
        CityService.listAllCities().then((response) =>{
            this.cities = response.data;
            console.log(response.data);
        })
    }

}
</script>
<style scoped>

.header{
  grid-area: header;
  text-align: center;
}


.main{
  grid-area: main;
}



.home{
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-areas: 
  ". header ." 
  ". main .";
}

.city-card, .barcelona-card{
  background-color: white;
  box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);

}

.city-name{
  text-align: center;
  font-size: 30px;
  margin-bottom: 30px;
}

.city-info{
  height: 150px;
  text-align: center;
}

.city-description{
  text-decoration: none;
}
img{
        width: 100%;
        height: 400px;
        /*height: max-content;*/
        }

</style>


