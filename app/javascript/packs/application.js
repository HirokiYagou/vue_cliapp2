require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import { createApp } from "vue";
import { createRouter, createWebHashHistory } from 'vue-router';
import Index from "exercises/index.vue";

const router = createRouter({
  history: createWebHashHistory(),
  routes: [
    {
      path: '/',
      name: 'root_path',
      component: Index,
    }
  ]
})

document.addEventListener('DOMContentLoaded', () => {
  const app = createApp(Index)
  app.use(router)
  app.mount('#index')
})