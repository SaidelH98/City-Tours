<template>
  <div class="rome">
    <header class="header">
       <h1>WELCOME TO ROME</h1>
    </header>

    <main class="main">
        <rome-landmarks />
    

    </main>

 


    
  </div>
</template>

<script>

import RomeLandmarks from '../components/RomeLandmarks.vue';

export default {
  name: "rome",
  components: { 
    RomeLandmarks
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

.rome{
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-areas: 
   ". header ." 
  ". main .";
}

</style>