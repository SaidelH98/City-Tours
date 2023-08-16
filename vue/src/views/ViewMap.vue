<template>
  <div class="view-map"> 

      <h3>Click on map for directions</h3>

       <iframe v-bind:src="landmarks.map"> </iframe>


  </div>
</template>

<script>
import LandmarkService from '../services/LandmarkService'

export default {
    name : 'view-map',
    data(){
        return {
    landmarks:[

    ]
        }
    },
    created(){
        LandmarkService.getLandmarkById(this.$route.params.landmarkId).then((response) =>{

            this.landmarks = response.data;
        })
    }

    
}
</script>

<style>
.view-map{
    display: flex;
    flex-direction: column;
    align-items: center;
}

iframe{
 
    width: 80%;
    height: 600px;
    align-self: center;
}

</style>