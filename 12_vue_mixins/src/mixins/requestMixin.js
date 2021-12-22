const axios = require('axios')

export default {
  methods: {
    async getRequest () {
      const response = await axios.get('http://localhost:3000/posts')

      return response.data
    }
  },

  data () {
    return {
      posts: []
    }
  },

  async mounted () {
    this.posts = await this.getRequest()
  }
}
