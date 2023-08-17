import axios from 'axios'

const http = axios.create(
    {baseURL: 'http://localhost:9000/'}
)

export default {

    getThumbsUpByLandmarkId(landmarkId) {
    return http.get('rating/thumbsUp/' + landmarkId)
  }
}
