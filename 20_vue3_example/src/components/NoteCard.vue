<template>
  <div class="card">
    <div class="card-body">
      <div class="d-flex w-100 justify-content-between">
        <h5 class="card-title">{{ name }}</h5>
        <span class="text-muted" :title="dateTitle">{{ formattedDate }}</span>
      </div>
      <p class="card-text">
        {{ text }}
      </p>
    </div>
  </div>
</template>

<script>
import useDateFormat from '@/composables/useDateFormat'
import useIntlRelativeDateFormat from '@/composables/useIntlRelativeDateFormat'

export default {
  name: 'NoteCard',

  setup(props) {
    const formattedDate = useIntlRelativeDateFormat(props.createdAt)
    const dateTitle = useDateFormat(props.createdAt)

    return { formattedDate, dateTitle }
  },

  props: {
    name: {
      type: String,
      required: true
    },
    text: {
      type: String,
      required: false
    },
    createdAt: {
      type: String,
      required: false
    }
  }
}
</script>
