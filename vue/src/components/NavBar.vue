<template>
  <div class="navbar">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'login' }">Login</router-link>&nbsp;|&nbsp;
      <!--<router-link v-bind:to="{ name: 'rome' }">Rome</router-link>&nbsp;|&nbsp; -->
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
  </div>
</template>

<script>
export default {
    name: "navbar",
    
}
</script>

<style>
    .navbar{
        background-color:red;
    }
</style>