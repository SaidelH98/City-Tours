<template>
  <div class="rome">
    <header class="header">
       <h1>My Itineraries</h1>
    </header>

      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Starting Point</th>
            <th>Date</th>
          </tr>
        </thead>
        <tbody>
          <div v-for="itinerary in itineraries" v-bind:key="itinerary.userId">
            <tr>
                <td class="itineraryName"> {{itinerary.name}} </td>
                <td class="itineraryStartingPoint"> {{itinerary.startingPoint}} </td>
                <td class="itineraryDate"> {{itinerary.date}} </td>               
            </tr>
          </div>
        </tbody>
      </table>
    


    

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
  table{
    border: 1px solid
  }


</style>