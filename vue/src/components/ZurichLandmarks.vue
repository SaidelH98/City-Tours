<template>
  <div>

      <div>
          <div class="search-block">
              <input class="search-bar" type="text" v-model="search" placeholder="Search Landmark" />
          </div>
        
          
         <h1>
          Landmarks In Zurich
         </h1>
         
         
 

        <div v-for="landmark in filteredLandmarks" v-bind:key="landmark.landmarkId">
            <div class="landmark">

                <div class="add-rate">
                        <div class="add-landmark" >
                            <router-link v-bind:to="{ name: 'itinerary-form', params: {landmarkId: landmark.landmarkId} }">
                                <button class="button">Add to Itinerary</button>
                            </router-link>
                        </div>

                        <div class="rate">
                            
                            <div class="thumbs-up"  >
                               <button class="thumb-button" v-on:click="onthumbsUp(landmark.landmarkId)">
                                   <thumbs-up />
                                </button> 
                                <div class="rate-number">{{thumbsMap.get(landmark.landmarkId)}}</div>
                            </div>
                            <div class="thumbs-down">
                                <button class="thumb-button" v-on:click="onthumbsDown(landmark.landmarkId)">
                                <thumbs-down />
                                </button>
                               <div class="rate-number">{{thumbsDown.get(landmark.landmarkId)}}</div>
                            </div>
                        </div>

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
import ThumbsDown from './ThumbsDown.vue'
import ThumbsUp from './ThumbsUp.vue'
import RatingService from "../services/RatingService"


export default {
    name : 'zurich-landmarks',
    props: [
        "landmarkId"
    ],
    components:{
        LandmarkSchedule, 
        ThumbsUp,
        ThumbsDown

    },
    data() {
        return {
            landmarks: [],

            schedules: [],
            search: "",

        

            thumbsUp: 0,

            rating: {
                userId: this.$store.state.user.id,
                landmarkId: 0,
                thumbsUp: "",     
            },

            itinerary: {
                userId: this.$store.state.user.id,
                name: "",
                startingPoint: "",
                date: "",
            },
            thumbsMap: new Map(),
            thumbsDown: new Map()
        }
    },

   async created(){
        const cityId = this.$route.params.cityId;
        LandmarkService.getLandmarksByCity(cityId).then((response) =>{
            this.landmarks = response.data;

            
            this.landmarks.forEach(async element => {
                const count = await this.thumbUpNumbers(element.landmarkId)
                this.thumbsMap.set(element.landmarkId, count)
                this.$forceUpdate()
           
            });

            this.landmarks.forEach(async element => {
                const count = await this.thumbDownNumbers(element.landmarkId)
                this.thumbsDown.set(element.landmarkId, count)
                this.$forceUpdate()
           
            });

        })
       /* RatingService.getThumbsUpByLandmarkId(this.landmarks.landmarkId).then((response) =>{
            this.thumbsUp = this.thumbsUp + response.data;
            console.log(response.data);
        })
        */


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
    methods: {
     async  thumbUpNumbers(landmarkId){
         const response = await    RatingService.getThumbsUpByLandmarkId(landmarkId)
         console.log(response);
        return response.data


        },

    async  thumbDownNumbers(landmarkId){
        const response = await   RatingService.getThumbsDownByLandmarkId(landmarkId)
        console.log(response);
        return response.data
    },


    onthumbsUp(landmarkId){
        RatingService.thumbsUpLandmarkByUser(this.$store.state.user.id, landmarkId).then((response) =>{
            this.rating = response.data;
            this.$forceUpdate()
            window.location.reload(true)
            
        })

    },

        onthumbsDown(landmarkId){
        RatingService.thumbsDownLandmarkByUser(this.$store.state.user.id, landmarkId).then((response) =>{
            this.rating = response.data;
            this.$forceUpdate()
            window.location.reload(true)
            
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
        background-image: url("../assets/images/Overview/background_photo.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
    }
    
    
    .add-rate{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        
    }

    .rate{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        width: 120px;
        margin-right: 10px;
    }

    .rate-number{
        text-align: center;
    }

    .thumb-button{
        border: none;
        background-color: white;
        cursor: pointer;
    
    }


    
</style>