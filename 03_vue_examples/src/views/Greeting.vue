<template>
  <section>
    <greeting-card />

    <h2>Это простой проект на Vue.</h2>
  </section>
</template>

<script>
import GreetingCard from '@/components/GreetingCard'

export default {
  name: 'Greeting',

  components: {
    GreetingCard
  }
}
</script>

<style>
</style>
