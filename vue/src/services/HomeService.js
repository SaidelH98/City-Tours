import axios from 'axios'

const http = axios.create(
    {baseURL: 'http://localhost:9000/'}
)

export default {

  listAllLandmarks() {
    return http.get('landmarks')
  },

  getLandmarksByName(name) {
    return http.get('landmarks/name/'+ name)
  },

  getLandmarksByDay(dayOfOperation) {
    return http.get('landmarks/day/'+ dayOfOperation)
  },

  getLandmarksByVenueType(venueType) {
    return http.get('landmarks/venue/'+ venueType)
  },

  getLandmarksById(landmarkId) {
    return http.get('landmarks/id/'+ landmarkId)
  },

  listAllCities() {
    return http.get('landmarks/city/')
  },

}