<template>
  <div class="home">
    <div class="navbar">
      <NavBar/>
    </div>
    <header class="header">
       <h1>WELCOME TO CITY TOURS</h1>
    </header>

    <main class="main">

      <div class="rome-card">
        <h1><router-link v-bind:to="{ name: 'rome', params:{cityId:1} }">Rome</router-link></h1>
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
      </div>

      <div class="Barcelona-card">
        <h1><router-link v-bind:to="{ name: 'barcelona', params:{cityId:2} }">Barcelona</router-link></h1>
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
      </div>

      <div class="Zurich-card">
        <h1><router-link v-bind:to="{ name: 'zurich', params:{cityId:3} }">Zurich</router-link></h1>
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
      </div>

      <div class="Paris-card">
        <h1><router-link v-bind:to="{ name: 'paris', params:{cityId:4} }">Paris</router-link></h1>
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
      </div>



    </main>


 


    
  </div>
</template>

<script>
import NavBar from "../components/NavBar.vue"
export default {
  components: { 
    NavBar
  }
};
</script>
<style scoped>

.header{
  grid-area: header;
  text-align: center;
}


.main{
  grid-area: main;
}

.navbar{
  grid-area: navbar;
  height: 20px;
}

.home{
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-areas: 
  "navbar navbar navbar"
  ". header ." 
  ". main .";
}

</style>


