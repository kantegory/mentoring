<template>
  <router-link
    :to="{
      name: 'home',
      query: {
        id: noteId,
      },
    }"
    :class="`list-group-item list-group-item-action py-3 lh-sm ${active ? 'active' : ''}`"
    :aria-current="active"
  >
    <div class="d-flex w-100 align-items-center justify-content-between">
      <strong class="mb-1">{{ title }}</strong> <small>{{ day }}</small>
    </div>
    <div class="col-10 mb-1 small">
      {{ description }}
    </div>
  </router-link>
</template>

<script>
export default {
  props: {
    noteId: Number,
    title: String,
    day: String,
    description: String,
    active: Boolean,
  },
}
</script>

<style></style>
