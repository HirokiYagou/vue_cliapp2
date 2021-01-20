<template>
<div>
  <table v-if="questionType === ''" class="table">
    <thead>
      <tr>
        <th>LESSON</th>
        <th>POST</th>
        <th>TWEET</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="lesson in lessons" :key="lesson.lesson">
        <td><div class="column">LESSON{{ lesson.lesson }}</div></td>
        <td><div class="button column" @click="choosePostQuestions(lesson)">POST LESSON{{ lesson.lesson }}</div></td>
        <td><div class="button column" @click="chooseTweetQuestions(lesson)">TWEET LESSON{{ lesson.lesson }}</div></td>
      </tr>
    </tbody>
  </table>

  <post
    v-if="questionType === 'POST'"
    :lesson-id="lessonId"
  ></post>
</div>
</template>

<script>
import Post from './post.vue'
// import Tweet from './tweet.vue'

export default {
  components: {
    'post': Post,
    // 'tweet': Tweet,
  },
  data() {
    return {
      lessons: [],
      lessonId: 0,
      questionType: '',
    }
  },
  methods: {
    fetchLesson: function() {
      fetch('/exercises.json')
        .then(response => {
          return response.json()
        })
        .then(data => {
          this.lessons = data
        })
        .catch(error => {
          console.log(error)
        })
    },
    choosePostQuestions: function(lesson) {
      this.lessonId = lesson.lesson
      this.questionType = 'POST'
    },
    chooseTweetQuestions: function(lesson) {
      this.lessonId = lesson.lesson
      this.questionType = 'TWEET'
    },
  },
  mounted: function() {
    this.fetchLesson()
  }
}
</script>