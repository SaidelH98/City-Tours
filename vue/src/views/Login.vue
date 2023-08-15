<template>
  <div id="login">
    <form class="form" @submit.prevent="login">
      <h1 >Please Sign In</h1>
      <div role="alert" v-if="invalidCredentials">
        Invalid username and password!
      </div>
      <div role="alert" v-if="this.$route.query.registration">
        Thank you for registering, please sign in.
      </div>
      <div class="form-input-group">
        <label for="username"></label>
        <input type="text" id="username" placeholder="Username" v-model="user.username" required autofocus />
      </div>
      <div class="form-input-group">
        <label for="password"></label>
        <input type="password" id="password" placeholder="Password" v-model="user.password" required />
      </div>
      <button class="button" type="submit">Sign in</button>
      <p>
      <router-link :to="{ name: 'register' }">Need an account? Sign up.</router-link>
      </p>
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<style scoped>
.form-input-group {
  margin-bottom: 1rem;
  text-align: center;
}

.form{
  display: flex;
  flex-direction: column;
  align-items: center;
}

input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 25px;
    font-weight: 300;
}
::placeholder{
    color: #474646;
    font-size: 25px;
}

button{
    margin-top: 20px;
    width: 200px;
    height: 50px;
    background-color: #ffffff;
    color: #080710;
    padding: 2px 0;
    font-size: 25px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
    align-self: center;
}







</style>