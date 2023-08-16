<template>
  <div>

      {{landmarks.map}}

       <div class="landmark-map"> <iframe v-bind:src=landmarks.map alt=""/>  </div>

      

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

</style>