<template>
  <div>
      <h1>
          Schedule
      </h1>
      <div>
        <div v-for="schedule in schedules" v-bind:key="schedule.landmarkId">
            <div class="schedule">
                <span class="scheduleDay"> {{schedule.dayOfOperation}} </span>
                <span class="scheduleOpenTime"> {{schedule.openTime}} </span>
                <span class="scheduleCloseTime"> {{schedule.closeTime}} </span>
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
    }
}
</script>
<style>

</style>