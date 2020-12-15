<template>
  <section>
    <greeting-card :username="savedUsername" />

    <h2>Это простой проект на Vue.</h2>

    <form
      @submit.prevent="submitUsername"
      ref="form"
    >
      <label for="username">
        Введите своё имя:
      </label>

      <input
        v-model="username"
        id="username"
        name="username"
        type="text"
        placeholder="Иван Иванов"
      />
    </form>
  </section>
</template>

<script>
import GreetingCard from '@/components/GreetingCard'

export default {
  name: 'Greeting',

  components: {
    GreetingCard
  },

  data: () => ({
    username: '',

    savedUsername: ''
  }),

  methods: {
    submitUsername () {
      // сохраним username в localStorage
      localStorage.setItem('username', this.username)

      // сохраним его в отдельную переменную,
      // для дальнейшей передачи в компоненту
      // GreetingCard
      this.savedUsername = this.username

      // очистим форму
      this.$refs.form.reset()
    }
  },

  created () {
    // если localStorage содержит значение по ключу
    // username, то запишем его в наши переменные
    if (localStorage.getItem('username')) {
      this.savedUsername = localStorage.getItem('username')

      this.username = this.savedUsername
    }
  }
}
</script>

<style>
</style>
