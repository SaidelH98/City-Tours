import axios from 'axios'

const http = axios.create(
    {baseURL: 'http://localhost:9000/'}
)

export default {

    getScheduleByLandmarkName(name) {
        return http.get('schedule/name' + name)
    }, 

    getScheduleByLandmarkId(landmarkId) {
        return http.get('schedule/' + landmarkId)
    },

    getScheduleByDay(dayOfOperation) {
        return http.get('schedule/day/' + dayOfOperation)
    },

    getAllSchedules() {
        return http.get('schedule')
    },

    getScheduleByTime(time) {
        return http.get('schedule/time/' + time)
    }



}