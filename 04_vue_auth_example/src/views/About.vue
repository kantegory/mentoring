<template>
  <div class="about">
    <h2 class="headline">Привет, {{ userData.username }}</h2>
  </div>
</template>
<script>
export default {
  name: 'About',

  data: () => ({
    userData: {
      username: '',
      email: ''
    }
  }),

  methods: {
    async loadUserData () {
      try {
        const response = await this.axios
          .get('http://62.109.28.95:8005/auth/users/me/', {
            headers: {
              Authorization: `Token ${localStorage.getItem('token')}`
            }
          })

        // if (response.status !== 200) {
        //   throw new Error(response.status)
        // }

        this.userData = response.data
      } catch (e) {
        console.error('AN API ERROR', e)
      }
    }
  },

  created () {
    this.loadUserData()
  }
}
</script>
