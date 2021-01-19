<template>
<div>
  <form>
    <input v-model="message" class="input is-primary" type="text" placeholder="Text input">
  </form>
  <p>{{ message }}</p>
</div>
</template>

<script>
export default {
  data() {
    return {
      message: '',
    }
  },
}
</script>