<template>
  <div class="rome">
    <header class="header">
      
    <div class="profile">
        <img class="profile-picture" src="../assets/images/profile/charlesdeluvio-Mv9hjnEUHR4-unsplash.jpg" alt="">
        <div class="greeting">
            Welcome {{$store.state.user.username}}!
            
        </div>
    </div>

       <h1>My Itineraries Details</h1>
    </header>
    <div class="itinerary-name">{{ItinerarysDetails.itineraryName}}</div>

   


    


    

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
    
      ItinerarysDetails:[

      ]
    }
  },
  created(){
    ItineraryService.getItineraryDetailsByItineraryId(this.$store.state.user.id).then((response) =>{

      this.itineraries = response.data;
      console.log(response.data);
    })
  }
};
</script>
<style scoped>
  table{
    table-layout: auto;
    border: 1px solid black;
    width: 100%;
  }

  tbody{
    border: 1px solid black;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
  thead{
    background-color: rgb(32, 32, 31);
    color: white;
  }

  td{
    text-align: center;
  }

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




</style>