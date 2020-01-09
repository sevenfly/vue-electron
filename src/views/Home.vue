<template>
    <div class="home">
        <img src="../assets/logo.png">
        <Index></Index>
    </div>
</template>

<script>
// @ is an alias to /src
import Index from '@/components/Index.vue'

export default {
  name: 'home',
  components: {
    Index
  }
}
</script>
