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
            <th>View Details</th>
            <th>Add New Landmark</th>
            <th>Delete Itinerary</th>
          </tr>
        </thead>
        <tbody>
            <tr  v-for="itinerary in itineraries" v-bind:key="itinerary.userId">
                <td class="itineraryName"> {{itinerary.name}} </td>
                <td class="itineraryStartingPoint"> {{itinerary.startingPoint}} </td>
                <td class="itineraryDate"> {{itinerary.date}} </td> 
                <td class="view-itinerary"><button type="submit" value="View" v-on:click="onClick(itinerary.itineraryId)">View</button></td> 
                <td class="add-Landmark">          
                  <button>
                    <router-link v-bind:to="{ name: 'home' }" > Add</router-link>
                  </button>
                </td> 
                <td class="delete-itinerary"> <button type="submit" value="Delete" v-on:click="deleteItinerary(itinerary.itineraryId)">Delete</button></td>             
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
    "userId", "itineraryId"
  ],
  data(){
    return {
      itineraries: [

      ],
      ItinerarysDetails:[

      ]
    }
  },
  created(){
    ItineraryService.getItinerariesByUserId(this.$store.state.user.id).then((response) =>{

      this.itineraries = response.data;
      console.log(response.data);
    })
  },
  methods:{
    onClick(itineraryId){
        console.log(itineraryId);
       // ItineraryService.getItineraryDetailsByItineraryId(itineraryId).then(()=>{
            const route = {
                name: "view-details",
                params: {
                    itineraryId: itineraryId
                }
            };
            this.$router.push(route)
       // })

    },
    deleteItinerary(itineraryId){
      ItineraryService.deleteItineraryById(itineraryId).then(()=>{

  /*              const userId = response.data.userId;
                const route = {
                    name: "profile",
                    params: {
                        
                        userid: userId
                    }
                };
                this.$router.push(route)
*/

            const index = this.itineraries.findIndex(i => i.itineraryId == itineraryId)
            this.itineraries.splice(index, 1)
      })

    }

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
  a{
    text-decoration: none;
  }


  a:visited {
  color: rgb(58, 58, 58)
}




</style>