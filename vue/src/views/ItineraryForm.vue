<template>
  <div class="rome">
    <header class="header">
        <h1>Create Itinerary</h1>
    
    </header>

    <main class="main">
      <div class="form-card">
        <form-card />
      </div>
      
    </main>
    
  </div>
</template>

<script>
import FormCard from "../components/FormCard.vue"

export default {
  name: "itinerary",
  components: { 
    FormCard
  
  }
};
</script>
<style scoped>
h1{
  text-align: center;
}

.form-card{
  margin-left: auto;
  margin-right: auto;
}
main{
  display: flex;
  align-items: center;
}


</style>