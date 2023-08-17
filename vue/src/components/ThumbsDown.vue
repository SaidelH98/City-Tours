<template>
<div>

    <svg-icon type="mdi" :path="path" :size="48"></svg-icon>

</div>
  
</template>

<script>
import SvgIcon from '@jamescoyle/vue-icon'
import  {mdiThumbDown} from '@mdi/js'
export default {
    name: "thumbs-down",
    components:{
        SvgIcon
    },
    data(){
        return{
            path: mdiThumbDown
        }

    }

}
</script>

<style>

</style>