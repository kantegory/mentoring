<template>
  <base-layout>
    <h1>Event calendar</h1>

    <full-calendar
      :options="{
        events: calendarEvents,
        eventChange: handleEventChange,
        dateClick: handleDateClick
      }"
    />
  </base-layout>
</template>

<script>
import { mapActions, mapState } from 'pinia'

import useCalendarEventsStore from '@/stores/calendarEvents'


import BaseLayout from '@/layouts/BaseLayout.vue'
import FullCalendar from '@/components/FullCalendar.vue'

export default {
  name: 'CalendarPage',

  components: { BaseLayout, FullCalendar },

  computed: {
    ...mapState(useCalendarEventsStore, ['calendarEvents'])
  },

  methods: {
    ...mapActions(useCalendarEventsStore, ['loadCalendarEvents']),

    handleEventChange(payload) {
      console.log('event change', payload)
    },

    handleDateClick(payload) {
      console.log('date clicked', payload)
    }
  },

  mounted() {
    this.loadCalendarEvents()
  }
}
</script>
