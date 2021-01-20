require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import { createApp } from "vue";
import Index from "exercises/index.vue"
import Header from "shared/header.vue"


document.addEventListener('DOMContentLoaded', () => {
  createApp(Index).mount('#index')
  createApp(Header).mount('#header')
})