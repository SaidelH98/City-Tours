<template>
  <div>
      <h1>
          List of Landmarks
          
      </h1>
      <div>
          <landmark-schedule />
        <div v-for="landmark in landmarks" v-bind:key="landmark.landmarkId">
            <div class="landmark">
                <div class="landmarkName"> {{landmark.name}} </div>
                <div class="landmarkVenue"> {{landmark.venueType}} </div>
                <div class="landmarkImage"> <img v-bind:src=landmark.image alt="">  </div>
                <div class="landmarkDescription"> {{landmark.description}} </div>
                <div class="landmarkSchedule">  </div>
            </div>
        </div>
      </div>
  </div>
</template>

<script>
import HomeService from '../services/HomeService'
//import ScheduleService from '../services/ScheduleService'

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
    },
   /*
        ScheduleService.getAllSchedules().then((response) =>{

            this.schedules = response.data;
            console.log(response.data);
        })
    }
    */
    
}


</script>

<style scoped>

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

    .landmarkSchedule{
        grid-area: schedule;
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
        "schedule image";
    }

        img{
        width: 100%;
        height: 400px;
        /*height: max-content;*/
        }


    
</style >