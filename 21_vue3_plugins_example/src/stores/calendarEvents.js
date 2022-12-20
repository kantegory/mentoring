import { defineStore } from 'pinia'
import { calendarEventsApi } from '@/api'

const useCalendarEventsStore = defineStore('calendarEvents', {
  state: () => ({
    calendarEvents: []
  }),

  actions: {
    async loadCalendarEvents() {
      const response = await calendarEventsApi.getAll()

      this.calendarEvents = response.data

      return response
    }
  }
})

export default useCalendarEventsStore
