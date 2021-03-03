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
        <td><div class="column">LESSON{{ lesson }}</div></td>
        <td><div class="button column" @click="choosePostQuestions(lesson)">POST LESSON{{ lesson }}</div></td>
        <td><div class="button column" @click="chooseTweetQuestions(lesson)">TWEET LESSON{{ lesson }}</div></td>
      </tr>
    </tbody>
  </table>

  <post
    v-if="exerciseType !== ''"
    :exercise-type="exerciseType"
    :lesson-id="lessonId"
  ></post>

  <vue-form></vue-form>
</div>
</template>

<script>
import Header from 'shared/header.vue'
import Post from './post.vue'
import formVue from './form.vue'

export default {
  components: {
    'vue-header': Header,
    'post': Post,
    'vue-form': formVue,
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
      this.$router.push('/')
      console.log(performance.navigation.type)
      fetch('/exercises.json')
        .then(response => {
          return response.json()
        })
        .then(data => {
          const lessonNum = data.posts.lessonNum
          for (let i = 0; i < lessonNum; i++) {
            this.lessons.push(i + 1)
          }
          this.user = data.currentUser
        })
        .catch(error => {
          console.log(error)
        })
    },
    choosePostQuestions: function(lesson) {
      this.lessonId = lesson
      this.exerciseType = 'post'
    },
    chooseTweetQuestions: function(lesson) {
      this.lessonId = lesson
      this.exerciseType = 'tweet'
    },
  },
  mounted: function() {
    this.fetchLesson()
  }
}
</script>