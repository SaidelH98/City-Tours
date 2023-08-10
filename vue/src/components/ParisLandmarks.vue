<template>
  <div>
      <h1>
          List of Landmarks In Paris
      </h1>
      <div>

        <input type="text" v-model="search" placeholder="Search Landmark" />

        <div v-for="landmark in filteredLandmarks" v-bind:key="landmark.landmarkId">
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
    name : 'paris-landmarks',
    data() {
        return {
            landmarks: [
            ],
            search: ""
        }
    },

    created(){
        const cityId = this.$route.params.cityId;
        LandmarkService.getLandmarksByCity(cityId).then((response) =>{
            this.landmarks = response.data;
        })
    },
    computed: {
        filteredLandmarks:function () {
            return this.landmarks.filter((landmark) =>{
                return landmark.name.toLowerCase().includes(this.search.toLowerCase())
                ||
                landmark.venueType.toLowerCase().includes(this.search.toLowerCase())
                ||
                landmark.description.toLowerCase().includes(this.search.toLowerCase())
            })
        },

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