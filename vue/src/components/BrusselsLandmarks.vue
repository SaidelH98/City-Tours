<template>
  <div>
      <h1>
          List of Landmarks In Brussels
      </h1>
      <div>
        <div v-for="landmark in landmarks" v-bind:key="landmark.landmarkId">
            <div class="landmark">
                <div class="landmarkName"> {{landmark.name}} </div>
                <div class="landmarkVenue"> {{landmark.venueType}} </div>
                <div class="landmarkImage"> <img v-bind:src=landmark.image alt="">  </div>
                <div class="landmarkDescription"> {{landmark.description}} </div>
            
            </div>
        </div>
      </div>
  </div>
</template>

<script>
import LandmarkService from "../services/LandmarkService"

export default {
    name : 'brussels-landmarks',
    data() {
        return {
            landmarks: [

            ]
        }
    },

    created(){
        const cityId = this.$route.params.cityId;
        LandmarkService.getLandmarksByCity(cityId).then((response) =>{
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
        /*width: 100%;*/
        /*height: 100%;*/
        /*object-fit: contain;*/
    }

    h1{
        text-align: center;
    }


        
        

    .landmarkDescription{
        grid-area: description;
    }
    .landmark{
        display: grid;
        border: solid;
        flex-direction: column;
        /*height: 700px;*/
        grid-template-columns: 
        1fr 1fr;
        grid-template-areas:
        "name image"
        "venue image"
        "description image"
        "description image";
    }

        img{
        width: 100%;
        height: 400px;
        /*height: max-content;*/
        }


    
</style>