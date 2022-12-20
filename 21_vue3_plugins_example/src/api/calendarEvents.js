class CalendarEventsApi {
  constructor(instance) {
    this.API = instance
  }

  getAll = async () => {
    return this.API({
      url: '/calendarEvents'
    })
  }
}

export default CalendarEventsApi
