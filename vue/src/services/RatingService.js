import axios from 'axios'



export default {

    async getThumbsUpByLandmarkId(landmarkId) {
        const response = await axios.get('rating/thumbsUp/' + landmarkId)
    return  response
  }
}
