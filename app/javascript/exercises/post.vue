<template>
<div v-if="alreadyLoaded" class="columns is-mobile is-centered">
  <div class="column is-half">
    <h1 class="title is-1 has-text-centered">Vue.jsクイズ</h1>
    <question
      v-if="currentQuestion"
      :question-text="currentQuestion.text"
      @click-yes-btn="doAnswer($event)"
      @click-no-btn="doAnswer($event)"
    ></question>
    <answer
      v-if="!currentQuestion"
      :total-score="totalScore"
      :questions="questions"
      :your-answers="yourAnswers"
      @click="doRestart"
    ></answer>
  </div>
</div>
</template>

<script>
import Question from './question.vue'
import Answer from './answer.vue'

const ANSWER = { YES: 1, NO: 0 }
const MAX_POINT = 100

export default {
  props: {
    questionType: {
      type: String,
      required: true,
    },
    lessonId: {
      type: Number,
      required: true,
    },
  },
  components: {
    'question': Question,
    'answer': Answer,
  },
  data() {
    return {
      questions: [],
      currentIndex: 0,
      yourAnswers: [],
      alreadyLoaded: false,
    }
  },
  computed: {
    currentQuestion: function() {
      return this.questions[this.currentIndex]
    },
    correctAnswers: function() {
      const self = this
      return this.questions.filter(function(question, index) {
        return question.answer === self.yourAnswers[index]
      })
    },
    totalScore: function() {
      const score = MAX_POINT / this.questions.length
      return Math.floor(score * this.correctAnswers.length)
    }
  },
  methods: {
    fetchQestions: function() {
      fetch(`/exercises/${this.questionType}/${this.lessonId}.json`)
        .then(response => {
          return response.json()
        })
        .then(data => {
          this.questions = data
        })
        .catch(error => {
          console.log(error)
        })
      this.alreadyLoaded = true
    },
    doAnswer: function(answer) {
      this.yourAnswers[this.currentIndex] = answer
      this.nextQuestion()
    },
    nextQuestion: function() {
      if (this.currentIndex < this.questions.length) {
        this.currentIndex += 1
      }
    },
    doRestart: function() {
      this.currentIndex = 0
      this.initYourAnswersArray()
    },
    initYourAnswersArray: function() {
      this.yourAnswers = Array(this.questions.length)
    }
  },
  mounted: function() {
    this.initYourAnswersArray()
    this.fetchQestions()
  }
}
</script>