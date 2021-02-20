<template>
<div>
  <nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-item" @click="goToHome">
        <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
      </a>

      <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item">
          Home
        </a>

        <a class="navbar-item">
          Documentation
        </a>

        
      </div>

      <div class="navbar-end">
        <div class="navbar-item has-dropdown is-hoverable">
          <a class="navbar-link">
            More
          </a>

          <div class="navbar-dropdown">
            <a class="navbar-item">
              About
            </a>
            <a class="navbar-item">
              Jobs
            </a>
            <a class="navbar-item">
              Contact
            </a>
            <hr class="navbar-divider">
            <a class="navbar-item" href="/users/sign_out" data-method="delete">
              ログアウト
            </a>
          </div>
        </div>
        <div class="navbar-item">{{ user.email }}さん</div>
      </div>
    </div>
  </nav>
</div>
</template>

<script>
export default {
  props: {
    user: Object,
  },
  data() {
    return {
      deviseMode: '',
    }
  },
  methods: {
    goToHome: function() {
      window.location.href = '/'
    },
    onClickSignUp: function() {
      this.deviseMode = 'signUp'
    },
    onClickLogIn: function() {
      this.deviseMode = 'logIn'
    },
    closeModal: function() {
      this.deviseMode = ''
    },
  },
}
</script>