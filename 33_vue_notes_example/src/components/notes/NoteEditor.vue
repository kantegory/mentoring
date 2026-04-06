<template>
  <input class="h1 ms-4 border-0" :value="title" />

  <p class="px-4 py-3" contenteditable="true">
    {{ description }}
  </p>
</template>

<script>
export default {
  props: {
    id: Number,
    title: String,
    description: String,
  },
}
</script>
