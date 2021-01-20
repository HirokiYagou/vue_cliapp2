<template>
<div class="modal-container">
  <div class="modal-overlay" @click.self="closeForm">
    <div class="modal-body">
      <form @submit.prevent="submit" class="modal-form-container">
        
      </form>
      <p>
        <button class="button button--close" @click="closeForm">CLOSE</button>
      </p>
    </div>
  </div>
</div>
</template>

<script>
export default {
  methods: {
    closeForm: function() {
      this.$emit("click-close-modal")
    }
  },
}
</script>

<style scoped>
.modal-container {
  position: relative;
  z-index: 9998;
  width: 100%;
  height: 100%;
}

.modal-body {
  position: relative;
  z-index: 9999;
  box-sizing: border-box;
  width: 100%;
  max-width: 640px;
  height: 300px;
  padding: 16px;
  margin: auto;
  background-color: #fff;
}

.modal-overlay {
  position: fixed;
  top: 0;
  left: 0;
  display: flex;
  overflow: auto;
  width: 100%;
  height: 100%;
  padding: 20px 60px;
  background-color: rgba(0, 0, 0, 0.7);
}

.modal-form-container {
  width: 100%;
}
</style>
