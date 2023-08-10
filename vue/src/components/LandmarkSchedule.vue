<template>
  <div>
      <h1>
          Schedule
      </h1>
      <div>
        <div v-for="schedule in schedules" v-bind:key="schedule.landmarkId">
            <div class="schedule">
                <span class="scheduleDay"> {{schedule.dayOfOperation}} </span>
                <span class="scheduleOpenTime"> {{schedule.openTime}}:00 AM - </span>
                <span class="scheduleCloseTime"> {{schedule.closeTime > 12? schedule.closeTime - 12: schedule.closeTime}}:00 PM</span>
            </div>
        </div>
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

.schedule{
    
}

</style>