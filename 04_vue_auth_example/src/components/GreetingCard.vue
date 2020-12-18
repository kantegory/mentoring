<template>
  <span>{{ greeting }}</span>
</template>

<script>
export default {
  name: 'GreetingCard',
  props: {
    greeting: String
  }
}
</script>
