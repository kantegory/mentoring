<template>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">{{ name }}</h5>
      <p class="card-text">
        {{ text }}
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NoteCard',

  props: {
    name: {
      type: String,
      required: true
    },
    text: {
      type: String,
      required: false
    }
  }
}
</script>
