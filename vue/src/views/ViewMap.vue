<template>
  <div>
      Map

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
        LandmarkService.getLandmarkById(this.landmarkId).then((response) =>{

            this.landmarks = response.data;
        })
    }

    
}
</script>

<style>

</style>