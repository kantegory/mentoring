<template>
  <div class="home">
    <v-row>
      <hello-world class="mx-auto" :username="savedUsername" />
    </v-row>

    <v-form
      @submit.prevent="submitUsername"
      ref="usernameForm"
      class="my-2"
    >
      <v-row>
        <v-col cols="3" class="mx-auto">
          <v-text-field
            label="Введите своё имя"
            v-model="username"
            name="username"
          />
        </v-col>
      </v-row>
    </v-form>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'Home',

  components: {
    HelloWorld
  },

  data: () => ({
    username: '',

    savedUsername: ''
  }),

  methods: {
    submitUsername () {
      this.savedUsername = this.username

      localStorage.setItem('username', this.username)

      this.$refs.usernameForm.reset()
    }
  },

  created () {
    if (localStorage.getItem('username')) {
      this.savedUsername = localStorage.getItem('username')
    }
  }
}
</script>

<style>
form {
  display: flex;
}

.form-group {
  display: flex;
  flex-direction: column;
  width: 25%;
  text-align: left;
  gap: 0.5rem;
  margin: auto;
  margin-top: 2rem
}
</style>
