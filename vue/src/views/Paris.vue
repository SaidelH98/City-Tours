<template>
  <div class="paris">
    <header class="header">
       <h1>WELCOME TO PARIS</h1>
    </header>

    <main class="main">

     
        <paris-landmarks />
    

    </main>

 


    
  </div>
</template>

<script>

import ParisLandmarks from '../components/ParisLandmarks.vue';

export default {
  name: "rome",
  components: { 
    ParisLandmarks
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

.paris{
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-areas: 
   ". header ." 
  ". main .";
}

</style>