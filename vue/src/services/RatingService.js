import axios from 'axios'



export default {

    async getThumbsUpByLandmarkId(landmarkId) {
        const response = await axios.get('rating/thumbsUp/' + landmarkId)
    return  response
  },

  async getThumbsDownByLandmarkId(landmarkId) {
    const response = await axios.get('rating/thumbsDown/' + landmarkId)
return  response
},


thumbsUpLandmarkByUser(userId, landmarkId) {
    return  axios.post(`rating/thumbsUp/${userId}/${landmarkId}`)
},

thumbsDownLandmarkByUser(userId, landmarkId) {
    return  axios.post(`rating/thumbsDown/${userId}/${landmarkId}`)
}


}
