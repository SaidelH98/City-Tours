<template>
  <div class="rome">
    <header class="header">
      
    <div class="profile">
        <img class="profile-picture" src="../assets/images/profile/charlesdeluvio-Mv9hjnEUHR4-unsplash.jpg" alt="">
        <div class="greeting">
            Welcome {{$store.state.user.username}}!
            
        </div>
    </div>

       <h1>My Itineraries</h1>
    </header>
   



      <table class="table">
        <thead>
          <tr>
            <th>Name</th>
            <th>Starting Point</th>
            <th>Date</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
         
            <tr  v-for="itinerary in itineraries" v-bind:key="itinerary.userId">
                <td class="itineraryName"> {{itinerary.name}} </td>
                <td class="itineraryStartingPoint"> {{itinerary.startingPoint}} </td>
                <td class="itineraryDate"> {{itinerary.date}} </td> 
                <td class="edit-itinerary"> Edit </td> 
                <td class="delete-itinerary">Delete</td>             
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