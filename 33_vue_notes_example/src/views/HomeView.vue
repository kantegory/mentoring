<script setup>
import { watch, ref, onMounted } from 'vue'
import { useRoute } from 'vue-router'

import { useNotesStore } from '@/stores/notes'

import NoteCard from '@/components/notes/NoteCard.vue'
import BaseLayout from '@/layouts/BaseLayout.vue'
import NoteEditor from '@/components/notes/NoteEditor.vue'

const route = ref(useRoute())

const store = useNotesStore()

watch(route.value, () => {
  if (route.value.query?.id) {
    store.setCurrentNoteId(Number(route.value.query?.id))
  }
})

onMounted(() => store.loadNotes())
</script>

<template>
  <base-layout>
    <div class="row">
      <div class="col-12 col-xl-3 notes-list overflow-y-auto px-0 d-none d-xl-block">
        <div class="list-group list-group-flush border-bottom">
          <note-card
            v-for="note in store.notes"
            :key="note.id"
            :note-id="note.id"
            :title="note.title"
            :day="note.day"
            :description="note.description"
            :active="store.currentNote?.id === note.id"
          />
        </div>
      </div>
      <div class="col-12 col-xl-9 py-2 d-none d-xl-block note-content">
        <note-editor
          v-if="store.currentNote"
          :id="store.currentNote.id"
          :title="store.currentNote.title"
          :description="store.currentNote.fullText"
          @submit="store.patchNote"
        />
        <note-editor v-else title="New note" description="Type something..." />
      </div>
    </div>
  </base-layout>
</template>

<style scoped>
.notes-list {
  height: 100%;
  min-height: 100vh;
  max-height: 100vh;
}
</style>
