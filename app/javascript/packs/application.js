require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import { createApp } from "vue";
import Quiz from "index/quiz.vue"
// import Question from "index/question.vue"
// import Answer from "index/answer.vue"


document.addEventListener('DOMContentLoaded', () => {
  createApp(Quiz).mount('#quiz')
  // createApp(Question).mount('#question')
  // createApp(Answer).mount('#answer')
})