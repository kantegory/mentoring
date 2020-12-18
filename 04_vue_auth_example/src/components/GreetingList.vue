<template>
  <v-card
    elevation="2"
    color="primary"
    dark
    class="pa-3"
  >
    <ul>
      <li v-for="greeting in greetings" :key="greeting.id">
        <greeting-card :greeting="greeting.text" />
      </li>
    </ul>
  </v-card>
</template>

<script>
import GreetingCard from '@/components/GreetingCard.vue'

export default {
  components: { GreetingCard },

  name: 'GreetingList',

  props: {
    greetings: Array
  },

  created () {
    console.log('Greetings', this.greetings)
  }
}
</script>
