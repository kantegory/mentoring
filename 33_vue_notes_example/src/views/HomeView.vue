<script setup>
import { computed, ref } from 'vue'
import { useRoute } from 'vue-router'

import NoteCard from '@/components/notes/NoteCard.vue'
import BaseLayout from '@/layouts/BaseLayout.vue'
import NoteEditor from '@/components/notes/NoteEditor.vue'

const route = ref(useRoute())

const notes = ref([
  { id: 1, title: '123', day: 'Wed', description: 'Lorem ipsum', fullText: 'Lorem ipsum' },
  {
    id: 2,
    title: '456',
    day: 'Wed',
    description: 'Lorem ipsum',
    fullText: `Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident illum perferendis laborum, qui nesciunt quae fugiat natus quis esse exercitationem minima alias voluptates delectus temporibus repellendus accusantium totam dolores dolorum. Veritatis tempora nulla nam earum voluptatem, sint maiores recusandae maxime unde impedit ipsum similique itaque. Asperiores possimus nihil sequi illum atque blanditiis recusandae ratione, facilis suscipit praesentium quam, doloribus sint? Voluptatem culpa assumenda libero nihil facilis aspernatur omnis itaque molestias amet, praesentium atque repellendus modi. Saepe similique ducimus repellendus ut at placeat illo, atque quidem consequuntur cumque expedita dicta. Fuga! Dignissimos aliquam vel ullam impedit sed quidem nemo animi eius similique aspernatur corrupti architecto temporibus voluptas, ratione hic, dicta saepe placeat vero facere nesciunt odit quasi libero voluptatem ad. Minus. Delectus saepe consectetur, modi esse reprehenderit neque nisi eum fuga minima id expedita non dolorem rem animi tempora soluta itaque. Animi iste et perspiciatis tempore porro blanditiis, sunt eaque quasi. Quia molestias, ex possimus enim laudantium obcaecati at. Sequi delectus illo laudantium! Praesentium corrupti esse et beatae dolorum, porro nihil, reiciendis voluptate eaque dignissimos optio quos odio, accusantium molestias ipsam? Praesentium eaque libero a, similique placeat eligendi laborum maiores amet enim aut quibusdam esse voluptates eveniet, soluta molestias, delectus eos laboriosam est odit dignissimos? Similique quibusdam libero architecto vel quisquam? Eum doloribus alias debitis reiciendis deleniti corporis esse eveniet officiis nostrum, culpa sit explicabo eligendi unde quae ducimus possimus illum maxime nobis doloremque enim sequi modi. Eligendi explicabo cupiditate aliquam. Debitis ullam error magnam sint fugit nemo aliquid non ab fuga commodi deleniti nobis quos explicabo illum temporibus velit perferendis, officia magni ut nostrum cum voluptate! Ab veniam possimus et. Dicta explicabo modi provident voluptatibus sapiente non ad iste, sit autem, cum deserunt ut, impedit laudantium architecto qui? Nisi, a itaque rem maxime amet iste pariatur ratione facilis eius cum!`,
    active: true,
  },
  { id: 3, title: '789', day: 'Wed', description: 'Lorem ipsum 789', fullText: 'Lorem ipsum 789' },
])

const currentNote = computed(() =>
  notes.value.find(({ id }) => id === Number(route.value.query?.id)),
)
</script>

<template>
  <base-layout>
    <div class="row">
      <div class="col-12 col-xl-3 notes-list overflow-y-auto px-0 d-none d-xl-block">
        <div class="list-group list-group-flush border-bottom">
          <note-card
            v-for="note in notes"
            :key="note.id"
            :note-id="note.id"
            :title="note.title"
            :day="note.day"
            :description="note.description"
            :active="currentNote?.id === note.id"
          />
        </div>
      </div>
      <div class="col-12 col-xl-9 py-2 d-none d-xl-block note-content">
        <note-editor
          v-if="currentNote"
          :id="currentNote.id"
          :title="currentNote.title"
          :description="currentNote.fullText"
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
