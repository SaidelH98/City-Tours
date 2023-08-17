<template>
<div>

    <svg-icon type="mdi" :path="path" :size="48"></svg-icon>

</div>
  
</template>

<script>
import SvgIcon from '@jamescoyle/vue-icon'
import  {mdiThumbUp} from '@mdi/js'
export default {
    name: "thumbs-up",
    components:{
        SvgIcon
    },
    data(){
        return{
            path: mdiThumbUp
        }

    }

}
</script>

<style>

</style>