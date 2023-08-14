<template>
  <div>
      <h1>
          List of Landmarks In Rome
      </h1>
      <div>

        <div>
            <form v-on:submit.prevent="onCreation()">
                <div>
                    <label>Landmarks:</label>
                    <select v-model="itinerary.itineraryId">
                        <option v-for="landmark in landmarks" v-bind:key="landmark.landmarkId" v-bind:value="landmark.landmarkId">
                            {{landmark.name}}
                        </option>
                    </select>
                    <div></div>
                    
                    <label>Itinerary Name:</label>
                    <input type="text" v-model="itinerary.name" required />
                </div>
                <div>
                    <label>Starting Point:</label>
                    <input type="text" v-model="itinerary.startingPoint" required/>
                </div>
                <div>
                    <label>Itinerary Date</label>
                    <input type="date" v-model="itinerary.date" required/>
                </div>
                
                <!--- <button type="submit" class="button">Save Itinerary</button> --->
                <input type="submit" value="Create Itinerary" />
            </form>
       </div>


        <input type="text" v-model="search" placeholder="Search Landmark" />

        <div v-for="landmark in filteredLandmarks" v-bind:key="landmark.landmarkId">
            <div class="landmark">
               <div class="button" >
                    <router-link v-bind:to="{ name: 'itinerary-form', params: {landmarkId: landmark.landmarkId} }">
                        <button>Add to Itinerary</button>
                    </router-link>
                
                </div>
                <div class="landmarkName"> {{landmark.name}} </div>
                <div class="landmarkVenue"> {{landmark.venueType}} </div>
                <div class="landmarkImage"> <img v-bind:src=landmark.image alt="">  </div>
                <div class="landmarkDescription"> {{landmark.description}} </div>
                <div class="landmarkSchedule"> <landmark-schedule v-bind:landmarkId="landmark.landmarkId"/> </div>

                
            </div>
        </div>

      </div>
  </div>
</template>

<script>
import LandmarkService from "../services/LandmarkService"
import LandmarkSchedule from './LandmarkSchedule'
import ItineraryService from '../services/ItineraryService'


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

    methods:{
        onCreation(){
            console.log(this.itinerary);
            ItineraryService.createItinerary(this.itinerary).then((response)=>{
                const itineraryId = response.data.itinerary_id;
                const userId = response.data.userId;
                const route = {
                    name: "Home",
                    params: {
                        itineraryId: itineraryId,
                        userid: userId
                    }
                };
                this.$router.push(route)
            })

        }
    }


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


        
        

    .landmarkDescription{
        grid-area: description;
        text-align: center;
        margin-left: 10px;
        margin-right: 10px;
        color: rgb(58, 58, 58);
    }


    .landmark{
        display: grid;
        margin-bottom: 30px;
        background-color: white;
        box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
        /*height: 700px;*/
        grid-template-columns: 
        1fr 1fr;
        grid-template-areas:
        "name image"
        "venue image"
        "description image"
        "schedule image";
    }

        img{
        width: 100%;
        height: 400px;
        /*height: max-content;*/
        }


    
</style>