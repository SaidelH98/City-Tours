<template>
  <div class="home">
    <h1>WELCOME TO CITY TOURS</h1>
    <p>If you are seeing this, you are authenticated.</p>
    <landmarks />
  </div>
</template>

<script>
import Landmarks from '../components/Landmarks.vue';
export default {
  components: { 
    Landmarks 
  }
};
</script>
