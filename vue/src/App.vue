<template>
  <div id="app">
    <div class="navbar">
    </div>
    <div id="nav" >
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == '' "> Login</router-link>&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
  </div>
</template>
<script>

export default {
  components: { 
    
  }
};
</script>
<style scoped>

#nav{
  background-color: red;
  height: 60px;
  font-size: 30px;
  text-decoration: none;
}

.nav-text{
  text-decoration: none;
}




</style>