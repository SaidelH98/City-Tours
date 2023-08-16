<template>
  <div class="rome">
    <header class="header">
      
    <div class="profile">
        <img class="profile-picture" src="../assets/images/profile/charlesdeluvio-Mv9hjnEUHR4-unsplash.jpg" alt="">
        <div class="greeting">
            Welcome {{$store.state.user.username}}!
            
        </div>
    </div>

       <h1>Itineraries Details</h1>
    </header>

    <div class="itinerary-details-header">
         <div class="itinerary-name-one">
             <div class="itinerary-details-header-data">Itinerary: </div> 
             <div class="itinerary-details-header-data-result">{{ItinerarysDetails[0].itineraryName}}</div>
         </div>
        <div class="itinerary-name-one">
            <div class="itinerary-details-header-data">Starting Pointt:</div> 
            <div class="itinerary-details-header-data-result">{{ItinerarysDetails[0].startingPoint}}</div>
        </div>
        <div class="itinerary-name-one">
            <div class="itinerary-details-header-data">Date:</div> 
            <div class="itinerary-details-header-data-result"> {{ItinerarysDetails[0].date}}</div>
        </div>

    </div>
   
    <br>

    <table class="table">
        <thead>
          <tr>
                <th>Landmark Name</th>
                <th>Venue Type</th>
                <th>City</th>
                <th>Country</th>
                <th>Address</th>
                <th>Add</th>
                <th>Remove</th>
          </tr>
        </thead>
        <tbody>
            <tr  v-for="itinerary in ItinerarysDetails" v-bind:key="itinerary.itineraryId">
                <td class="itinerary-landmark"> {{itinerary.landmarkName}} </td>
                <td class="itinerary-venue"> {{itinerary.venueType}} </td>
                <td class="itinerary-city"> {{itinerary.cityName}} </td>
                <td class="itinerary-country"> {{itinerary.country}} </td>
                <td class="itinerary-address"> {{itinerary.address}} </td> 
                <td class="add-Landmark">          
                <router-link v-bind:to="{ name: 'home' }" > Add</router-link>
                </td> 
                <td class="delete-landmark">Remove</td>             
            </tr>
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
  props:["userId"
  ],
  data(){
    return {
    
      ItinerarysDetails:[

      ]
    }
  },
  created(){
    const itineraryId = this.$route.params.itineraryId
    ItineraryService.getItineraryDetailsByItineraryId(itineraryId).then((response) =>{
      this.ItinerarysDetails = response.data;
      console.log(response.data);
    })
  }
};
</script>
<style scoped>
 
  .greeting{
    margin-top: 10px;
    font-size: 25px;
    margin-left: 10px;
  }

  img{
    width: 50px;
    height: 50px;
  }

  .profile{
    margin-top: 20px;
    display: flex;
    row-gap: 50px;
    background-color: white;
  }

  .itinerary-details-header{
      display: flex;
      flex-direction: column;
      margin-left: auto;
      margin-right: auto;
    
  }

  .itinerary-name-one{
      display: flex;
  }

  .itinerary-details-header-data{
      font-weight: bold;
      align-self: flex-start;
      font-size: 25px;
      
      
  }
  .itinerary-details-header-data-result{
      margin-left: 5px;
      font-size: 25px;
      
  }
  .itinerary-landmark{
      font-weight: bold;
  }




</style>