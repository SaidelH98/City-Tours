<template>
  <div class="zurich">
    <header class="header">
       <h1>WELCOME TO ZURICH</h1>
    </header>

    <main class="main">

     
        <zurich-landmarks />
    

    </main>

 


    
  </div>
</template>

<script>

import ZurichLandmarks from '../components/ZurichLandmarks.vue';

export default {
  name: "rome",
  components: { 
    ZurichLandmarks
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

.zurich{
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-areas: 
   ". header ." 
  ". main .";
}

</style>