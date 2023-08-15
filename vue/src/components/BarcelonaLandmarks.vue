<template>
  <div>

      <div>
          <div class="search-block">
              <input class="search-bar" type="text" v-model="search" placeholder="Search Landmark" />
          </div>
          <br>
          <br>
         <h1>
          Landmarks In Barcelona
         </h1>

        <div v-for="landmark in filteredLandmarks" v-bind:key="landmark.landmarkId">
            <div class="landmark">
                <div class="add-landmark" >
                    <router-link v-bind:to="{ name: 'itinerary-form', params: {landmarkId: landmark.landmarkId} }">
                        <button class="button">Add to Itinerary</button>
                    </router-link>
                </div>
                <div class="landmarkName"> {{landmark.name}} </div>
                <div class="landmarkVenue"> {{landmark.venueType}} </div>
                <div class="landmarkImage"> <img v-bind:src=landmark.image alt="">  </div>
                <div class="landmarkDescription"> {{landmark.description}} </div>
                <div class="landmarkSchedule"> <landmark-schedule v-bind:landmarkId="landmark.landmarkId"/> 
        
                
                </div>
                
            </div>
        </div>

      </div>
  </div>
</template>

<script>
import LandmarkService from "../services/LandmarkService"
import LandmarkSchedule from './LandmarkSchedule'


export default {
    name : 'rome-landmarks',
    props: [
        "landmarkId"
    ],
    components:{
        LandmarkSchedule
    },
    data() {
        return {
            landmarks: [],

            schedules: [],
            search: "",

            itinerary: {
                userId: this.$store.state.user.id,
                name: "",
                startingPoint: "",
                date: "",
            }
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
        }
    },


}
</script>

<style scoped>

    .landmarkName{
        grid-area: name;
        font-size: 25px;
        text-align: center;
    }

    .landmarkVenue{
        grid-area: venue;
        text-align: center;
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

    .landmarkSchedule {
        grid-area: schedule;
        text-align: center;
        color: rgb(58, 58, 58);

    }

    .add-landmark{
        grid-area: add-landmark;
        display: flex;
        align-content: flex-end;

    }

    .button{
        height: 100px;
        width: 200px;
        background-color: black;
        color: white;
        font-size: 20px;
        cursor: pointer;
    }

    .landmarkDescription{
        grid-area: description;
        text-align: center;
        margin-left: 10px;
        margin-right: 10px;
        color: rgb(58, 58, 58);
    }


    .landmark{
        display: grid;
        margin-bottom: 20px;
        background-color: white;
        box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
        height: 500px;
        /*height: 700px;*/
        grid-template-columns: 
        1fr 1fr;
        grid-template-areas:
        "add-landmark image"
        "name image"
        "venue image"
        "description image"
        "schedule image"
        ;
    }

        img{
        width: 100%;
        height: 100%;
        padding-bottom: 0px;
        /*height: max-content;*/
    }

    .search-bar{
        width: 800px;
        height: 50px;
        font-size: 30px;
        align-self: center;
        box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
    }

    .search-block{
        text-align: center;
        justify-self: center;
        justify-content: center;
        align-content: center;
        display: flex;
        height: 200px;
        width: 1300px;
        background-image: url("../assets/images/Overview/dan-freeman-bvK3lFIWIIQ-unsplash.jpg");
        background-size: 650px;
        box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
    }


    
</style>