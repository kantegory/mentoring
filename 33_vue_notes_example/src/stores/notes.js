import { ref, computed } from 'vue'
import { defineStore } from 'pinia'
import { notesApi } from '@/api'

export const useNotesStore = defineStore('notes', () => {
  const currentNoteId = ref(null)

  const notes = ref([])

  const currentNote = computed(() => notes.value.find(({ id }) => id === currentNoteId.value))

  function setCurrentNoteId(id) {
    currentNoteId.value = id
  }

  async function loadNotes(params = {}) {
    const response = await notesApi.getAll()

    notes.value = response.data.map(({ id, name, text, day }) => ({
      id,
      title: name,
      description: text,
      fullText: text,
      day: day || 'N/A',
    }))
  }

  async function patchNote(id, data) {
    const response = await notesApi.patchNote(id, { name: data.title, text: data.description })

    loadNotes()
  }

  return { notes, currentNote, setCurrentNoteId, loadNotes, patchNote }
})
