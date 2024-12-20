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
      meta: { requiresAuth: false }
    },

    {
      path: '/login',
      name: 'login',
      component: () => import('../views/AuthPage.vue'),
      meta: { requiresAuth: false }
    },

    {
      path: '/private-notes',
      name: 'privateNotes',
      // реализация ленивой подгрузки представления
      // (до момента открытия этого представления, 
      // оно не будет сохранено в браузере пользователя)
      component: () => import('../views/NotesPage.vue'),
      meta: { requiresAuth: true }
    },
  ]
})

router.beforeEach((async (to, from) => {
  if (!to.meta.requiresAuth) {
    return
  }

  if (to.meta.requiresAuth && !localStorage.login) {
    return { name: "login" }
  }
}))

// экспортируем сконфигурированный роутер
export default router
