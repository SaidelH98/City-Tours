<template>
  <div>
      <h1>
          Schedule
      </h1>
      <div>
        <div v-for="schedule in schedules" v-bind:key="schedule.landmarkId">
            <div class="schedule">
                <div class="scheduleDay"> {{schedule.dayOfOperation}} </div>
                <div class="scheduleOpenTime"> {{schedule.openTime}} </div>
                <div class="scheduleCloseTime"> {{schedule.closeTime}} </div>
            </div>
        </div>
      </div>
  </div>
</template>

<script>
import ScheduleService from '../services/ScheduleService'
export default {
    name : 'landmark-schedule',
    data() {
        return {
            schedules: [

            ]
        }
    },
     created(){
        ScheduleService.getScheduleByLandmarkId(this.schedules.landmarkId).then((response) =>{

            this.schedules = response.data;
            console.log(response.data);
        })
    }
}
</script>
<style>

</style>