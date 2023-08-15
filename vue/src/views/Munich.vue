<template>
  <div class="munich">
    <header class="header">
       <h1>WELCOME TO MUNICH</h1>
    </header>

    <main class="main">

     
        <munich-landmarks />
    

    </main>

 


    
  </div>
</template>

<script>

import MunichLandmarks from '../components/MunichLandmarks.vue';

export default {
  name: "munich",
  components: { 
    MunichLandmarks
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

.munich{
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-areas: 
   ". header ." 
  ". main .";
}

</style>