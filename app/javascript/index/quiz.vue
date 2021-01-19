<template>
<div class="columns is-mobile is-centered">
  <div class="column is-half">
    <h1 class="title is-1 has-text-centered">Vue.jsクイズ</h1>
    <question></question>
    <answer></answer>
  </div>
</div>
</template>

<script>
import Question from './question.vue'
import Answer from './answer.vue'

export default {
  components: {
    'question': Question,
    'answer': Answer,
  },
}
</script>