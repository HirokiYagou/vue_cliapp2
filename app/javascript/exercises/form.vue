<template>
  <div>
    <form @submit.prevent="submit">
      <textarea name="text" v-model="text" cols="30" rows="10"></textarea>
      <input type="text" v-model="answer" placeholder="answer">
      <input type="text" v-model="lesson" placeholder="lesson">
      <select name="type" v-model="type">
        <option>posts</option>
        <option>tweets</option>
      </select>
      <button type="submit">送信</button>
    </form>
  </div>
</template>

<script>
import { csrfToken } from "@rails/ujs"

export default {
  data() {
    return {
      text: '',
      answer: '',
      lesson: '',
      type: 'posts'
    }
  },
  methods: {
    submit: function() {
      const formData = new FormData()
      formData.append('post[text]', this.text)
      formData.append('post[answer]', this.answer)
      formData.append('post[lesson]', this.lesson)
      fetch('/posts', {
        method: 'POST',
        headers: {
          'X-CSRF-Token': csrfToken(),
        },
        body: formData,
      })

      this.text = ''
      this.answer = ''
      this.lesson = ''
    }
  },
}
</script>