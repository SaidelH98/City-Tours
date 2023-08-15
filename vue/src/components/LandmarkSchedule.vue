<template>
  <div>
      <h1>
          Schedule
      </h1>
      <div>
                
     <table class="table">
        <thead>
          <tr>
            <th>Day</th>
            <th>Open</th>
            <th>Close</th>

          </tr>
        </thead>
        <tbody>
        <tr v-for="schedule in schedules" v-bind:key="schedule.landmarkId">
            
                <td class="scheduleDay"> {{schedule.dayOfOperation}} </td>
                <td class="scheduleOpenTime"> {{schedule.openTime === 0 ? 24 +' hours ' : schedule.openTime + ':00 AM'}}</td>
                <td class="scheduleCloseTime"> {{ schedule.closeTime === 24 ? '': schedule.closeTime > 12? schedule.closeTime - 12 + ':00 PM' : schedule.closeTime + ':00 PM'}}</td>
          
        </tr>
        </tbody>
      </table>
      </div>
  </div>
</template>

<script>
import ScheduleService from '../services/ScheduleService'
export default {
    name : 'landmark-schedule',
    props: [
        "landmarkId"
    ],
    data() {
        return {
            schedules: [

            ]
        }
    },
     created(){
        ScheduleService.getScheduleByLandmarkId(this.landmarkId).then((response) =>{

            this.schedules = response.data;
            console.log(response.data);
        })
    },
    methods: {
    convertCloseTime(){
        if(this.schedules.closeTime > 12){
           let newFormat = this.schedules.closeTime - 12;
            return newFormat;
        }else{
            return this.schedules.closeTime;
        }
    }
    }
}
</script>
<style>

  table{
    table-layout: auto;
    width: 100%;
  }

  tbody{
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


</style>