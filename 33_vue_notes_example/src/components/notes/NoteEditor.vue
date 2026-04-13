<template>
  <form @submit.prevent="handleSubmit">
    <input class="h1 ms-4 border-0" v-model="formData.title" />

    <p class="px-4 py-3" contenteditable="true">
      {{ formData.description }}
    </p>

    <input type="hidden" v-model="formData.description" />

    <div class="d-flex justify-content-end px-5">
      <button class="btn btn-primary">Сохранить</button>
    </div>
  </form>
</template>

<script>
import { reactive } from 'vue'

export default {
  emits: ['submit'],
  props: {
    id: Number,
    title: String,
    description: String,
  },

  setup(props, ctx) {
    const formData = reactive({
      title: props.title,
      description: props.description,
    })

    const handleSubmit = () => {
      ctx.emit('submit', props.id, formData)
    }

    return {
      formData,
      handleSubmit,
    }
  },
}
</script>
