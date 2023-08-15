<template>
  <div class="brussels">
    <header class="header">
       <h1>WELCOME TO BRUSSELS</h1>
    </header>

    <main class="main">

     
        <brussels-landmarks />
    

    </main>

 


    
  </div>
</template>

<script>

import BrusselsLandmarks from '../components/BrusselsLandmarks.vue';

export default {
  name: "brussels",
  components: { 
    BrusselsLandmarks
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

.brussels{
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-areas: 
   ". header ." 
  ". main .";
}

</style>