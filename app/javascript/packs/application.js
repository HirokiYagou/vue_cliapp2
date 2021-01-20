require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import { createApp } from "vue";
import Quiz from "index/quiz.vue"


document.addEventListener('DOMContentLoaded', () => {
  createApp(Quiz).mount('#quiz')
})