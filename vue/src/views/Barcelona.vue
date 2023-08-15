<template>
  <div class="barcelona">
    <header class="header">
       <h1>WELCOME TO BARCELONA</h1>
    </header>

    <main class="main">

     
        <barcelona-landmarks />
    

    </main>

 


    
  </div>
</template>

<script>

import BarcelonaLandmarks from '../components/BarcelonaLandmarks.vue';

export default {
  name: "barcelona",
  components: { 
    BarcelonaLandmarks
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

.barcelona{
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-areas: 
   ". header ." 
  ". main .";
}

</style>