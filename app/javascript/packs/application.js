require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import { createApp } from "vue";
import { createRouter, createWebHistory } from 'vue-router';
import Index from "exercises/index.vue";

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      component: Index,
    }
  ]
})

document.addEventListener('DOMContentLoaded', () => {
  const app = createApp(Index)
  app.use(router)
  app.mount('#index')
})