import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  // массив с роутами
  routes: [
    // отдельный роут
    {
      path: '/',
      name: 'notes',
      // реализация ленивой подгрузки представления
      // (до момента открытия этого представления, 
      // оно не будет сохранено в браузере пользователя)
      component: () => import('../views/NotesPage.vue'),
    }
  ]
})

// экспортируем сконфигурированный роутер
export default router
