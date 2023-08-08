<template>
  <div class="home">
    <header class="header">
       <h1>WELCOME TO CITY TOURS</h1>
    </header>

    <main class="main">
      <div class="city-lists">
        <city-lists />
      </div>

      <div class="landmarks">
        <landmarks />
      </div>

    </main>

 


    
  </div>
</template>

<script>
import CityLists from '../components/CityLists.vue';
import Landmarks from '../components/Landmarks.vue';

export default {
  components: { 
    Landmarks, CityLists
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


