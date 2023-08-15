import axios from 'axios'



export default {

  listAllLandmarks() {
    return axios.get('landmarks')
  },

  getLandmarksByName(name) {
    return axios.get('landmarks/name/'+ name)
  },

  getLandmarksByDay(dayOfOperation) {
    return axios.get('landmarks/day/'+ dayOfOperation)
  },

  getLandmarksByVenueType(venueType) {
    return axios.get('landmarks/venue/'+ venueType)
  },

  getLandmarksById(landmarkId) {
    return axios.get('landmarks/id/'+ landmarkId)
  },

  listAllCities() {
    return axios.get('landmarks/city/')
  },

  getLandmarksByCity(cityId) {
    return axios.get('landmarks/city/'+ cityId)
  },

  getVenueTypeList() {
    return axios.get('landmarks/venue/')
  },




  getItineraryByItineraryId(itineraryId) {
    return axios.get('itinerary/id/'+ itineraryId)
  },

  getItinerariesByUserId(userId) {
    return axios.get('itinerary/user/'+ userId)
  },

  createItinerary(itinerary, landmarkId) {
    return axios.post('itinerary/' + landmarkId, itinerary)
  },

  addToExistingItinerary(itineraryId, landmarkId) {
    return axios.post(`itinerary/my-itinerary/${itineraryId}/${landmarkId}`)
  }

  



}