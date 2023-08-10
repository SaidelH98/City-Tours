<template>
  <div class="home">
    <header class="header">
       <h1>WELCOME TO CITY TOURS</h1>
    </header>

    <main class="main">

      <div class="rome-card">
        <h1><router-link v-bind:to="{ name: 'rome', params:{cityId:1} }">Rome
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
        <p>Description hjkl;dffggfhgfhghghghhgf</p>
        </router-link></h1>
      </div>

      <div class="Barcelona-card">
        <h1><router-link v-bind:to="{ name: 'barcelona', params:{cityId:2} }">Barcelona
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
        </router-link></h1>
      </div>

      <div class="Zurich-card">
        <h1><router-link v-bind:to="{ name: 'zurich', params:{cityId:3} }">Zurich
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
        </router-link></h1>
      </div>

      <div class="Paris-card">
        <h1><router-link v-bind:to="{ name: 'paris', params:{cityId:4} }">Paris
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
        </router-link></h1>
      </div>

      <div class="Brussels-card">
        <h1><router-link v-bind:to="{ name: 'brussels', params:{cityId:5} }">Brussels
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
        </router-link></h1>
      </div>

      <div class="Munich-card">
        <h1><router-link v-bind:to="{ name: 'munich', params:{cityId:6} }">Munich
        <img src="../assets/images/Rome/david-kohler-VFRTXGw1VjU-unsplash.jpg" alt="">
        </router-link></h1>
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

.rome-card{
  border-radius: 0.5rem;
  background-color: white;


}
img{
        width: 100%;
        height: 400px;
        /*height: max-content;*/
        }

</style>


