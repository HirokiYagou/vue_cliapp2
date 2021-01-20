<template>
<div class="box">
  <div class="content has-text-centered">
    <h2 class="title">結果発表</h2>
    <table class="table is-bordered">
      <tr>
        <th v-for="(q, index) in questions" :key="index">
          Q{{ index + 1 }}
        </th>
      </tr>
      <tr>
        <td
          v-for="correct in corrects"
          :key="correct.id"
          :class="getCorrectClassName(correct.cd)"
        >
          {{ correct.value }}
        </td>
      </tr>
    </table>
    <p>あなたの得点は</p>
    <p
      v-if="isPerfect"
      class="has-text-weight-bold">
      たまプラーザ
    </p>
    <p>
      <strong class="is-size-2 has-text-danger">
        {{ totalScore }}
      </strong>
      /{{ maxPoint }}でした！
    </p>
    <button
      class="button is-fullwidth is-info has-text-weight-bold"
      @click="onClick"
    >
      最初からやり直す
    </button>
  </div>
</div>
</template>

<script>
const CORRECT = { CD: 1, VALUE: "○"}
const INCORRECT = { CD: 0, VALUE: "×"}
const MAX_POINT = 100

export default {
  props: {
    totalScore: {
      type: Number,
      required: true,
    },
    questions: Array,
    yourAnswers: Array,
  },
  computed: {
    corrects: function() {
      const self = this
      return this.questions.map(function(q, i) {
        if (q.answer === self.yourAnswers[i]) {
          return { cd: CORRECT.CD, value: CORRECT.VALUE }
        } else {
          return { cd: INCORRECT.CD, value: INCORRECT.VALUE }
        }
      })
    },
    maxPoint: function() {
      return MAX_POINT
    },
    isPerfect: function() {
      return this.totalScore === this.maxPoint
    }
  },
  methods: {
    onClick: function() {
      this.$emit("click")
    },
    getCorrectClassName: function(correctCd) {
      return correctCd === CORRECT.CD
        ? "has-text-weight-bold has-text-white has-background-success" : ""
    }
  },
}
</script>