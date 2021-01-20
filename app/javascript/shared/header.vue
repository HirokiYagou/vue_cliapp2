<template>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="https://bulma.io">
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
          <a class="navbar-item">
            Report an issue
          </a>
        </div>
      </div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <button type="button" class="button is-primary" @click="onClickSignUp">
            <strong>Sign up</strong>
          </button>
          <button class="button is-light" @click="onClickLogIn">
            Log in
          </button>
        </div>
      </div>
    </div>
  </div>
</nav>
</template>

<script>
export default {
  data() {
    return {
      isSignUp: false,
      isLogIn: false,
    }
  },
  methods: {
    onClickSignUp: function() {
      this.isSignUp = true
    },
    onClickLogIn: function() {
      this.isLogIn = true
    },
  },
}
</script>