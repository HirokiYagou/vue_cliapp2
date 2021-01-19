<template>
<div class="box">
  <div class="content">
    <p class="is-size-4">Q: {{ questionText }}</p>
    <div class="columns">
      <div class="column">
        <button
          class="button is-fullwidth is-success"
          @click="onClickYesBtn"
        >
          YES
        </button>
      </div>
      <div class="column">
        <button
          class="button is-fullwidth is-warning"
          @click="onClickNoBtn"
        >
          NO
        </button>
      </div>
    </div>
  </div>
</div>
</template>

<script>
const ANSWER = { YES: 1, NO: 0 }

export default {
  
}
</script>