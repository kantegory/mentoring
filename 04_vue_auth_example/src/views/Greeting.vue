<template>
  <v-row>
    <v-col class="ma-auto col-12 col-sm-6 col-md-8">
      <greeting-list :greetings="greetings" />
    </v-col>

    <v-col class="ma-auto  col-12 col-sm-6 col-md-4">
      <greeting-list :greetings="greetings" />
    </v-col>

    <v-col cols="5" class="ma-auto">
      <greeting-list :greetings="greetings" />
    </v-col>

    <v-col cols="7" class="ma-auto">
      <greeting-list :greetings="greetings" />
    </v-col>

    <v-col cols="12" class="ma-auto">
      <greeting-list :greetings="greetings" />
    </v-col>
  </v-row>
</template>

<script>
import GreetingList from '@/components/GreetingList.vue'

export default {
  components: { GreetingList },
  name: 'Greeting',

  data: () => ({
    greetings: []
  }),

  created () {
    this.greetings.push(
      { id: 1, text: 'Привет' },
      { id: 2, text: 'Hello' },
      { id: 3, text: 'Hola' }
    )
  }
}
</script>
