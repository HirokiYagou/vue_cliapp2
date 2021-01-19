require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import { createApp } from "vue";
import App from "../app.vue"
import Quiz from "../quiz.vue"


document.addEventListener('DOMContentLoaded', () => {
  createApp(App).mount('#app')
  createApp(Quiz).mount('#quiz')
})