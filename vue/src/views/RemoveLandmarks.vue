<template>
  <div class="Remove-Landmark">
      
    <h1>Remove Landmark</h1>

    <h3>Choose Landmark to remove</h3>

    <table class="table">
        <thead>
          <tr>
            <th>Name</th>
            <th>Venue Type</th>
            <th>Adress</th>
            <th>Remove From Itinerary</th>

          </tr>
        </thead>
        <tbody>
            <tr  v-for="landmark in landmarks" v-bind:key="landmark.landmarkId">
                <td class="landmark-name"> {{landmark.landmarNname}} </td>
                <td class="landmark-venue"> {{landmark.venueType}} </td>
                <td class="Landmark-address"> {{landmark.address}} </td> 
                <td class="delete-itinerary">Remove</td>             
            </tr>
        </tbody>
      </table>


  </div>
</template>

<script>
import LandmarkService from '../services/LandmarkService'

export default {
    name : 'remove-landmarks',
  
    data() {
        return {
            landmarks: []
        }
    },
    created(){
        LandmarkService.getLandmarksByItineraryId().then((response) =>{
            this.landmarks = response.data;
            console.log(response.data);
        })
    }, 


}
</script>

<style scoped>





    
</style>