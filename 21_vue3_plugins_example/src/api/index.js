import instance from "@/api/instance"
import NotesApi from "@/api/notes"
import CalendarEventsApi from "@/api/calendarEvents"

const notesApi = new NotesApi(instance)
const calendarEventsApi = new CalendarEventsApi(instance)

export {
  notesApi,
  calendarEventsApi
}
