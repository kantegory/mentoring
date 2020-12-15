<template>
  <h1>Привет, {{ username }}!</h1>
</template>

<script>
export default {
  name: 'GreetingCard',

  props: {
    username: String
  }
}
</script>

<style>
</style>
