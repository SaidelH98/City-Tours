<template>
  <div class="home">
    <header class="header">
       <h1>WELCOME TO CITY TOURS</h1>
    </header>

    <main class="main">

      <div class="rome-card">
        <h1><router-link v-bind:to="{ name: 'rome', params:{cityId:1} }">Rome</router-link></h1>
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
      </div>

      <div class="Barcelona-card">
        <h1>Barcelona</h1>
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
      </div>

      <div class="Zurich-card">
        <h1>Zurich</h1>
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
      </div>



    </main>


 


    
  </div>
</template>

<script>

export default {
  components: { 

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

.home{
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-areas: 
   ". header ." 
  ". main .";
}

</style>


