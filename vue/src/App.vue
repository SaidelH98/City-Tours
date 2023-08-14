<template>
  <div id="app">
    <div class="navbar">
    </div>
    <div id="nav" >
      <span class="home">
        <router-link v-bind:to="{ name: 'home' }">Home</router-link>
      </span>

      <span class="itinerary">
        <router-link v-bind:to="{ name: 'profile', params: {userId: this.$store.state.user.id} }"  v-if="$store.state.token != ''">Profile</router-link>

      </span>

      <span class="login">
        <router-link v-bind:to="{ name: 'login' }" v-if="$store.state.token == '' "> Login</router-link>
        <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
      </span>
    </div>
    <router-view />
  </div>
</template>
<script>

export default {
  props:[
    "userId"
  ],
  components: { 
    
  }
};
</script>
<style scoped>

#nav{
  background-color: rgb(41, 40, 40);
  height: 60px;
  font-size: 30px;
  text-decoration: none;
  display: flex;
  justify-content: space-between;
}

.nav-text{
  text-decoration: none;
}

#app{
  background-color: #f1f1f1; 
  font-family:sans-serif;
}

a{
  text-decoration: none;
  color: white;
}


.home{
  margin-top: 10px;
  margin-left: 40px;
}

.login{
  margin: 10px;
  margin-right: 40px;
}

</style>