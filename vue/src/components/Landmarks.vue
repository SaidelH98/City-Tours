<template>
  <div>
      <h1>
          List of Landmarks
      </h1>
      <div>
        <div v-for="landmark in landmarks" v-bind:key="landmark.landmarkId">
            <div class="landmark">
                <div class="landmarkName"> {{landmark.name}} </div>
                <div class="landmarkVenue"> {{landmark.venueType}} </div>
                <div class="lankmarkDay"> {{landmark.dayOfOperation}} </div>
                    <div class="landmarkImage"> <img v-bind:src=landmark.image alt=""> </div>
                <div class="landmarkDescription"> {{landmark.description}} </div>
            </div>
        </div>
      </div>
  </div>
</template>

<script>
import HomeService from '../services/HomeService'
export default {
    name : 'landmarks',
    data() {
        return {
            landmarks: [

            ]
        }
    },
    created(){
        HomeService.listAllLandmarks().then((response) =>{

            this.landmarks = response.data;
            console.log(response.data);
        })
    }
    


}
</script>

<style>

    .landmarkName{
        grid-area: name;
    }

    .landmarkVenue{
        grid-area: venue;
    }

    .landmarkDay{
        grid-area: day;
    }

    .landmarkImage{
        grid-area: image;
    }

    .landmarkDescription{
        grid-area: description;
    }
    .landmark{
        display: grid;
        border: solid;
        flex-direction: column;
        height: 400px;
        grid-template-columns: 
        1fr 1fr;
        grid-template-areas:
        "name image"
        "day image"
        "venue image"
        "description image";
    }

    
</style>