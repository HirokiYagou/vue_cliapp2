<template>
<div>
  <vue-header :user="user"></vue-header>

  <table v-if="exerciseType === ''" class="table">
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
    v-if="exerciseType !== ''"
    :user-id="userId"
    :exercise-type="exerciseType"
    :lesson-id="lessonId"
  ></post>
</div>
</template>

<script>
import Header from 'shared/header.vue'
import Post from './post.vue'

export default {
  components: {
    'vue-header': Header,
    'post': Post,
  },
  data() {
    return {
      lessons: [],
      user: {},
      lessonId: 0,
      exerciseType: '',
    }
  },
  methods: {
    fetchLesson: function() {
      fetch('/exercises.json')
        .then(response => {
          return response.json()
        })
        .then(data => {
          this.lessons = data.posts
          this.user = data.current_user
        })
        .catch(error => {
          console.log(error)
        })
    },
    choosePostQuestions: function(lesson) {
      this.lessonId = lesson.lesson
      this.exerciseType = 'post'
    },
    chooseTweetQuestions: function(lesson) {
      this.lessonId = lesson.lesson
      this.exerciseType = 'tweet'
    },
  },
  mounted: function() {
    this.fetchLesson()
  }
}
</script>