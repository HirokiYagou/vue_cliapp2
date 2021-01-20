require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import { createApp } from "vue";
import Quiz from "posts/quiz.vue"
import Header from "shared/header.vue"


document.addEventListener('DOMContentLoaded', () => {
  createApp(Quiz).mount('#quiz')
  createApp(Header).mount('#header')
})