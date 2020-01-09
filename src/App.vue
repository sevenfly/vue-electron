<template>
	<div id="app">
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
<style lang="scss">
	*{
		padding:0;
		margin:0;
	}
	html,body{
		height: 100%;
	}
	#app {
		font-family: "Avenir", Helvetica, Arial, sans-serif;
		-webkit-font-smoothing: antialiased;
		-moz-osx-font-smoothing: grayscale;
		text-align: center;
		color: #2c3e50;
		height: 100%;
	}
</style>
