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