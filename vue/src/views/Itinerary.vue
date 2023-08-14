<template>
  <div class="rome">
    <header class="header">
       <h1>My Itineraries</h1>
    </header>

    
       <div v-for="itinerary in itineraries" v-bind:key="itinerary.userId">
            <div class="itinerary">
               <div class="itineraryName"> {{itinerary.name}} </div>
               <div class="itineraryStartingPoint"> {{itinerary.startingPoint}} </div>
               <div class="itineraryDate"> {{itinerary.date}} </div>
                
                
            </div>
        </div>

    


    

    <main class="main">

     
    

    </main>

 


    
  </div>
</template>

<script>
import ItineraryService from '../services/ItineraryService';



export default {
  name: "itinerary",
  props:[
    "userId"
  ],
  data(){
    return {
      itineraries: [

      ]
    }
  },
  created(){
    ItineraryService.getItinerariesByUserId(this.$store.state.user.id).then((response) =>{

      this.itineraries = response.data;
      console.log(response.data);
    })
  }
};
</script>
<style scoped>


</style>