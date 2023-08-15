<template>
  <div>
      <h1>

      </h1>
      <div>

        <div class="form-card">
            <form v-on:submit.prevent="onCreation()">
                <div>
                    <label>Itinerary Name:</label>
                    <input type="text" v-model="itinerary.name" required />
                </div>
                <div>
                    <label>Starting Point:</label>
                    <input type="text" v-model="itinerary.startingPoint" required/>
                </div>
                <div>
                    <label>Itinerary Date</label>
                    <input type="date" v-model="itinerary.date" required/>
                </div>
                
                <!--- <button type="submit" class="button">Save Itinerary</button> --->
                
                <div class="button" >
                        <button type="submit" value="Create Itinerary" >Create Itinerary</button>

                </div>
            </form>
       </div>

      </div>
  </div>
</template>

<script>
import LandmarkService from "../services/LandmarkService"
import ItineraryService from '../services/ItineraryService'


export default {
    name : 'form-card',
    props:[
        "userId"
    ],
    data() {
        return {
            landmarks: [],

            schedules: [],
            search: "",

            itinerary: {
                userId: this.$store.state.user.id,
                name: "",
                startingPoint: "",
                date: "",
            }
        }
    },

    created(){
        const cityId = this.$route.params.cityId;
        LandmarkService.getLandmarksByCity(cityId).then((response) =>{
            this.landmarks = response.data;

        })
    },

    methods:{
        onCreation(){
            console.log(this.itinerary);
            ItineraryService.createItinerary(this.itinerary, this.$route.params.landmarkId).then((response)=>{
                const userId = response.data.userId;
                const route = {
                    name: "profile",
                    params: {
                        userid: userId
                    }
                };
                this.$router.push(route)
            })

        },

        onClick(){
            ItineraryService.createItinerary(this.itinerary).then((response)=>{
                const itineraryId = response.data.itinerary_id;
                const userId = response.data.userId;
                const route = {
                    name: "profile",
                    params: {
                        itineraryId: itineraryId,
                        userid: userId
                    }
                };
                this.$router.push(route)
            })

        }
    }


}
</script>

<style scoped>

.form-card{
    display: flex;
    align-content: center;
}

input{
    display: block;
    height: 50px;
    width: 300px;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-bottom: 8px;
    font-size: 25px;
    font-weight: 300;
}

label{
    font-size: 20px;
}
::placeholder{
    color: #474646;
    font-size: 25px;
}

button{
    margin-top: 20px;
    width: 100%;
    height: 50px;
    background-color: #ffffff;
    color: #080710;
    padding: 2px 0;
    font-size: 25px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
    align-self: center;
}





    
</style>