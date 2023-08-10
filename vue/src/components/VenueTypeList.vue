<template>
  <div>
      <h1>
         
      </h1>
      <div>
    

            <div class="landmark">
                <label>Cities:</label>
                <select v-model="landmarkId">
                    <option v-for="landmark in landmarks" v-bind:key="landmark.landmarkId"
                        v-bind:value="landmark.landmarkId">
                        {{landmark}}
                    </option>
                </select>


                
            </div>

      </div>
  </div>
</template>

<script>
import LandmarkService from '../services/LandmarkService'
export default {
    name : 'venue-type-list',
    data() {
        return {
            landmarks: [

            ],
            landmarkId: 0
        }
    },
    created(){
        LandmarkService.getVenueTypeList().then((response) =>{
            this.landmarks = response.data;
            console.log(response.data);
        })
    },
    computed: {
    filteredLandmarks:function () {
        return this.landmarks.filter((landmark) =>{
            return landmark.venueType.toLowerCase().match(this.search.toLowerCase())
        })
    }
    }
    


}
</script>

<style>


    
</style>