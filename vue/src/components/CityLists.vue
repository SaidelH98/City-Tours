<template>
  <div>
      <h1>
          {{landmarks[0].city}}
      </h1>
      <div>
    

            <div class="landmark">
                <label>Cities:</label>
                <select v-model="landmarkId">
                    <option v-for="landmark in landmarks" v-bind:key="landmark.landmarkId"
                        v-bind:value="landmark.landmarkId">
                        {{landmark. city}}
                    </option>
                </select>


                
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

            ],
            landmarkId: 0
        }
    },
    created(){
        HomeService.listAllCities().then((response) =>{

            this.landmarks = response.data;
            console.log(response.data);
        })
    }
    


}
</script>

<style>


    
</style>